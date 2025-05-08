<script>
// console.log("B.vue");
// console.log(a111);

</script>
<template >
B1
B2
{{ a1 }}

    <!-- {{ a }} -->
<!-- <button @click="fun">fff</button> -->
</template>


<script setup>
console.log('bbb');

import { ref,watch, watchEffect, computed, provide, inject, onMounted,onBeforeMount,  onUnmounted, onBeforeUnmount, onUpdated,onBeforeUpdate  } from "vue";


let a1 = ref(11);

setTimeout(() => { a1.value=22; }, 1000);

console.log('bbbb')

onMounted(() => {
    console.log('onMounted');
});

onBeforeMount(() => {
    console.log('onBeforeMount');
});

onUnmounted(() => {
    console.log('onUnmounted');
});

onBeforeUnmount(() => {
    console.log('onBeforeUnmount');
});


onUpdated(() => {
    console.log('onUpdated');
});

onBeforeUpdate(() => {
    console.log('onBeforeUpdate');
});




function fun(){
    
    a.value++;
//    console.log(1);
//    alert(2);
    return 3;
}

</script>


