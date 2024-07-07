
<template>
AA
{{ a }}
{{ prov1 }}
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

const prov1 = vue.inject("prov1", 'defaultVal' );

</script>

