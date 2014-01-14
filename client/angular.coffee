window.app = angular.module('meteorapp', ['meteor','ngRoute'])
  .config ['$routeProvider', ($routeProvider) ->
    $routeProvider
      .when('/', {templateUrl: 'partials/index.html'})
      .when('/todos', {templateUrl: 'partials/todos.html',   controller: 'TodoCtrl'})
      .when('/todos:filter', {templateUrl: 'partials/todos.html',   controller: 'TodoCtrl'})
      .otherwise({redirectTo: '/'});
  ]
$.pnotify.defaults.history = false
window.showErrorNotify = (title,msg) ->
	$.pnotify({
        title: title||'Error',
        text: msg || 'Have some error',
        type: "error",
        animation: "fade",
        styling: "bootstrap",
        delay: 4000
    });