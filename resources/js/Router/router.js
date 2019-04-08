import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../components/Home'
import Login from '../components/Login/Login'
import Signup from '../components/Login/Signup'
import Forum from '../components/Forum/Forum'
import Logout from '../components/Login/Logout'
import Read from '../components/Forum/Read'
import Create from '../components/Forum/Create'
import CreateCategory from '../components/Category/CreateCategory'

Vue.use(VueRouter)

const routes = [
    {
        path: '/',
        component: Home
    },
    {
        path: '/login',
        component: Login
    },
    {
        path: '/signup',
        component: Signup
    },
    {
        path: '/logout',
        component: Logout
    },
    {
        path: '/forum',
        component: Forum,
        name: 'forum'
    },
    {
        path: '/category',
        component: CreateCategory,
    },
    {
        path: '/ask',
        component: Create,
    },
    {
        path: '/question/:slug',
        component: Read,
        name: 'read'
    },
    
]

const router = new VueRouter({
    routes,
    mode : 'history'
})

export default router