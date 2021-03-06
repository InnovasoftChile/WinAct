﻿(function () {
    'use strict';

    angular.module('app', [
        // Angular modules 
        'ngRoute'
        , 'smart-table'
        , 'smart-pagination'
    ])

    .config(function ($routeProvider) {
        $routeProvider.
        when('/', {
            templateUrl: Uri() +'/AdminClt/Versiones',
            controller: 'admin'
        }).
        when('/EditVersion/:idVersion', {
            templateUrl: Uri() +'/AdminClt/Componentes',
            controller: 'admin'
        }).
        otherwise({
            redirectTo: Uri() +'/'
        });

    })

    .filter('filtroVersionesLiberadas', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (version) {
                if (version.Estado == 'P' && !version.isInstall) {
                    salida.push(version)
                }
            });
            return salida;
        }
    })

    .filter('filtroVersionesNV', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (version) {
                if (version.Estado == 'C') {
                    salida.push(version)
                }
            });
            return salida;
        }
    })

    .filter('filtroVersionesPub', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (version) {
                if (version.isInstall && version.Estado == 'P') {
                    salida.push(version)
                }
            });
            return salida;
        }
        })
    .filter('filtroVersionesQA', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (version) {
                if (version.Estado == 'Q' || version.Estado == 'R' ) {
                    salida.push(version)
                }
            });
            return salida;
        }
    })

    .filter('filtroComponente', function () {
        return function (input, ex) {
            var salida = [];
            angular.forEach(input, function (componente) {
                if (ex.includes(componente.Extension)) {
                    salida.push(componente)
                }
            });
            return salida;
        }
    })
    ;
})();