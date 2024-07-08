
<template>
    <a-button>ddd</a-button>
AA
{{ a }}
<button @click="fun">fff</button>

<div :class="'c1'" class="c2">11</div>
</template>


<script setup>

import { ref } from "vue";
import * as vue from "vue";

let a = ref(0);
// let c1="c1";

function fun(){
    
    a.value++;
//    console.log(1);
//    alert(2);
    return 3;
}

</script>

<style scoped>
.c1 {
    background: blue;
    color: red;
}

.c2 {
    background: green;
    /* color: purple; */
    font-size: 40px;
}

</style>