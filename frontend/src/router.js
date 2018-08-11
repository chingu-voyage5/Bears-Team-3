import Vue from 'vue';
import Router from 'vue-router';
import Home from './components/Home/Home';
import Organization from './components/Organization/Organization';
import Organizations from './components/Organizations/Organizations';
import Search from './components/Search/Search';

Vue.use(Router);

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/organization',
      name: 'Organization',
      component: Organization
    },
    {
      path: '/organizations',
      name: 'Organizations',
      component: Organizations
    },
    {
      path: '/search',
      name: 'Search',
      component: Search
    }
  ]
});
