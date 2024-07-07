
<template>
AA
{{ a }}
<button @click="fun">fff</button>

<!-- 设置,具体的插槽的位置 -->
<slot name="a1">
    defalut-a1
</slot>

<slot name="a2">
    defalut-a2
</slot>

</template>


<script setup>

import { ref } from "vue";
import * as vue from "vue";

let a = ref(0);

function fun(){
    
    a.value++;
//    console.log(1);
//    alert(2);
    return 3;
}

</script>

