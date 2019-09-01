(function () {
    'use strict';

    angular.module('app', [

        // Angular modules 
         'ngRoute'
        ,'angularFileUpload'
        , 'smart-table'
        // Custom modules 
        , 'smart-pagination'
        // 3rd Party Modules
        
    ])

    .config(function ($routeProvider) {
        $routeProvider.
        when('/', {
            templateUrl: Uri() + '/Admin/Versiones',
            controller: 'admin'
        }).
        when('/CrearVersion', {
            templateUrl: Uri() +'/Admin/CrearVersion',
            controller: 'version'
        }).
        when('/EditVersion/:idVersion', {
            templateUrl: Uri() +'/Admin/CrearVersion',
            controller: 'version'
        }).
        when('/PublicarParcial/:idVersion', {
            templateUrl: Uri() +'/Admin/PubParcial',
            controller: 'publicar'
        }).
        when('/CrearComponente/:idVersion', {
            templateUrl: Uri() +'/Admin/CrearComponente',
            controller: 'componente'
        }).
        when('/EditComponente/:idVersion/:name', {
            templateUrl: Uri() +'/Admin/EditComponente',
            controller: 'editcomponente'
        }).
        when('/ControlCambios/:idVersion', {
            templateUrl: Uri() +'/Admin/ControlCambios',
            controller: 'controlcambios'
        }).
        when('/ControlCambios/:idVersion/:tips/:modulo', {
            templateUrl: Uri() +'/Admin/ControlCambios',
            controller: 'controlcambios'
        }).
        when('/AsignarScripts/:idVersion', {
            templateUrl: Uri() +'/Admin/AsignarScripts',
            controller: 'asignarscripts'
        }).
        otherwise({
            redirectTo: Uri() +'/'
        });

    })
    .filter('filtroVersionesLiberadas', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (version) {
                if (version.Estado == 'N') {
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
                if (version.Estado == 'P') {
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
                if (ex.includes(componente.componente.Extension)) {
                    salida.push(componente)
                }
            });
            return salida;
        }
    })
    .filter('filtroModulosOk', function () {
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

    .filter('filtroClientesNoSel', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (item) {
                if (item.Tipo == 0) {
                    salida.push(item)
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
        
    .filter('filtroClientesSel', function () {
        return function (input) {
            var salida = [];
            angular.forEach(input, function (item) {
                if (item.Tipo == 1) {
                    salida.push(item)
                }
            });
            return salida;
        }
    })
    ;


})();