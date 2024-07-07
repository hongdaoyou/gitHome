
<template>
AA 
{{ a2 }}
<button @click="fun1">fff</button>

</template>


<script setup>

import { ref } from "vue";
import * as vue from "vue";

var a1=11;
var a2 = 22;

function fun1(){
    console.log("fun1");
    alert(11111);
    return "fun111";
}

// 在设置函数中,设置挂载的回调函数
vue.onMounted(()=>{
    console.log('on onMounted...');
})

// 卸载前
vue.onBeforeUnmount( () => {
    console.log('on onBeforeUnmount...');
});

// 卸载后
vue.onUnmounted( () => {
    console.log('on onUnmounted...');
});

// 更新
vue.onUpdated( () => {
    console.log('on onUpdated...');
});


</script>
