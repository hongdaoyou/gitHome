
<template>
AA
{{ a }}
<!-- <div :style="s1">111</div> -->
<div :class="[c1]">111</div>

<button @click="fun">fff</button>

</template>


<script setup>

import { ref } from "vue";
import * as vue from "vue";

let a = ref(0);
let c1 = ref("s2");
// const c1 = "s2";

// 绑定样式
let s1 = {
    color:'red',
    fontSize:'50px'
}

function fun(){
    c1.value = "s3"

    a.value++;
    console.log(1);
    alert(2);
    return 3;
}

</script>


<style scoped>
    .s2 {
        color:green;
    }

    .s3 {
        color:orange;
    }

</style>