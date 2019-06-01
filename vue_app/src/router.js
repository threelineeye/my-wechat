import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import Error from "./components/Error.vue"
import Home from "./components/Home.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/home',component:Home},
	
    {path:'*',component:Error},
  ]
})
