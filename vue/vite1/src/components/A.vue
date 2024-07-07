
<template>
AA
{{ a }}
{{ obj.a1 }}
<button @click="fun">fff</button>

</template>


<script setup>

import { ref, reactive } from "vue";
import * as vue from "vue";

let a = ref(0);

let obj = reactive({a1:11, a2:22} );

// 重新赋值,失去响应式
obj = {a1:111, a2:222} ;

function fun(){

    ++obj.a1;

    // a.value++;
    console.log(1);
    alert(2);
    return 3;
}

</script>

