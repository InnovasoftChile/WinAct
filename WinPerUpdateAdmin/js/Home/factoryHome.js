(function () {
    'use strict';

    angular
        .module('app')
        .factory('factoryHome', factoryHome);

    factoryHome.$inject = ['$http', '$q', '$window', '$rootScope'];

    function factoryHome($http, $q, $window,$rootScope) {
        var service = {
            getUsuarioSession: getUsuarioSession,
            compruebaPwd: compruebaPwd,
            verificaSession: verificaSession,
            seturi: seturi
        };

        return service;
        function seturi(uri) {
            $rootScope.baseUri = uri;
        }

       function verificaSession() {
            var deferred = $q.defer();
            var promise = deferred.promise;

            $.ajax({
                url: $rootScope.baseUri + '/api/VerificaSession',
                type: "GET",
                dataType: 'Json',
                beforeSend: function (xhr) {
                    xhr.setRequestHeader("Authorization", "Basic " + $window.sessionStorage.token);
                },
                success: function (data, textStatus, jqXHR) {
                    if (jqXHR.status == 200) {
                        deferred.resolve(data);
                    }
                    else {
                        deferred.reject('msgerror');
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error('error = ' + xhr.status + " msg = " + xhr.responseText);
                    deferred.reject('msgerror');
                }

            });

            promise.success = function (fn) {
                promise.then(fn);
                return promise;
            }

            promise.error = function (fn) {
                promise.then(null, fn);
                return promise;
            }

            return promise;
        }

        function getUsuarioSession(id) {
            var deferred = $q.defer();
            var promise = deferred.promise;

            $.ajax({
                url: $rootScope.baseUri + '/api/Usuarios/' + id,
                type: "GET",
                dataType: 'Json',
                beforeSend: function (xhr) {
                    xhr.setRequestHeader("Authorization", "Basic " + $window.sessionStorage.token);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                    xhr.setRequestHeader('Acces-Control-Allow-Headers',"Origin, X-Requested-With, Content-Type, Accept,Authorization");
                    xhr.setRequestHeader("Access-Control-Allow-Methods", "GET, POST, DELETE, PUT");
                },
                success: function (data, textStatus, jqXHR) {
                    if (jqXHR.status == 200) {
                        //console.log(JSON.stringify(data));
                        deferred.resolve(data);
                    }
                    else {
                        deferred.reject('No existe usuario');
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error('error = ' + xhr.status + "msg = " + xhr.responseText);
                    deferred.reject('No existe usuario');
                }

            });

            promise.success = function (fn) {
                promise.then(fn);
                return promise;
            }

            promise.error = function (fn) {
                promise.then(null, fn);
                return promise;
            }

            return promise;
        }


        function compruebaPwd(mail, clave, nClave) {
            var deferred = $q.defer();
            var promise = deferred.promise;

            $.ajax({
                url: $rootScope.baseUri + '/api/Seguridad?mail=' + mail + '&password=' + clave + '&nPassword=' + nClave,
                type: "PUT",
                dataType: 'Json',
                beforeSend: function (xhr) {
                    xhr.setRequestHeader("Authorization", "Basic " + $window.sessionStorage.token);
                },
                success: function (data, textStatus, jqXHR) {
                    if (jqXHR.status == 200) {
                        //console.log(JSON.stringify(data));
                        deferred.resolve(data);
                    }
                    else {
                        deferred.reject('Usuario No existe');
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error('error = ' + xhr.status + "msg = " + xhr.responseText);
                    deferred.reject('Usuario No existe');
                }

            });

            promise.success = function (fn) {
                promise.then(fn);
                return promise;
            }

            promise.error = function (fn) {
                promise.then(null, fn);
                return promise;
            }

            return promise;
        }
    }
})();