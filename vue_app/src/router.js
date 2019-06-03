import Vue from 'vue'
import Router from 'vue-router'
import Error from "./components/Error.vue"
import Home from "./components/Home.vue"
import loginLoading from "./components/common/Login_loading"
import Login from "./components/Login.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:Home},
    {path:'/login',component:Login},
    {path:'/loginbg',component:loginLoading},
	
    {path:'*',component:Error},
  ]
})
