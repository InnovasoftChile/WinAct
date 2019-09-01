
(function () {
    'use strict';

    angular.module('app', [
        'ngRoute'
        , 'smart-table'
        , 'smart-pagination'
    ])
    .config(function ($routeProvider) {
        $routeProvider.
        when('/', {
            templateUrl: Uri() +'/Bitacora/Clientes',
            controller: 'ctrlBitacora'
        }).
        when('/Modulo/:menu', {
            templateUrl: Uri() +'/Bitacora/Modulo',
            controller: 'ctrlBitacora'
        }).
        when('/Usuario/:menu', {
            templateUrl: Uri() + '/Bitacora/Usuario',
            controller: 'ctrlBitacora'
        }).
        when('/Version/:menu', {
            templateUrl: Uri() +'/Bitacora/Version',
            controller: 'ctrlBitacora'
        }).
        otherwise({
            redirectTo: Uri() +'/'
        });

    })
    ;
})();
