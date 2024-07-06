
<template>
AA 
{{ a2 }}
<button @click="fun1">fff</button>
<!-- {{ a=fun1()  }} 
// 函数,设置监听的
-->

</template>


<script>

// import { onMounted } from "vue";
import { ref } from "vue";
import * as vue from "vue";

export default {
    // 数据函数, 返回,一个对象, 表示,各组数据
    data(){
        return {
            "a1":11,
            "a2":"a2",
        }
    },
    methods: {
        fun1() {
            console.log("fun1");
            alert(11111);
            return "fun111";
        },
  
    },
    // 对于 export default 不能放置在这里
    // template:"aaaaa",
    // // 模板, 返回字符串
    // template() {
    //     return "a11111"
    // },

    // 构造函数
    created() {
        console.log("create 111");
    },
    destroyed() {
        console.log("destory 111");
    },
    // 设置
    setup() {
        console.log("setup 111");

        // 在设置函数中,设置挂载的回调函数
        vue.onMounted(()=>{
            console.log('on onMounted...');
        })

        vue.onUnmounted( () => {
            console.log('on onUnmounted...');
        });

        vue.onUpdated( () => {
            console.log('on onUpdated...');
        });

        // vue.onde
    },

    // 放在,setup中写
    // onMounted(()=>{
    //         console.log('on onMounted...');
    //     })

}

</script>
