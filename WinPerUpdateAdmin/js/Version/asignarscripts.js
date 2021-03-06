﻿
(function () {
    'use strict';

    angular
        .module('app')
        .controller('asignarscripts', asignarscripts);

    asignarscripts.$inject = ['$scope', '$window', '$routeParams', 'serviceAdmin', '$timeout', 'FileUploader'];

    function asignarscripts($scope, $window, $routeParams, serviceAdmin, $timeout, FileUploader) {
        $scope.title = 'titulo';

        activate();

        function activate() {
            window.scrollTo(0, 0);
            $scope.motoresBd = 
                [{ cod: 1, nombre: "SQL Server" }
                , { cod: 2, nombre: "Oracle" }];
            $scope.modulos = [];
            $scope.version = null;
            $scope.msgError = "";
            $scope.msgError2 = "";
            $scope.formData = {};
            $scope.Script = "";
            serviceAdmin.seturi(Uri());

            $scope.tiempoMsgError2 = 10000;

            if (!jQuery.isEmptyObject($routeParams)) {
                serviceAdmin.getVersion($routeParams.idVersion).success(function (data) {
                    $scope.version = data;
                    serviceAdmin.getModulos().success(function (modulos) {
                        $scope.msgError = "";
                        $scope.modulos = modulos;
                    }).error(function (err) {
                        console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                    });
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0); window.scrollTo(0, 0);
                });
            }

            $scope.isUndefinedOrNullMotor = function (motor) {
                return (angular.isUndefined(motor) || motor === null)
            }

            $scope.isUndefinedOrNullModulo = function (modulo) {
                return (angular.isUndefined(modulo) || modulo === null)
            }

            $scope.existeFile = function (name) {
                $scope.con = 0;
                $scope.cantidad = 0;
                do {
                    if ($scope.con == 0) {
                        for (var i = 0; i < $scope.uploaderAlt.queue.length; i++) {
                            if ($scope.uploaderAlt.queue[i].file.name == name) $scope.cantidad++;
                        }
                    } else if ($scope.con == 1) {
                        for (var i = 0; i < $scope.uploaderSp.queue.length; i++) {
                            if ($scope.uploaderSp.queue[i].file.name == name) $scope.cantidad++;
                        }
                    } else if ($scope.con == 2) {
                        for (var i = 0; i < $scope.uploaderFn.queue.length; i++) {
                            if ($scope.uploaderFn.queue[i].file.name == name) $scope.cantidad++;
                        }
                    }
                    $scope.con++;
                } while ($scope.con < 3);
                return $scope.cantidad;
            }

            $scope.uploadAll = function () {
                $scope.uploaderAlt.uploadAll();
                $scope.uploaderSp.uploadAll();
                $scope.uploaderFn.uploadAll();
            }

            $scope.cancelAll = function () {
                $scope.uploaderAlt.cancelAll();
                $scope.uploaderSp.cancelAll();
                $scope.uploaderFn.cancelAll();
            }

            $scope.removeAll = function () {
                $scope.uploaderAlt.clearQueue();
                $scope.uploaderSp.clearQueue();
                $scope.uploaderFn.clearQueue();
            }

            //ALters
            var uploaderAlt = $scope.uploaderAlt = new FileUploader();


            // FILTERS

            // a sync filter
            uploaderAlt.filters.push({
                name: 'maxlenQueue',
                fn: function (item, options) {
                    return this.queue.length < 30;
                }
            });

            // an async filter
            uploaderAlt.filters.push({
                name: 'sizeFilter',
                fn: function (item) {
                    return item.size < 52428800; // 50 Mbytes
                }
            });

            // CALLBACKS
            uploaderAlt.onSuccessItem = function (fileItem, response, status, headers) {
                if (response.CodErr == 0) {
                    serviceAdmin
                        .addComponenteSql($scope.version.IdVersion, $scope.formData.modulo, fileItem.file.name, fileItem.file.lastModifiedDate.toISOString(), response.Tipo, $scope.formData.motor)
                        .success(function (data) {
                            $scope.msgError = "";
                        })
                        .error(function (err) {
                            console.error(err); $scope.msgError = response.MsgErr; window.scrollTo(0, 0);
                        });
                }
            };
            uploaderAlt.onErrorItem = function (fileItem, response, status, headers) {
                //console.info('onErrorItem', fileItem, response, status, headers);
            };
            uploaderAlt.onCancelItem = function (fileItem, response, status, headers) {
                //console.info('onCancelItem', fileItem, response, status, headers);
            };
            uploaderAlt.onCompleteItem = function (fileItem, response, status, headers) {
                //console.info('onCompleteItem', fileItem, response, status, headers);
            };

            uploaderAlt.onAfterAddingFile = function (fileItem) {
                $scope.msgError2 = "";
                var fiSplit = fileItem.file.name.split('.');
                if (fiSplit[fiSplit.length - 1] != "sql" && fiSplit[fiSplit.length - 1] != "SQL") {
                    fileItem.remove();
                    $scope.msgError2 = "El archivo debe ser un archivo .SQL";
                    window.scrollTo(0, 0);
                }
                if (!fileItem.file.name.startsWith("Alt_") && !fileItem.file.name.startsWith("alt_")) {
                    fileItem.remove();
                    $scope.msgError2 = "El script no corresponde a un alter, siga el formato de nombres correspondiente 'Alt_(Nombre del Script)'";
                    window.scrollTo(0, 0);
                }
                if (fileItem.file.name.length > 50) {
                    fileItem.remove();
                    $scope.msgError2 = "El nombre del archivo no puede contener más de 50 carácteres, incluyendo la extensión.";
                    window.scrollTo(0, 0);
                }
                if ($scope.existeFile(fileItem.file.name) > 1) {
                    fileItem.remove();
                    $scope.msgError2 = "El archivo ya fue agregado anteriormente.";
                    window.scrollTo(0, 0);
                }
                $timeout(function () {
                    $scope.msgError2 = "";
                }, $scope.tiempoMsgError2);
                if (fileItem.file.name.startsWith("Alt_") || fileItem.file.name.startsWith("alt_")) {
                    $scope.Script = "Alters";
                } 
                fileItem.url = '/Admin/UploadSql?idVersion=' + $scope.version.IdVersion + '&tipo=A&modulo=' + $scope.formData.modulo+"&clasif=" + $scope.Script;
            };

            uploaderAlt.onCompleteAll = function () {
                
            }

            //Sp
            var uploaderSp = $scope.uploaderSp = new FileUploader();


            // FILTERS

            // a sync filter
            uploaderSp.filters.push({
                name: 'maxlenQueue',
                fn: function (item, options) {
                    return this.queue.length < 30;
                }
            });

            // an async filter
            uploaderSp.filters.push({
                name: 'sizeFilter',
                fn: function (item) {
                    return item.size < 52428800; // 50 Mbytes
                }
            });

            // CALLBACKS
            uploaderSp.onSuccessItem = function (fileItem, response, status, headers) {
                if (response.CodErr == 0) {
                    serviceAdmin
                        .addComponenteSql($scope.version.IdVersion, $scope.formData.modulo, fileItem.file.name, fileItem.file.lastModifiedDate.toISOString(), response.Tipo, $scope.formData.motor)
                        .success(function (data) {
                            $scope.msgError = "";
                        })
                        .error(function (err) {
                            console.error(err); $scope.msgError = response.MsgErr; window.scrollTo(0, 0);
                        });
                }
            };
            uploaderSp.onErrorItem = function (fileItem, response, status, headers) {
                //console.info('onErrorItem', fileItem, response, status, headers);
            };
            uploaderSp.onCancelItem = function (fileItem, response, status, headers) {
                //console.info('onCancelItem', fileItem, response, status, headers);
            };
            uploaderSp.onCompleteItem = function (fileItem, response, status, headers) {
                //console.info('onCompleteItem', fileItem, response, status, headers);
            };

            uploaderSp.onAfterAddingFile = function (fileItem) {
                $scope.msgError2 = "";
                var fiSplit = fileItem.file.name.split('.');
                if (fiSplit[fiSplit.length - 1] != "sql" && fiSplit[fiSplit.length - 1] != "SQL") {
                    fileItem.remove();
                    $scope.msgError2 = "El archivo debe ser un archivo .SQL.";
                    window.scrollTo(0, 0);
                }
                if (!fileItem.file.name.startsWith("Sp_") && !fileItem.file.name.startsWith("sp_") && !fileItem.file.name.startsWith("spliq_")
                    &&!fileItem.file.name.startsWith("Fn_") && !fileItem.file.name.startsWith("fn_")
                    &&!fileItem.file.name.startsWith("Tr_") && !fileItem.file.name.startsWith("tr_")) {
                    fileItem.remove();
                    $scope.msgError2 = "El script no corresponde a un Sp, Tr o Fn, siga el formato de nombres correspondiente 'Sp_(Nombre del Script)', 'Tr_(Nombre del Script)' o 'Fn_(Nombre del Script)'";
                    window.scrollTo(0, 0);
                }
                if (fileItem.file.name.length > 50) {
                    fileItem.remove();
                    $scope.msgError2 = "El nombre del archivo no puede contener más de 50 carácteres, incluyendo la extensión.";
                    window.scrollTo(0, 0);
                }
                if ($scope.existeFile(fileItem.file.name) > 1) {
                    fileItem.remove();
                    $scope.msgError2 = "El archivo ya fue agregado anteriormente.";
                    window.scrollTo(0, 0);
                }
                $timeout(function () {
                    $scope.msgError2 = "";
                }, $scope.tiempoMsgError2);
                if (fileItem.file.name.startsWith("Sp_") || fileItem.file.name.startsWith("sp_") || fileItem.file.name.startsWith("spliq_")) {
                    $scope.Script = "Sp";
                } else if (fileItem.file.name.startsWith("Fn_") || fileItem.file.name.startsWith("fn_")) {
                    $scope.Script = "Funciones";
                } else {
                    $scope.Script = "Triggers"
                }

                fileItem.url = '/Admin/UploadSql?idVersion=' + $scope.version.IdVersion + '&tipo=S&modulo=' + $scope.formData.modulo + "&clasif=" + $scope.Script;
            };

            uploaderSp.onCompleteAll = function () {

            }

            //Fn
            var uploaderFn = $scope.uploaderFn = new FileUploader();


            // FILTERS

            // a sync filter
            uploaderFn.filters.push({
                name: 'maxlenQueue',
                fn: function (item, options) {
                    return this.queue.length < 30;
                }
            });

            // an async filter
            uploaderFn.filters.push({
                name: 'sizeFilter',
                fn: function (item) {
                    return item.size < 52428800; // 50 Mbytes
                }
            });

            // CALLBACKS
            uploaderFn.onSuccessItem = function (fileItem, response, status, headers) {
                if (response.CodErr == 0) {
                    serviceAdmin
                        .addComponenteSql($scope.version.IdVersion, $scope.formData.modulo, fileItem.file.name, fileItem.file.lastModifiedDate.toISOString(), response.Tipo, $scope.formData.motor)
                        .success(function (data) {
                            $scope.msgError = "";
                        })
                        .error(function (err) {
                            console.error(err); $scope.msgError = response.MsgErr; window.scrollTo(0, 0);
                        });
                }
            };
            uploaderFn.onErrorItem = function (fileItem, response, status, headers) {
                //console.info('onErrorItem', fileItem, response, status, headers);
            };
            uploaderFn.onCancelItem = function (fileItem, response, status, headers) {
                //console.info('onCancelItem', fileItem, response, status, headers);
            };
            uploaderFn.onCompleteItem = function (fileItem, response, status, headers) {
                //console.info('onCompleteItem', fileItem, response, status, headers);
            };

            uploaderFn.onAfterAddingFile = function (fileItem) {
                $scope.msgError2 = "";
                var fiSplit = fileItem.file.name.split('.');
                if (fiSplit[fiSplit.length - 1] != "sql" && fiSplit[fiSplit.length - 1] != "SQL") {
                    fileItem.remove();
                    $scope.msgError2 = "El archivo debe ser un archivo .SQL.";
                    window.scrollTo(0, 0);
                }
                if (!fileItem.file.name.startsWith("Vw_") && !fileItem.file.name.startsWith("vw_")
                    && !fileItem.file.name.startsWith("Qr_") && !fileItem.file.name.startsWith("qr_")) {
                    fileItem.remove();
                    $scope.msgError2 = "El script no corresponde a una Vista (Vw) o Query (Qr), siga el formato de nombres correspondiente 'Vw_(Nombre del Script)' o 'Qr_(Nombre del Script)'";
                    window.scrollTo(0, 0);
                }
                if (fileItem.file.name.length > 50) {
                    fileItem.remove();
                    $scope.msgError2 = "El nombre del archivo no puede contener más de 50 carácteres, incluyendo la extensión.";
                    window.scrollTo(0, 0);
                }
                if ($scope.existeFile(fileItem.file.name) > 1) {
                    fileItem.remove();
                    $scope.msgError2 = "El archivo ya fue agregado anteriormente.";
                    window.scrollTo(0, 0);
                }
                $timeout(function () {
                    $scope.msgError2 = "";
                }, $scope.tiempoMsgError2);

                if (fileItem.file.name.startsWith("Vw_") || fileItem.file.name.startsWith("vw_")) {
                    $scope.Script = "Views";
                } else {
                    $scope.Script = "Query";
                }

                fileItem.url = '/Admin/UploadSql?idVersion=' + $scope.version.IdVersion + '&tipo=Z&modulo=' + $scope.formData.modulo + "&clasif=" + $scope.Script;
            };

            uploaderFn.onCompleteAll = function () {

            }

            
        }

    }
})();
