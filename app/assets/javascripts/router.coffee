app.config([
  '$stateProvider', '$urlRouterProvider', '$locationProvider',
  ($stateProvider, $urlRouterProvider, $locationProvider) ->

    $stateProvider
    .state 'public',
      abstract: true,
      url: '',
      templateUrl: 'layouts/index.html',
      controller: 'layout'

    .state 'public.index',
      url: '/',
      templateUrl: 'views/index.html'
      controller: 'index'

    .state 'public.products/:id',
      url: '/products/:id',
      templateUrl: 'views/show.html'
      controller: 'show'

    $urlRouterProvider.otherwise '/'

    $locationProvider.html5Mode
      enabled: true
      requireBase: false
      html5Mode: true

])
