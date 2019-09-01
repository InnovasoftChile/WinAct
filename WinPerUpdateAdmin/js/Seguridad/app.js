(function () {
    'use strict';

    angular.module('app', [
        // Angular modules 
        'ngRoute'

        // Custom modules 

        // 3rd Party Modules

    ])

    .config(function ($routeProvider) {
        $routeProvider.
        when('/', {
            templateUrl: Uri() +'/Seguridad/Inicio',
            controller: 'seguridad'
        }).
        when('/CrearUsuario', {
            templateUrl: Uri() +'/Seguridad/CrearUsuario',
            controller: 'mantenedor'
        }).
        when('/EditUsuario/:idUsuario', {
            templateUrl: Uri() +'/Seguridad/CrearUsuario',
            controller: 'mantenedor'
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


    .filter('filtroAdministrador', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (item) {
                if (item.CodPrf == 1) {
                    salida.push(item)
                }
            });
            return salida;
        }
    })

    .filter('filtroDesarrollador', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (item) {
                if (item.CodPrf == 2) {
                    salida.push(item)
                }
            });
            return salida;
        }
    })

    .filter('filtroSoporte', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (item) {
                if (item.CodPrf == 3) {
                    salida.push(item)
                }
            });
            return salida;
        }
    })

    .filter('filtroGestion', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (item) {
                if (item.CodPrf == 4) {
                    salida.push(item)
                }
            });
            return salida;
        }
    })
    ;
})();