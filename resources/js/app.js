
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

import Vue from 'vue'
import Vuetify from 'vuetify'

import VueSimplemde from 'vue-simplemde'
import 'simplemde/dist/simplemde.min.css'

Vue.use(Vuetify)
Vue.use(VueSimplemde)

import User from './Helpers/User'
import Exception from './Helpers/Exception'
// import AppStorage from './Helpers/AppStorage'

window.User = User;
window.Exception = Exception;
// window.AppStorage = AppStorage;

window.EventBus = new Vue();

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))
Vue.component('AppHome', require('./components/AppHome.vue').default);
Vue.component('Toolbar', require('./components/Toolbar.vue').default);

import router from './Router/router.js'



const app = new Vue({
    el: '#app',
    router
});
