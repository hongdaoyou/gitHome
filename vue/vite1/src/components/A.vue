
<template>
    
1111
</template>


<script setup>

import { ref } from "vue";
import * as vue from "vue";

// onmount({})

// created() {
//     console.log(AAA);
// }


vue.onMounted( () => {
    console.log(11);
});

onBeforeMount( () => {
    console.log(22);
});

vue.onUpdated( ()=>{
    console.log('update');
});



// onDestroy()



</script>
