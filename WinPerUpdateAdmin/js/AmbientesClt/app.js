(function () {
    'use strict';
   
    angular.module('app', [
        // Angular modules 
        'ngRoute'

        // Custom modules 
        
        // 3rd Party Modules
        , 'angularFileUpload'
        , 'smart-table'
        // Custom modules 
        , 'smart-pagination'
    ])

    .config(function ($routeProvider) {
        $routeProvider.
        when('/', {
            templateUrl: Uri() +'/AmbientesClt/Ambientes',
            controller: 'ambientes'
        }).
        when('/EditAmbiente/:idCliente/:idAmbiente', {
            templateUrl: Uri() +'/AmbientesClt/Crear',
            controller: 'mantenedor'
        }).
        when('/Crear/:idCliente', {
            templateUrl: Uri() + '/AmbientesClt/Crear',
            controller: 'mantenedor'
        }).
        otherwise({
            redirectTo: Uri() + '/'
        });

    })

    ;
})();