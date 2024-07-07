<script setup>
// import HelloWorld from './components/HelloWorld.vue'
import { ref } from "vue";
import * as vue from "vue";

import A from './components/A.vue'
// import A1 from './components/A1.vue'

// vue.defineEmits(['fun1'])

// var attr1=ref(1111)


function fun(data) {
    console.log("A:", data);
}


</script>

<template>


<!-- <A :attr1="attr1" @eventName="fun"></A> -->

<A >
    <template v-slot:a1>11111</template>
    <template v-slot:a2>22</template>
</A>

<!-- <button @eventName="fun(data)">11</button> -->


</template>




