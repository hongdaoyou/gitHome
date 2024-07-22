<?php
// echo "111";
// return;
// 对数据库,进行操作

class Test {
    private $host = "localhost";
    private $port = "3306"; 
    private $db = 'hdyDb';
    private $user = 'root';
    private $passwd = '123456';

    private $conn;

    public function connect() {
        // 连接
        $this->conn = mysqli_connect($this->host, $this->user, $this->passwd,  $this->db,$this->port );
        
        // 选择数据
        // mysqli_select_db($conn, "hdyDb");
    }
    public function __construct() {
        $this->connect();

    }
    public function fun() {
        $this->search();
        // $this->insert_delete_update();
    }

    // 查找
    public function search() {
        $id=$_GET['id'];

        $sql = "select * from t2 where id='$id' ";
        // $sql = "select * from t2 where id='0' ; insert into hdyDb.t2(id,name) values(12,22);  ";

        // echo $sql;
        // echo "开始查找<br>\n";
        // 查询
        $res = mysqli_query($this->conn, $sql);
        if ($res) {
            // 提取
            while ( $row = mysqli_fetch_assoc($res) ) {
                var_dump($row ); echo  "<br>";
            }
        } else {
            // $errorArr =mysqli_error_list($this->conn);
            // foreach ($errorArr as $value) {
            //     echo json_encode($value);
            // }
            echo mysqli_error($this->conn);
        }
    }

    // 增删改
    public function insert_delete_update() {
        // $nowTime = date('Y-m-d H:i:s');
        $id=$_GET['id'];

        $sql = " insert into t2(name) values('$id') ";
        // // echo $sql;

        // $sql = " delete from t2 where id='$id'  ";
        // // echo $sql;

        // $sql = " update t2 set name=111 where id='$id'  ";
        // // echo $sql;

        $res = mysqli_query($this->conn, $sql);
        if ($res) {
            echo mysqli_affected_rows($this->conn);
        } else {
            // echo 'insert failed';
            echo mysqli_error($this->conn);
        }

    }

}

(new Test())->fun();

