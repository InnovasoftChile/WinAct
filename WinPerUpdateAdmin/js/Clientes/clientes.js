﻿/// <reference path="serviceClientes.js" />
/// <reference path="serviceClientes.js" />
(function () {
    'use strict';

    angular
        .module('app')
        .controller('clientes', clientes);

    clientes.$inject = ['$scope', '$window', '$routeParams','FileUploader', 'serviceClientes'];

    function clientes($scope, $window, $routeParams, FileUploader, serviceClientes) {
        $scope.title = 'clientes';
        $scope.regiones = [];
        $scope.comunas = [];
        $scope.lclientes = [];

        activate();

        function activate() {
            $scope.msgError = "";
            $scope.msgSuccess = "";
            $scope.msgAdvertencia = "";
            serviceClientes.seturi(Uri());
            $scope.idUsuario = $("#idToken").val();


            $scope.msgSeleccionSuite = "";

            $scope.modulosWinper = [];
            $scope.idCliente = 0;
            $scope.titulo = "Crear Cliente";
            $scope.labelcreate = "Crear un Cliente";
            $scope.increate = true;
            $scope.rutok = true;
            $scope.formData = {};
            $scope.formData.modulos = [];
            $scope.mensaje = '';
            $scope.totales = [0, 0];
            $scope.usuarios = [];
            $scope.estadosMantencion = [{ valor: 7, nomest: "Activo" }, { valor: 9, nomest: "No Activo" }];
            $scope.mesesInicioMantencion = [
            { valor: "01", nommes: "Enero" },
            { valor: "02", nommes: "Febrero" },
            { valor: "03", nommes: "Marzo" },
            { valor: "04", nommes: "Abril" },
            { valor: "05", nommes: "Mayo" },
            { valor: "06", nommes: "Junio" },
            { valor: "07", nommes: "Julio" },
            { valor: "08", nommes: "Agosto" },
            { valor: "09", nommes: "Septiembre" },
            { valor: "10", nommes: "Octubre" },
            { valor: "11", nommes: "Noviembre" },
            { valor: "12", nommes: "Diciembre" }, ];

            $scope.aniosInicioContrato = [];


            $scope.versionesCliente = [];
            $scope.versionesClientePub = [];

            $scope.trabPlantas = [];
            $scope.trabHonorarios = [];

            $scope.suites = [];


            //Proceso de upload
            var uploadOptions = {
                url: Uri() +'/Clientes/Upload?idUsuario=' + $scope.idUsuario,
                filters: []
            };

            uploadOptions.filters.push({
                name: 'maxlenQueue',
                fn: function (item, options) {
                    return this.queue.length < 1;
                }
            });
            // File must not be larger then some size
            uploadOptions.filters.push({
                name: 'sizeFilter',
                fn: function (item) {
                    return item.size < 52428800; // 50 Mbytes
                }
            });

            $scope.uploadOptions = uploadOptions;



            $scope.downloadFile = function () {
                window.location = Uri() +'/api/EmpresasXLSX/Planilla';
            }

            var uploader = $scope.uploader = new FileUploader();

            // CALLBACKS
            uploader.onSuccessItem = function (fileItem, response, status, headers) {
                $scope.msgSuccess = "";
                if (response.CodErr == 0) {
                    $scope.uploader.clearQueue();
                    $('#import-modal').modal('toggle');
                    if (response.sModulo == "OK") {
                            $scope.msgError = "";
                            $scope.msgSuccess = "Empresas agregadas correctamente.";
                    } else {
                        $scope.modxlsxwarn = true;
                    }
                } else {
                    console.error(response.MsgErr); $scope.msgError = response.MsgErr; window.scrollTo(0, 0);
                }

            };
            uploader.onErrorItem = function (fileItem, response, status, headers) {
                //console.info('onErrorItem', fileItem, response, status, headers);
            };
            uploader.onCancelItem = function (fileItem, response, status, headers) {
                //console.info('onCancelItem', fileItem, response, status, headers);
            };
            uploader.onCompleteItem = function (fileItem, response, status, headers) {
                //console.info('onCompleteItem', fileItem, response, status, headers);
            };


            serviceClientes.getAnios().success(function (data) {
                $scope.aniosInicioContrato = data;
                $scope.msgError = "";
            }).error(function (err) {
                console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
            });
            
            serviceClientes.getRegiones().success(function (regiones) {
                $scope.regiones = regiones;
                $scope.msgError = "";
            }).error(function (err) {
                console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                });

            serviceClientes.getClientes().success(function (clientes) {
                console.log(clientes);
                $scope.lclientes = clientes;
                $scope.msgError = "";
            }).error(function (err) {
                console.error(err);
                $scope.msgError = "Ocurrio un error al intentar obtener los clientes, contacte al administrador del sitio."; window.scrollTo(0, 0); 
            })


            $scope.GenerarPDFCliente = function (idCliente) {
                $window.location.href = Uri() +'/api/Clientes/'+idCliente+'/PDF';
            }

            $scope.GenCantUserPerm = function (data) {
                while (!angular.isUndefined(data) && data.length < 3) {
                    data = "0" + data;
                }
                return data;
            }

            $scope.ShowMdlMotivo = function () {
                $("#delete-modal").modal('toggle');
                $("#mdlMotivo").modal('show');
            }
            //se debe llamar una vez que se seleccione una suite y hay que hacer la busqueda por de modulo by suite
            $scope.CargarModulosBySuite = function (suite) {
                if (!(suite === null)) {
                    serviceClientes.getModulosBySuite(suite).success(function (modulos) {
                        $scope.modulosWinper = modulos;
                        $scope.msgError = "";
                    }).error(function (err) {
                        console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                    });
                }
            }
            
            $scope.SeleccionarTodosModulos = function () {
                $scope.msgSeleccionSuite = "";
                for (var i = 0; i < $scope.modulosWinper.length; i++) {
                    if (!$scope.isSelected($scope.modulosWinper[i].idModulo)) {
                        if($scope.modulosWinper[i].isCore == 1 && $scope.modulosWinper[i].Estado == 'V')
                        $scope.formData.modulos.push($scope.modulosWinper[i]);
                    }
                }
            }

            $scope.LimpiarSeleccionados = function (formData) {
                $scope.msgSeleccionSuite = "";
                if (!angular.isUndefined(formData.suite) && !(formData.suite === null)) {
                    $scope.tmpModulos = [];
                    for (var i = 0; i < $scope.formData.modulos.length; i++) {
                        if ($scope.formData.modulos[i].Suite != formData.suite) {
                            $scope.tmpModulos.push($scope.formData.modulos[i]);
                        }
                    }
                    console.log($scope.tmpModulos.length);
                    if ($scope.tmpModulos.length == $scope.formData.modulos.length) {
                        $scope.msgSeleccionSuite = "No hay módulos en la suite seleccionada.";
                    }
                    $scope.formData.modulos = $scope.tmpModulos;
                } else {
                    $scope.msgSeleccionSuite = "Debe seleccionar una suite.";
                }
            }

            $scope.LimpiarTodosModulos = function () {
                $scope.formData.modulos = [];
            }

            $scope.isSelected = function (idModulo) {
                for (var i = 0; i < $scope.formData.modulos.length; i++) {
                    if ($scope.formData.modulos[i].idModulo == idModulo) {
                        return true;
                    }
                }
                return false;
            }

            serviceClientes.getTrabPlantas().success(function (data) {
                $scope.trabPlantas = data;
            }).error(function (err) {
                console.error(err)
            });

            serviceClientes.getTrabHonorarios().success(function (data) {
                $scope.trabHonorarios = data;
            }).error(function (err) {
                console.error(err)
            });

            serviceClientes.getSuites().success(function (data) {
                $scope.suites = data;
                $scope.msgError = "";
            }).error(function (err) {
                console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
            });
            

            if (!jQuery.isEmptyObject($routeParams)) {
                $scope.idCliente = $routeParams.idCliente;
                $scope.titulo = "Modificar Cliente";
                $scope.labelcreate = "Modificar";

                serviceClientes.getCliente($scope.idCliente).success(function (data) {
                    $scope.formData.rut = data.RutFmt;
                    $scope.formData.nombre = data.Nombre;
                    $scope.formData.direccion = data.Direccion;
                    $scope.formData.region = data.Comuna.Region.idRgn;
                    $scope.formData.licencia = data.NroLicencia;
                    $scope.formData.folio = data.NumFolio;
                    $scope.formData.mescon = data.MesCon;
                    $scope.formData.estmtc = data.EstMtc;
                    $scope.formData.mesini = data.Mesini;
                    $scope.formData.nrotrbc = data.NroTrbc;
                    $scope.formData.nrotrbh = data.NroTrbh;
                    $scope.formData.nrousr = data.NroUsr;
                    $scope.formData.correlativo = data.Correlativo;
                    $scope.formData.estado = data.Estado;
                    console.log(data.Funes);
                    if (data.Funes) {
                        document.getElementById("checkbox1").checked = true;
                    } else {
                        document.getElementById("checkbox1").checked = false;

                    }

                    $scope.CargarModulosCliente($scope.idCliente);

                    serviceClientes.getComunas(data.Comuna.Region.idRgn).success(function (data2) {
                        $scope.comunas = data2;

                        $scope.formData.comuna = data.Comuna.idCmn;
                    });

                    serviceClientes.getUsuarios($scope.idCliente).success(function (data) {
                        $scope.usuarios = data;

                        angular.forEach($scope.usuarios, function (item) {
                            $scope.totales[item.CodPrf - 11]++;
                        });

                    }).error(function (err) {
                        console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                    });

                    serviceClientes.getVersionesClientes($scope.idCliente).success(function (data) {
                        $scope.versionesCliente = data;
                    }).error(function (err) {
                        console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                        });
                    serviceClientes.getVersionesClientesPub($scope.idCliente).success(function (data) {
                        $scope.versionesClientePub = data;
                    }).error(function (err) {
                        console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                    });
                    $scope.msgError = "";
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                });


            } 

            $scope.Comunas = function (formData) {
                serviceClientes.getComunas(formData.region).success(function (data) {
                    $scope.comunas = data;
                });
            }

           

            $scope.ShowConfirm = function () {
                $("#delete-modal").modal('show');
            }


            $scope.ShowConfirmVigente = function () {
                $("#vigente-modal").modal('show');
            }

            $scope.ValidarRut = function (formData) {
                var _value = formData.rut;
                if (_value.length < 2) return;

                _value = _value.replace(/[^0-9kK]+/g, '').toUpperCase();

                var result = _value.slice(-4, -1) + '-' + _value.substr(_value.length - 1);
                for (var i = 4; i < _value.length; i += 3) result = _value.slice(-3 - i, -i) + '' + result;

                formData.rut = result;

                var t = parseInt(_value.slice(0, -1), 10), m = 0, s = 1;
                while (t > 0) {
                    s = (s + t % 10 * (9 - m++ % 6)) % 11;
                    t = Math.floor(t / 10);
                }
                var v = (s > 0) ? (s - 1) + '' : 'K';
                $scope.rutok = (v === _value.slice(-1));
            }

            $scope.SaveEmpresa = function (formData, formValid, rutOk) {
                if (formValid) {
                    if (rutOk) {
                        var arrRut = formData.rut.split('-');
                        console.log(formData.clientes);
                        serviceClientes.addEmpresa(formData.clientes, arrRut[0], arrRut[1], formData.nombre).success(function (data) {
                            $scope.msgError = "";
                            $scope.msgSuccess = "Empresa agregada exitosamente!";
                            window.scrollTo(0, 0);
                        }).error(function (err) {
                            console.error(err); $scope.msgError = "Ocurrio un error durante la creación de una empresa, contacte al administrador del sitio.";
                            window.scrollTo(0, 0);
                        })
                    }
                }
            }

            $scope.SaveCliente = function (formData, formValid, rutOk) {
                $scope.msgAdvertencia = "";
                if (formValid) {
                    if (rutOk) {
                        if ($scope.formData.modulos.length > 0) {
                            var arrRut = formData.rut.split('-');
                            $scope.increate = false;
                            $scope.labelcreate = "Enviando";
                            $scope.msgSuccess = "";
                            if ($scope.idCliente == 0) {
                                console.log(formData.funes);
                                serviceClientes.addCliente(arrRut[0], arrRut[1], formData.nombre, formData.direccion, formData.comuna, formData.licencia, formData.folio, formData.estmtc, formData.mesini, formData.nrotrbc, formData.nrotrbh, formData.nrousr, formData.mescon, formData.correlativo, formData.funes).success(function (data) {
                                    $scope.increate = true;
                                    $scope.labelcreate = "Modificar";
                                    $scope.idCliente = data.Id;
                                    serviceClientes.addModuloCliente(data.Id, $scope.formData.modulos).success(function (dataMod) {
                                        $scope.CargarModulosCliente(data.Id);
                                        $scope.msgError = "";
                                        $scope.msgSuccess = "Cliente creado exitosamente!.";
                                        window.scrollTo(0, 0);
                                    
                                    }).error(function (err) {
                                        console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                                    });
                                }).error(function (err) {
                                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                                });
                            }
                            else {
                                console.log(formData);
                                serviceClientes.updCliente($scope.idCliente, arrRut[0], arrRut[1], formData.nombre, formData.direccion, formData.comuna, formData.licencia, formData.folio, formData.estmtc, formData.mesini, formData.nrotrbc, formData.nrotrbh, formData.nrousr, formData.mescon, formData.correlativo, formData.funes).success(function (data) {
                                    $scope.increate = true;
                                    $scope.labelcreate = "Modificar";
                                    serviceClientes.addModuloCliente($scope.idCliente, $scope.formData.modulos).success(function (data) {
                                        $scope.CargarModulosCliente($scope.idCliente);
                                        $scope.msgError = "";
                                        $scope.msgSuccess = "Cliente modificado exitosamente!.";
                                        window.scrollTo(0, 0);
                                    }).error(function (err) {
                                        console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                                    });
                                }).error(function (err) {
                                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio."; window.scrollTo(0, 0);
                                });
                            }
                        } else {
                            $scope.msgAdvertencia = "Advertencia: No ha seleccionado ningún módulo, debe seleccionar al menos uno."; window.scrollTo(0, 0);
                        }
                    } else {
                        $scope.msgAdvertencia = "Advertencia: Verifique que el rut esté correctamente escrito y validado."; window.scrollTo(0, 0);
                    }
                } else {
                    $scope.msgAdvertencia = "Advertencia: Hay problemas con algunos campos, verifique los datos e intente nuevamente.";window.scrollTo(0, 0);
                }
            }

            $scope.CargarModulosCliente = function (idCliente) {
                serviceClientes.getModulosCliente(idCliente).success(function (data) {
                    $scope.formData.modulos = data;
                    $scope.modulosWinper = $scope.formData.modulos;
                    $scope.msgError = "";
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                });
            }

            $scope.Eliminar = function (est, motivo) {
                $scope.msgSuccess = "";
                serviceClientes.delCliente($scope.idCliente, est, motivo).success(function (data) {
                    $scope.formData.estado = est;
                    $scope.msgError = "";
                    $scope.msgSuccess = "Cambios realizados exitosamente!.";
                    window.scrollTo(0, 0);
                    if(est == 'C')$("#mdlMotivo").modal('toggle');
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                });
            }

            $scope.GenKey = function (formOK, formData) {
                if (formOK) {
                    serviceClientes.getKey(formData.folio.toString().charAt(3), formData.mescon, formData.correlativo, formData.estmtc, formData.mesini, formData.nrotrbc, formData.nrotrbh, formData.nrousr).success(function (data) {
                        formData.licencia = data;
                        $scope.msgError = "";
                    }).error(function (err) {
                        console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                    });
                } else {
                    $("#genkey-modal").modal('show');
                }
            }

            $scope.GenCorrelativo = function () {
                if ($scope.formData.mescon == "01") {
                    $scope.formData.mesini = $scope.mesesInicioMantencion[$scope.mesesInicioMantencion.length - 1].valor;
                } else {
                    for (var i = 0; i < $scope.mesesInicioMantencion.length; i++) {
                        if ($scope.formData.mescon == $scope.mesesInicioMantencion[i].valor) {
                            $scope.formData.mesini = $scope.mesesInicioMantencion[i - 1].valor;
                        }
                    }
                }
                

                if (!(typeof $scope.formData.mescon === "undefined") && !(typeof $scope.formData.folio === "undefined"))
                {
                    serviceClientes.GenCorrelativo($scope.formData.folio, $scope.formData.mescon).success(function (data) {
                        $scope.formData.correlativo = data;
                    }).error(function (err) {
                        console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                    });
                }
                else
                {
                    $scope.formData.correlativo = null;
                }
            }

            $scope.SeleccionDesdeSuite = function (suite) {
                serviceClientes.getModulosDesdeSuite(suite).success(function (data) {
                    $scope.formData.modulos = data;
                }).error(function (err) {
                    console.error(err); $scope.msgError = "Ocurrió un error durante la petición, contacte al administrador del sitio.";window.scrollTo(0,0);
                });
            }
        }

    }
})();
