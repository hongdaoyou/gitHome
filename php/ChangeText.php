<?php


// $filePath="/home/hdy/data/note/0-wen/0-tmp/tmp3"; # 使用默认路径

// echo ;
$obj = new ChangeText();
$obj->parse_user_input($argc, $argv);

// 改变文本
class ChangeText {
    public function parse_user_input($argc, $argv) {
        if ($argc <= 1) {
            echo "请输入参数\n";
            return;
        }
        $ch = $argv[1];

        // var_dump($ch);
        // return;

        switch($ch) {
            case "english":
                $this->change_english_sentence();

            break;
        }

    }

    // 改变,英文句子的内容
    public function change_english_sentence() {
        $filePath="/home/hdy/data/note/0-wen/0-tmp/tmp3"; # 使用默认路径

        $str = file_get_contents($filePath);

        $str = preg_replace("\n([\u4e00-\u9fa5])", "\n1 $1", $str);

        $str = preg_replace("\n(    )", "\n    我的\n   $1", $str);

        // echo $str;

        file_put_contents($filePath, $str);
    }


}

