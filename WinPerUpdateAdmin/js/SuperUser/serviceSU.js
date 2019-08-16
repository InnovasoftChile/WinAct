(function () {
    'use strict';

    angular
        .module('app')
        .factory('serviceSU', serviceSU);

    serviceSU.$inject = ['$http', '$q', '$window', '$rootScope'];

    function serviceSU($http, $q, $window,$rootScope) {
        var service = {
            LoadWebConf: LoadWebConf,
            Guardar: Guardar,
            seturi: seturi
        };

        return service;
        function seturi(uri) {
            $rootScope.baseUri = uri;
        }

        function LoadWebConf(){
            var deferred = $q.defer();
            var promise = deferred.promise;

            $.ajax({
                url: $rootScope.baseUri + '/api/Config',
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
                        deferred.reject('No existe configuracion');
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error('error = ' + xhr.status + "msg = " + xhr.responseText);
                    deferred.reject('No existe configuracion');
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

        function Guardar(innosetup, smtpwu, mailwu, passmailwu, aliasmailwu, mailsoporte, dirupload, dirvoficial, dirfuentes, port, ssl) {
            var webConfig = {
                "pathGenSetup": innosetup,
                "hostMail": smtpwu,
                "userMail": mailwu,
                "pwdMail": passmailwu,
                "fromMail": aliasmailwu,
                "correoSoporte": mailsoporte,
                "upload": dirupload,
                "voficial": dirvoficial,
                "fuentes": dirfuentes,
                "portMail": port,
                "sslMail": ssl
            };

            var deferred = $q.defer();
            var promise = deferred.promise;

            $.ajax({
                url: $rootScope.baseUri + '/api/GuardarConfig',
                type: "PUT",
                dataType: 'Json',
                data: webConfig,
                beforeSend: function (xhr) { xhr.setRequestHeader("Authorization", "Basic " + $window.sessionStorage.token); }, success: function (data, textStatus, jqXHR) {
                    if (jqXHR.status == 200) {
                        //console.log(JSON.stringify(data));
                        deferred.resolve(data);
                    }
                    else {
                        deferred.reject('No existe configuracion');
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.error('error = ' + xhr.status + "msg = " + xhr.responseText);
                    deferred.reject('No existe configuracion');
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