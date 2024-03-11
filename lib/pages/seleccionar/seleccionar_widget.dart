import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'seleccionar_model.dart';
export 'seleccionar_model.dart';

class SeleccionarWidget extends StatefulWidget {
  const SeleccionarWidget({Key? key}) : super(key: key);

  @override
  _SeleccionarWidgetState createState() => _SeleccionarWidgetState();
}

class _SeleccionarWidgetState extends State<SeleccionarWidget> {
  late SeleccionarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeleccionarModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                var confirmDialogResponse = await showDialog<bool>(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Reinicar tests'),
                          content: Text('¿Desea reiniciar los test?'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext, false),
                              child: Text('Cancelar'),
                            ),
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext, true),
                              child: Text('Confirmar'),
                            ),
                          ],
                        );
                      },
                    ) ??
                    false;
                if (confirmDialogResponse) {
                  context.goNamed('DatosPersonales');

                  // Reiniciar Datos
                  FFAppState().update(() {
                    FFAppState().listaNombres2 = '';
                    FFAppState().listaApellidos2 = '';
                    FFAppState().listaRuts2 = '';
                    FFAppState().listaFechas2 =
                        DateTime.fromMillisecondsSinceEpoch(946738800000);
                    FFAppState().listaSexos2 = '';
                    FFAppState().listaTelefonos2 = '';
                    FFAppState().listaDirecciones2 = '';
                    FFAppState().listaBerg2 = -1;
                    FFAppState().listaBarthel2 = -1;
                    FFAppState().listaTinetti2 = -1;
                    FFAppState().puntajeEquilibrio2 = -1;
                    FFAppState().puntajeMarcha2 = -1;
                    FFAppState().listaFIM2 = -1;
                    FFAppState().FIMmotor2 = -1;
                    FFAppState().FIMcognitivo2 = -1;
                    FFAppState().listaSchwab2 = -1;
                  });
                  FFAppState().update(() {
                    FFAppState().cargandoDatos = false;
                  });
                  FFAppState().update(() {
                    FFAppState().botonHabilitado1 = false;
                    FFAppState().botonHabilitado2 = false;
                    FFAppState().botonHabilitado3 = false;
                    FFAppState().botonHabilitado4 = false;
                    FFAppState().botonHabilitado5 = false;
                  });
                  return;
                } else {
                  return;
                }
              },
            ),
            title: Text(
              'Selecciona el test',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListView(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: FFAppState().botonHabilitado1
                            ? null
                            : () async {
                                context.pushNamed('Berg_1');
                              },
                        text: 'Escala de Berg',
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                          disabledColor: FlutterFlowTheme.of(context).alternate,
                          disabledTextColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: FFAppState().botonHabilitado2
                            ? null
                            : () async {
                                context.pushNamed('Barthel_2');
                              },
                        text: 'Escala de Barthel',
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                          disabledColor: FlutterFlowTheme.of(context).alternate,
                          disabledTextColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: FFAppState().botonHabilitado3
                            ? null
                            : () async {
                                context.pushNamed('Tinetti_3');
                              },
                        text: 'Escala de Tinetti',
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                          disabledColor: FlutterFlowTheme.of(context).alternate,
                          disabledTextColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: FFAppState().botonHabilitado4
                            ? null
                            : () async {
                                context.pushNamed('FIM_4');
                              },
                        text: 'Independencia Funcional',
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                          disabledColor: FlutterFlowTheme.of(context).alternate,
                          disabledTextColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: FFAppState().botonHabilitado5
                            ? null
                            : () async {
                                context.pushNamed('Schwab_England_5');
                              },
                        text: 'Escala Schwab y England',
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(0.0),
                          disabledColor: FlutterFlowTheme.of(context).alternate,
                          disabledTextColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(1.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 16.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  // Ocultar icono cargando
                                  FFAppState().update(() {
                                    FFAppState().cargandoDatos = false;
                                  });
                                  // Aumentar pacientes
                                  FFAppState().update(() {
                                    FFAppState().addToNumeroPacientes(1);
                                  });
                                  // Datos Personales
                                  FFAppState().update(() {
                                    FFAppState().addToListaNombres(
                                        FFAppState().listaNombres2);
                                    FFAppState().addToListaApellidos(
                                        FFAppState().listaApellidos2);
                                    FFAppState().addToListaRuts(
                                        FFAppState().listaRuts2);
                                    FFAppState().addToListaFechas(
                                        FFAppState().listaFechas2!);
                                    FFAppState().addToListaSexos(
                                        FFAppState().listaSexos2);
                                    FFAppState().addToListaTelefonos(
                                        FFAppState().listaTelefonos2);
                                    FFAppState().addToListaDirecciones(
                                        FFAppState().listaDirecciones2);
                                  });
                                  // Resultados Tests
                                  FFAppState().update(() {
                                    FFAppState().addToListaBerg(
                                        FFAppState().listaBerg2);
                                    FFAppState().addToListaBarthel(
                                        FFAppState().listaBarthel2);
                                    FFAppState().addToListaTinetti(
                                        FFAppState().listaTinetti2);
                                    FFAppState().addToPuntajeEquilibrio(
                                        FFAppState().puntajeEquilibrio2);
                                    FFAppState().addToPuntajeMarcha(
                                        FFAppState().puntajeMarcha2);
                                    FFAppState()
                                        .addToListaFIM(FFAppState().listaFIM2);
                                    FFAppState()
                                        .addToFIMmotor(FFAppState().FIMmotor2);
                                    FFAppState().addToFIMcognitivo(
                                        FFAppState().FIMcognitivo2);
                                    FFAppState().addToListaSchwab(
                                        FFAppState().listaSchwab2);
                                  });
                                  // Reiniciar Datos
                                  FFAppState().update(() {
                                    FFAppState().listaNombres2 = '';
                                    FFAppState().listaApellidos2 = '';
                                    FFAppState().listaRuts2 = '';
                                    FFAppState().listaFechas2 =
                                        DateTime.fromMillisecondsSinceEpoch(
                                            946738800000);
                                    FFAppState().listaSexos2 = '';
                                    FFAppState().listaTelefonos2 = '';
                                    FFAppState().listaDirecciones2 = '';
                                    FFAppState().listaBerg2 = -1;
                                    FFAppState().listaBarthel2 = -1;
                                    FFAppState().listaTinetti2 = -1;
                                    FFAppState().puntajeEquilibrio2 = -1;
                                    FFAppState().puntajeMarcha2 = -1;
                                    FFAppState().listaFIM2 = -1;
                                    FFAppState().FIMmotor2 = -1;
                                    FFAppState().FIMcognitivo2 = -1;
                                    FFAppState().listaSchwab2 = -1;
                                  });
                                  // Habilitar Botones
                                  FFAppState().update(() {
                                    FFAppState().botonHabilitado1 = false;
                                    FFAppState().botonHabilitado2 = false;
                                    FFAppState().botonHabilitado3 = false;
                                    FFAppState().botonHabilitado4 = false;
                                    FFAppState().botonHabilitado5 = false;
                                  });

                                  context.pushNamed('Inicio');
                                },
                                text: 'Guardar',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
