angular.module('AddsApp',        []);
angular.module('StaticPagesApp', []);

angular.module('Olive', [
  'ngRoute',
  'templates',
  'ngResource',
  'AddsApp',
  'StaticPagesApp'
]);