
<template>
AA
{{ a }}
<button @click="fun">fff</button>

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

