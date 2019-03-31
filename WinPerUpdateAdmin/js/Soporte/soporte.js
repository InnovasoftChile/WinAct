(function () {
    'use strict';

    angular
        .module('app')
        .controller('soporte', soporte);

    soporte.$inject = ['$scope', '$window', '$routeParams', 'serviceSoporte', '$timeout'];

    function soporte($scope, $window, $routeParams, serviceSoporte, $timeout) {
        $scope.title = 'soporte';



        activate();

        function activate() {

            $scope.msgError = "";
            $scope.saveUser = "";
            $scope.msgCamposRequeridos = false;

            $scope.idUsuario = 0;
            $scope.increate = true;
            $scope.formData = {};
            $scope.mensaje = '';
            $scope.clientes = [];
            $scope.versiones = [];
            $scope.ambientes = [];
            $scope.tareas = [];
            $scope.Ejecutado = "Ejecutado";
            $scope.cola = "Poner en Cola";

            if (!jQuery.isEmptyObject($routeParams)) {
                $scope.idUsuario = $routeParams.idUsuario;
                $scope.titulo = "Modificar Usuario";
                $scope.labelcreate = "Modificar";

                serviceSeguridad.getUsuario($scope.idUsuario).success(function (data) {
                    $scope.formData.nombre = data.Persona.Nombres;
                    $scope.formData.apellido = data.Persona.Apellidos;
                    $scope.formData.mail = data.Persona.Mail;
                    $scope.formData.perfil = data.CodPrf;
                    $scope.formData.idPersona = data.Persona.Id;
                    $scope.formData.estado = data.EstUsr;
                    $scope.msgError = "";
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                    });


            }
            serviceSoporte.getClientes().success(function (data) {
                $scope.clientes = data;
            }).error(function (err) {
                console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                });
            
            if (document.cookie != "") {
                
                var spliteo = document.cookie.split(";");
                var cliente = spliteo[0].split("=");
                var version = spliteo[1].split("=");
                var ambiente = spliteo[2].split("=");
                $scope.formData.cliente = cliente[1];
                $scope.formData.version = version[1];
                $scope.formData.ambiente = ambiente[1];
                serviceSoporte.getTareas($scope.formData.cliente, $scope.formData.version).success(function (data) {
                    var newlist = [];
                    for (var i = 0; i < data.length; i++) {
                        if (data[i].Estado == 2) {
                            newlist.push(data[i]);
                        }
                    }
                    $scope.tareas = newlist;
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                });
                
                document.cookie = 'Cliente=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
                document.cookie = 'Version=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
                document.cookie = 'Ambiente=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';

            }
            $scope.Versiones = function () {
                serviceSoporte.getVersiones($scope.formData.cliente).success(function (data) {
                    $scope.versiones = data;
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                });
            }
            $scope.Ambientes = function () {
                serviceSoporte.getAmbientes($scope.formData.cliente, $scope.formData.version).success(function (data) {
                    $scope.ambientes = data;
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                });
            }
            $scope.Tareas = function () {
                serviceSoporte.getTareas($scope.formData.cliente, $scope.formData.version).success(function (data) {
                    var newlist = [];
                    for (var i = 0; i < data.length; i++) {
                        if (data[i].Estado == 2) {
                            newlist.push(data[i]);
                        }
                    }
                    $scope.tareas = newlist;
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                });
            }
            $scope.updateTarea = function (idTarea, Estado) {
                serviceSoporte.updTarea(idTarea, Estado).success(function (data) {
                    document.cookie = "Cliente =" + $scope.formData.cliente + "; Path=/;";
                    document.cookie = "Version =" + $scope.formData.version +  "; Path=/;";
                    document.cookie = "Ambiente =" + $scope.formData.ambiente + "; Path=/;";
                    window.location.reload(false);
               
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                });
            }

            $scope.isUndefinedOrNullCliente = function (cliente) {
                return (angular.isUndefined(cliente) || cliente === null)
            }

            $scope.isUndefinedOrNullVersion = function (version) {
                return (angular.isUndefined(version) || version === null)
            }
            $scope.isUndefinedOrNullAmbiente = function (ambiente) {
                return (angular.isUndefined(ambiente) || ambiente === null)
            }
        }

    }
})();
