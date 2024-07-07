
<template>
AA
{{ a }}
<button @click="fun">fff</button>

</template>


<script setup>

import { ref, watch } from "vue";
import * as vue from "vue";
let b = vue.getCurrentInstance()

let a = ref(0);
console.log("A: ", b.proxy.a);

// console.log(b.data);


// console.log(this);

function fun(){
    console.log("AA", b.ctx.a);

    // console.log(this);

    a.value++;
    console.log(1);
    // alert(2);
    return 3;
}


vue.watch(a, (newVal, oldVal ) => {
    // console.log(this);

    console.log(oldVal, newVal);
});

// console.log(this);

</script>

