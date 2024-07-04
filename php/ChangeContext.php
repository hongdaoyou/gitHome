<?php

// 更新,simple_symbol 的内容

// $obj = new SimpleSymbolHandle();
// $obj->update_simple_symbol();

// 文本处理
class SimpleSymbolHandle {
    private $data = [];
    
    // 文件路径
    private $simple_symobol_file = "a.md";

    // 如果当前的文件的更新时间, 小于今天. 那么,就不整理
    // 检查,文件是否更改
    public function check_modify() {
        // $state = fstat($this->simple_symobol_file);
        $lastModifiedTime = filemtime($this->simple_symobol_file);
        // 文件的修改时间, 等于,今天
        if (date('d', $lastModifiedTime) == date('d')) {
            return true;
        } else {
            return false;
        }
    }


    // 更新,简单的符号
    public function update_simple_symbol () {
        if (! $this->check_modify())  return; // 检查,是否更改
        // echo '11';

        // 直接替换,做不到.
        // 先将数据,找出来. 然后, 将数据,依次更新上去
        $text = file_get_contents($this->simple_symobol_file);
        // echo strlen($text);

        $findStr = '/#### \$--(?!summary)(.*)[\s\S]*?###### --基本符号\n([\s\S]*?)\n---/';

        // $findStr = '/#### \$--/';
        $num = preg_match_all($findStr, $text, $matchArr);
        // var_dump($matchArr);
        // return;
        // var_dump($num);

        if ($num) {
            for ($i = 0;$i < $num; $i++) {
                // title 标题名
                $label = $matchArr[1][$i];

                // 创建,数据,保存的数组
                $this->data[ $label ] = [];
            
                // 提取出,符号  (不可以空格开头)
                preg_match_all('/\n([^\s].*)/', $matchArr[2][$i], $matchArr2);
                // var_dump( $matchArr[$i][2]);
                // exit();
                
                // 将不符合条件的数据,过滤掉
                $a1 = array_filter($matchArr2[1], function (&$val) {
                    if ($val == '') {
                        return false;
                    } elseif ($val == '```') {
                        return false;
                    } elseif (strpos($val, "####") !== false ) { // 找到了 ####
                        return false;
                    } elseif (strpos($val, "__") !== false ) { // 找到了 ####
                        return false;
                    } elseif (strpos($val, "---") !== false ) { // 找到了 ####
                        return false;
                    }
                    return true;
                });
                $this->data[ $label ] = $a1;
                // var_dump($a1);
                // exit();

            }
        }
        // 对于,找到的文本, 不直接,用文本,替换. 而是,用回调函数,进行处理
        $findStr = '/#### \$--(?!summary)[\s\S]*?###### --sum\n```([\s\S]*?)\n```/';
        $retStr = preg_replace_callback($findStr, array($this,'simple_symobol_back'), $text);
        // var_dump($a1);
        // var_dump($this->data);
        // exit();

        file_put_contents($this->simple_symobol_file, $retStr);
        // file_put_contents($this->simple_symobol_file . ".md", $retStr);
    }

    // 回调函数
    public function simple_symobol_back($match) {
        // var_dump($match);
        // exit();
        // 找出标题
        $ret = preg_match('/#### \$--(.*)/',$match[0], $match1 );
        // var_dump($ret);

        $label = $match1[1];
        
        // 将数组,拆分成,字符串
        $dataStr = implode("\n", $this->data[$label]);
        
        // 返回
        $str = "#### $--$label\n###### --sum\n```\n$dataStr\n\n```";
        
        return $str;
    }
}
