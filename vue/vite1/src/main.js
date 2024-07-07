import { createApp } from 'vue'
// import './style.css'
import App from './App.vue'
import A1 from './components/A1.vue'
import A from './components/A.vue'

// createApp(App).mount('#app')
const app = createApp(App)

// const app = createApp(A)

// app.a11=111;
// 设置全局属性
// app.config.globalProperties.a11 = 222;

app.mount('#app')

// 调用全局
// app.config.globalProperties.fun();

// console.log(app);

// 创建组件
// var app = createApp(A1)

// // 挂载,组件
// setTimeout(() => {
//     app.mount('#app')
// }, 1000);

// // // 卸载,组件
// setTimeout(() => {
//     app.unmount();
// }, 2000);

// 卸载,组件
// setTimeout(() => {
//     app.destroyApp();
// }, 3000);

