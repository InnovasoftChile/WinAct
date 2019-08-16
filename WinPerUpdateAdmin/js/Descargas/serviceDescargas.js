(function () {
    'use strict';

    angular
        .module('app')
        .factory('serviceDescargas', serviceDescargas);

    serviceDescargas.$inject = ['$http', '$q', '$window', '$rootScope'];

    function serviceDescargas($http, $q, $window,$rootScope) {
        var service = {
            LoadDescargas: LoadDescargas,
            seturi: seturi
        };

        return service;

        //funciones
        function seturi(uri) {
            $rootScope.baseUri = uri;
        }

        function LoadDescargas() {
            var deferred = $q.defer();
            var promise = deferred.promise;

            $.ajax({
                url: $rootScope.baseUri + '/api/Descargas',
                type: "GET",
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
                        deferred.reject('No existen descargas');
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error('error = ' + xhr.status + "msg = " + xhr.responseText);
                    deferred.reject('No existen descargas');
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