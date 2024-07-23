<?php


class Test {

    public function fun() {

        // $dsn = "mysql://localhost:3306";
        $dsn = "mysql:host=localhost; port=3306; dbname=hdyDb; ";
        $userName = 'root';
        $passwd = '123456';

        // $id = 1;
        $id=$_GET['id'];
        $pdo = new PDO($dsn, $userName, $passwd);

        // 常规的调用
        // $sql = "select * from hdyDb.t2 where id='$id' " ;
        // $res = $pdo->query($sql); 

        // // 预处理
        $sql = "select * from hdyDb.t2 where id=:id " ;
        
        $res = $pdo->prepare($sql); 
        $res->bindParam(":id",$id );
        $res->execute();

        // var_dump($res);
        // // $res->rowCount();

        // 取出数据
        while ($row = $res->fetch(PDO::FETCH_ASSOC )) {
            echo json_encode($row) . "<br>\n";
        }

    } 
    
}

(new Test())->fun();

