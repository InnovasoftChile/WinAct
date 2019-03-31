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
                    templateUrl: '/Soporte/Soporte',
                    controller: 'soporte'
                }).
                otherwise({
                    redirectTo: '/'
                });

        })
        .filter('filtroClientesVigentes', function () {
            return function (input) {
                var salida = [];
                angular.forEach(input, function (item) {
                    if (item.Estado == 'V') {
                        salida.push(item)
                    }
                });
                return salida;
            }
        })
        .filter('filtroTareasError', function () {
            return function (input) {
                var salida = [];
                angular.forEach(input, function (item) {
                    if (item.Estado == 2) {
                        salida.push(item)
                    }
                });
                return salida;
            }
        })
})();