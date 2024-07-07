
<template>
AA

{{ f1 }}

</template>


<script setup>

import { ref, computed } from "vue";
import * as vue from "vue";

let a = ref(0);

function fun(){
    
    a.value++;
    console.log(1);
    alert(2);
    return 3;
}

// 错误
// vue.computed({
//     f1() {
//         return 111;
//     }
// });

// 定义,计算属性
var f1 = vue.computed(()=> { return "abc" });


</script>

