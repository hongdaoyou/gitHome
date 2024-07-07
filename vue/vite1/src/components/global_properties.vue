
<template>
AA
{{ a }}
<button @click="fun">fff</button>

</template>


<script setup>

import { ref } from "vue";
import * as vue from "vue";

let a = ref(0);

const instance = vue.getCurrentInstance();

// 全局配置对象
let global = instance.appContext.config.globalProperties;

// 设置全局函数
global.fun = ()=>{
    console.log(1111);
}

// 访问,全局配置
console.log(global.a11)

function fun(){
    a.value++;
    console.log(1);
    alert(2);
    return 3;
}

</script>

