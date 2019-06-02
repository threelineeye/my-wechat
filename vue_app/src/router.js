import Vue from 'vue'
import Router from 'vue-router'
import Error from "./components/Error.vue"
import Home from "./components/Home.vue"
import Msgs from "./components/common/MessageList.vue"
import Login from "./components/Login.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:Home},
    {path:'/msgs',component:Msgs},
    {path:'/login',component:Login},
	
    {path:'*',component:Error},
  ]
})
