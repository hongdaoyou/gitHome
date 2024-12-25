<?php


class Test {

    public function fun() {
        // global $summaryOutputDir;

        $summaryOutputDir = "/home/hdy/data/note/0-wen/0-数字/summary/";

        $file = $summaryOutputDir . '/0-important-similar-key-try-.md';

        $str = file_get_contents($file);
        // echo strlen($str);

        $n = preg_match_all("/(###### \\$--.*)[\s\S]*?```([\s\S]*?)```/", $str , $matchArr );
        // $n = preg_match_all("/(###### \\$)/", $str , $matchArr );

        // echo $n;
        // return;
        $s1 = '';

        for ($i =0; $i < $n; $i++) {

            $s1 .= $matchArr[1][$i] . "\n\n```\n\n";

            $m = preg_match_all("/###### \$.*|\{\s*([\x{4e00}-\x{9fa5}]).*?->\s*([\x{4e00}-\x{9fa5}]).*?\}/u", $matchArr[2][$i] , $matchArr2 );

            $equalArr= [];
            for ($j=0; $j< $m; $j++) {
                if ($matchArr2[1][$j] == $matchArr2[2][$j] ) {
                    array_push($equalArr, $matchArr2[0][$j]);
                }
            }

            $size = intval(sizeof($equalArr )/5);

            for ($i0 = 1; $i0 <= $size; $i0++) {
                array_splice($equalArr, $i0 * 5 + $i0-1, 0, ["_________\n" ]);
            }

            $s1 .= implode("\n\n", $equalArr);

            $s1 .= "\n\n```\n\n";

        }
        
        // echo $s1;
        file_put_contents($summaryOutputDir ."/0-important-read-key-try-.md",$s1 );

        // var_dump($equalArr);

    }
}

(new Test())->fun();

