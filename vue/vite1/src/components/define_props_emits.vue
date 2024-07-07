
<template>
AA
{{ a }}
<button @click="fun">fff</button>

{{ attr1  }}

</template>


<script setup>

import { ref } from "vue";
import * as vue from "vue";

import { defineProps, defineEmits } from 'vue';

let a = ref(0);

function fun1(){
    return "abc";
}

// 定义,事件
var emits = defineEmits(['eventName'] );
// 触发事件
emits('eventName', "dddd")

function fun(){
    
    // 触发事件
    emits('eventName', "dddd")
    a.value++;
    // console.log(1);
    // alert(2);
    return 3;
}


// 定义,子组件,能接收的属性值
const props = defineProps([ "attr1"] )
// const props = vue.defineProps( {attr1:{type:Number, required: true } } )

// props: {
//     attr1: Number
// }
// console.log(props);

</script>

