(function () {
    'use strict';

    angular
        .module('app')
        .factory('serviceSeguridad', serviceSeguridad);

    serviceSeguridad.$inject = ['$http', '$q', '$window', '$rootScope'];

    function serviceSeguridad($http, $q, $window,$rootScope) {
        var service = {
            getUsuario: getUsuario,
            seturi: seturi
        };

        return service;

        function seturi(uri) {
            $rootScope.baseUri = uri;
        }

        function getUsuario(id) {
            var deferred = $q.defer();
            var promise = deferred.promise;

            $.ajax({
                url: $rootScope.baseUri + '/api/Usuarios/' + id,
                type: "GET",
                dataType: 'Json',
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

    }
})();