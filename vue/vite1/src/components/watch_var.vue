
<template>
AA
{{ a }}
<button @click="fun">fff</button>

</template>


<script setup>

import { ref, watch } from "vue";
import * as vue from "vue";

let a = ref(0);

// console.log(this);

function fun(){
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

