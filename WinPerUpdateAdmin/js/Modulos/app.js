(function () {
    'use strict';

    angular.module('app', [
        // Angular modules 
        'ngRoute'

        // Custom modules 

        // 3rd Party Modules
        , 'smart-table'
        , 'angularFileUpload'
        , 'smart-pagination'
        
    ]).config(function ($routeProvider) {
        $routeProvider.
        when('/', {
            templateUrl: Uri() +'/Modulos/Inicio',
            controller: 'inicio'
        }).
        when('/CrearModulo', {
            templateUrl: Uri() +'/Modulos/CrearModulo',
            controller: 'modulos'
        }).
        when('/EditarModulo/:idModulo', {
            templateUrl: Uri() +'/Modulos/CrearModulo',
            controller: 'modulos'
        }).
        when('/EditarModulo/:idModulo/Componente/:idComponente', {
            templateUrl: Uri() +'/Modulos/EditarComponente',
            controller: 'componentes'
        }).
        otherwise({
            redirectTo: Uri() +'/'
        });

    });
})();