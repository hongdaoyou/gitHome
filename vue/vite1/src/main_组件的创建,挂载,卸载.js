import { createApp } from 'vue'
// import './style.css'
import App from './App.vue'
import A1 from './components/A1.vue'

// createApp(App).mount('#app')

//
// var app = createApp(App)

// 创建组件
var app = createApp(A1)

// 挂载,组件
setTimeout(() => {
    app.mount('#app')
}, 1000);

// 卸载,组件
setTimeout(() => {
    app.unmount();
}, 2000);

