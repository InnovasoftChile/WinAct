(function () {
    'use strict';

    angular.module('app', [
        // Angular modules 
        'ngRoute'

        // Custom modules 

        // 3rd Party Modules
        , 'smart-table'
        , 'ui.select'
        , 'smart-pagination'
    ])

    .config(function ($routeProvider) {
        $routeProvider.
        when('/', {
            templateUrl: Uri() +'/Clientes/Inicio',
            controller: 'inicio'
        }).
        when('/CrearCliente', {
            templateUrl: Uri() +'/Clientes/Crear',
            controller: 'clientes'
        }).
        when('/EditCliente/:idCliente/Usuario', {
            templateUrl: Uri() +'/Clientes/Usuario',
            controller: 'usuarios'
        }).
        when('/EditCliente/:idCliente', {
            templateUrl: Uri() +'/Clientes/Crear',
            controller: 'clientes'
        }).
        when('/EditCliente/:idCliente/Usuario/:idUsuario', {
            templateUrl: Uri() +'/Clientes/Usuario',
            controller: 'usuarios'
        }).
        otherwise({
            redirectTo: Uri() +'/'
        });

    })

    .filter('filtroPerfil', function () {
        return function (input, idPrf) {
            var salida = [];
            angular.forEach(input, function (item) {
                if (item.CodPrf == idPrf) {
                    salida.push(item)
                }
            });
            return salida;
        }
    })
;
})();