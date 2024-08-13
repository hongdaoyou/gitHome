
import { createRouter,createWebHistory } from "vue-router";


// 导入组件
// import FirstPage from '../components/FirstPage.vue';


const routes = [
    { 
        path: '/',
        name: 'FirstPage',
        component: FirstPage
    },
    {
        path: '/HomeContact',
        name: 'HomeContact',
        component: HomeContact,
        children : [
            {
                path:'', // 默认组件
                name:"default",
                component:UserContact 
            },
    ]
}
    
];


const router = createRouter({
    history: createWebHistory(),
    routes
});
  
export default router;
