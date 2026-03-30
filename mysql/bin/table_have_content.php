#!/usr/bin/env php
<?php
/**
 * 数据库内容搜索工具
 * 用法: php db_search.php <搜索内容> [选项]
 * 选项: --mode=first|all   搜索模式: first-找到第一个就停止, all-查找所有(默认)
 */


$searchString = $argv[1];
echo "$searchString\n";


// 配置参数
$config = [
    'db_host' => 'localhost',
    'db_user' => 'root',
    'db_pass' => '123456',
    'search_string' => $searchString,
    // 'search_mode' => in_array($searchMode, ['first', 'all']) ? $searchMode : 'all',
    // 'search_mode' => 'first',
    'search_mode' => 'all',

    'max_results' => 0, // 最大结果数，0表示不限制
    'stop_on_first_table' => false, // 找到第一个表就停止
    'stop_on_first_database' => false, // 找到第一个数据库就停止
    
    // 排除的系统数据库
    'exclude_databases' => ['information_schema', 'performance_schema', 'mysql', 'sys'],
    
    // 要搜索的字段类型
    'text_field_types' => ['char', 'varchar', 'text', 'tinytext', 'mediumtext', 'longtext', 'enum', 'set'],
    
    // 要排除的表（支持通配符 *）
    'exclude_tables' => [
        'log_*',
        '*_log',
        '*_backup',
        '*_temp',
        'cache_*',
        'session',
    ],
];

// 检查参数
// if (empty($config['search_string'])) {
//     echo "数据库内容搜索工具\n";
//     echo "===================\n";
//     echo "用法: php " . basename(__FILE__) . " <搜索内容> [选项]\n";
//     echo "\n必选参数:\n";
//     echo "  <搜索内容>     要搜索的文本内容\n";
//     echo "\n选项:\n";
//     echo "  --mode=first    找到第一个匹配就停止\n";
//     echo "  --mode=all      查找所有匹配（默认）\n";
//     echo "\n示例:\n";
//     echo "  php " . basename(__FILE__) . " 关键词\n";
//     echo "  php " . basename(__FILE__) . " '要搜索的内容' --mode=first\n";
//     echo "  php " . basename(__FILE__) . " test --mode=all\n";
//     echo "\n当前配置:\n";
//     echo "  主机: {$config['db_host']}\n";
//     echo "  用户: {$config['db_user']}\n";
//     echo "  密码: ********\n";
//     echo "  模式: {$config['search_mode']}\n";
//     exit(1);
// }

class DatabaseSearcher {
    private $config;
    private $connection;
    private $totalMatches = 0;
    private $totalTablesChecked = 0;
    private $totalTablesSkipped = 0;
    private $totalTablesExcluded = 0;
    private $stopSearch = false;
    private $foundInDatabases = [];
    
    public function __construct($config) {
        $this->config = $config;
        $this->connect();
    }
    
    private function connect() {
        $this->connection = new mysqli(
            $this->config['db_host'],
            $this->config['db_user'],
            $this->config['db_pass']
        );
        
        if ($this->connection->connect_error) {
            die("连接失败: " . $this->connection->connect_error);
        }
        
        $this->connection->set_charset("utf8mb4");
    }
    
    /**
     * 检查是否应该停止搜索
     */
    private function shouldStop() {
        if ($this->stopSearch) {
            return true;
        }
        
        if ($this->config['search_mode'] === 'first' && $this->totalMatches > 0) {
            return true;
        }
        
        if ($this->config['max_results'] > 0 && $this->totalMatches >= $this->config['max_results']) {
            return true;
        }
        
        if ($this->config['stop_on_first_database'] && !empty($this->foundInDatabases)) {
            return true;
        }
        
        return false;
    }
    
    /**
     * 检查表是否应该被排除
     */
    private function shouldExcludeTable($tableName) {
        foreach ($this->config['exclude_tables'] as $pattern) {
            if ($this->matchPattern($pattern, $tableName)) {
                return true;
            }
        }
        return false;
    }
    
    /**
     * 通配符匹配
     */
    private function matchPattern($pattern, $string) {
        $pattern = preg_quote($pattern, '/');
        $pattern = str_replace('\*', '.*', $pattern);
        $pattern = str_replace('\?', '.', $pattern);
        return preg_match("/^{$pattern}$/i", $string);
    }
    
    public function search() {
        $searchString = $this->config['search_string'];
        // echo "数据库内容搜索\n";
        // echo "==============\n";
        // echo "搜索内容: {$searchString}\n";
        // echo "搜索模式: " . ($this->config['search_mode'] === 'first' ? '找到第一个匹配就停止' : '查找所有匹配') . "\n";
        // echo "主机: {$this->config['db_host']}\n";
        // echo "用户: {$this->config['db_user']}\n";
        // echo str_repeat("-", 50) . "\n\n";
        
        $startTime = microtime(true);
        $databases = $this->getAllDatabases();
        $totalDatabases = count($databases);
        $currentDb = 1;
        
        echo "发现 {$totalDatabases} 个数据库\n";
        echo str_repeat("-", 50) . "\n";
        
        foreach ($databases as $db) {
            if ($this->shouldStop()) {
                // echo "\n⏹️ 搜索已停止（找到匹配）\n";
                break;
            }
            
            # echo "[{$currentDb}/{$totalDatabases}] 搜索数据库: {$db}\n";
            $this->searchDatabase($db);
            
            if ($this->config['stop_on_first_database'] && !empty($this->foundInDatabases)) {
                break;
            }
            
            $currentDb++;
        }
        
        $endTime = microtime(true);
        $executionTime = round($endTime - $startTime, 2);
        
        echo "\n" . str_repeat("=", 50) . "\n";
        // $this->showSummary();
        echo "执行时间: {$executionTime} 秒\n";
        
        if ($this->config['search_mode'] === 'first' && $this->totalMatches > 0) {
            echo "\n提示: 搜索模式为 'first'，找到第一个匹配后已停止\n";
        }
    }
    
    private function getAllDatabases() {
        $databases = [];
        $result = $this->connection->query("SHOW DATABASES");
        
        if ($result) {
            while ($row = $result->fetch_row()) {
                $dbName = $row[0];
                if (!in_array($dbName, $this->config['exclude_databases'])) {
                    $databases[] = $dbName;
                }
            }
            $result->free();
        }
        
        return $databases;
    }
    
    private function searchDatabase($dbName) {
        $this->connection->select_db($dbName);
        $tables = $this->getTables($dbName);
        $dbHasResults = false;
        $dbTablesChecked = 0;
        $dbTablesSkipped = 0;
        $dbTablesExcluded = 0;
        
        foreach ($tables as $table) {
            if ($this->shouldStop()) {
                break;
            }
            
            // 检查是否应该排除此表
            if ($this->shouldExcludeTable($table)) {
                $dbTablesExcluded++;
                $this->totalTablesExcluded++;
                continue;
            }
            
            // 检查表是否为空
            if (!$this->isTableHasData($table)) {
                $dbTablesSkipped++;
                $this->totalTablesSkipped++;
                continue;
            }
            
            $dbTablesChecked++;
            $this->totalTablesChecked++;
            
            $textColumns = $this->getTextColumns($table);
            if (empty($textColumns)) {
                continue;
            }
            
            $results = $this->searchInTable($table, $textColumns);
            
            if (!empty($results['matching_columns'])) {
                $dbHasResults = true;
                $this->foundInDatabases[$dbName] = true;
                
                foreach ($results['matching_columns'] as $column => $count) {
                    $this->totalMatches += $count;
                    echo "  ✅ {$dbName}.{$table}.{$column} (找到 {$count} 条)\n";
                    
                    if ($this->config['stop_on_first_table']) {
                        $this->stopSearch = true;
                        break ;
                    }
                    
                    if ($this->config['search_mode'] === 'first') {
                        $this->stopSearch = true;
                        break ;
                    }
                }
            }
        }
        
        $stats = [];
        if ($dbTablesChecked > 0) $stats[] = "检查:{$dbTablesChecked}表";
        if ($dbTablesSkipped > 0) $stats[] = "跳过:{$dbTablesSkipped}空表";
        if ($dbTablesExcluded > 0) $stats[] = "排除:{$dbTablesExcluded}表";
        
        // if (!empty($stats)) {
        //     echo "  统计: " . implode(' ', $stats) . "\n";
        // }
        
        // if (!$dbHasResults && $dbTablesChecked > 0) {
        //     echo "  ⚠️  无匹配\n";
        // }
    }
    
    private function getTables($dbName) {
        $tables = [];
        $result = $this->connection->query("SHOW TABLES");
        
        if ($result) {
            while ($row = $result->fetch_row()) {
                $tables[] = $row[0];
            }
            $result->free();
        }
        
        return $tables;
    }
    
    private function isTableHasData($table) {
        $result = $this->connection->query("SELECT 1 FROM `{$table}` LIMIT 1");
        $hasData = $result && $result->num_rows > 0;
        if ($result) $result->free();
        return $hasData;
    }
    
    private function getTextColumns($table) {
        $textColumns = [];
        $result = $this->connection->query("SHOW COLUMNS FROM `{$table}`");
        
        if ($result) {
            while ($row = $result->fetch_assoc()) {
                $type = strtolower($row['Type']);
                
                foreach ($this->config['text_field_types'] as $textType) {
                    if (strpos($type, $textType) !== false) {
                        $textColumns[] = $row['Field'];
                        break;
                    }
                }
            }
            $result->free();
        }
        
        return $textColumns;
    }
    
    private function searchInTable($table, $textColumns) {
        $matchingColumns = [];
        
        foreach ($textColumns as $column) {
            if ($this->shouldStop()) {
                break;
            }
            
            $count = $this->searchInColumn($table, $column);
            if ($count > 0) {
                $matchingColumns[$column] = $count;
                
                if ($this->config['search_mode'] === 'first') {
                    return ['matching_columns' => $matchingColumns];
                }
            }
        }
        
        return ['matching_columns' => $matchingColumns];
    }
    
    private function searchInColumn($table, $column) {
        $searchString = $this->connection->real_escape_string($this->config['search_string']);
        $sql = "SELECT COUNT(*) as cnt FROM `{$table}` WHERE `{$column}` LIKE '%{$searchString}%'";
        $result = $this->connection->query($sql);
        
        if ($result) {
            $row = $result->fetch_assoc();
            $result->free();
            return (int)$row['cnt'];
        }
        
        return 0;
    }
    
    private function showSummary() {
        echo "搜索摘要\n";
        echo "--------\n";
        echo "匹配总数: {$this->totalMatches} 条记录\n";
        echo "检查表数: {$this->totalTablesChecked} 个\n";
        echo "跳过空表: {$this->totalTablesSkipped} 个\n";
        echo "排除表数: {$this->totalTablesExcluded} 个\n";
        
        if (!empty($this->foundInDatabases)) {
            $dbCount = count($this->foundInDatabases);
            echo "发现数据库: {$dbCount} 个 (" . implode(', ', array_keys($this->foundInDatabases)) . ")\n";
        }
    }
    
    public function __destruct() {
        if ($this->connection) {
            $this->connection->close();
        }
    }
}

// 执行搜索
try {
    $searcher = new DatabaseSearcher($config);
    $searcher->search();
} catch (Exception $e) {
    echo "错误: " . $e->getMessage() . "\n";
    exit(1);
}