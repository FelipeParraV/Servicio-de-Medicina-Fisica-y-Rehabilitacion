import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inicio_model.dart';
export 'inicio_model.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key? key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  late InicioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InicioModel());
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
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              setDarkModeSetting(
                context,
                (Theme.of(context).brightness == Brightness.light)
                    ? ThemeMode.dark
                    : ThemeMode.light,
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).primary,
            elevation: 8.0,
            child: Stack(
              children: [
                if (Theme.of(context).brightness == Brightness.light)
                  Icon(
                    Icons.dark_mode,
                    color: Colors.white,
                    size: 24.0,
                  ),
                if (Theme.of(context).brightness == Brightness.dark)
                  Icon(
                    Icons.light_mode,
                    color: Colors.white,
                    size: 24.0,
                  ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            title: Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Text(
                'Inicio',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                    child: AutoSizeText(
                      'Servicio de Medicina Fisica y Rehabilitación',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).displayMedium,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: Text(
                      'Hospital La Serena',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Outfit',
                                fontWeight: FontWeight.normal,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        FFAppState().update(() {
                          FFAppState().cargandoDatos = true;
                        });
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

                        context.pushNamed('DatosPersonales');
                      },
                      text: 'Nuevo Paciente',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 16.0,
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
                  if (FFAppState().cargandoDatos)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/waiting-icon-gif-1.jpg',
                        width: 60.0,
                        height: 40.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        FFAppState().update(() {
                          FFAppState().cargandoResultados = true;
                        });

                        context.pushNamed('Resultados');
                      },
                      text: 'Resultados',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                  if (FFAppState().cargandoResultados)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/waiting-icon-gif-1.jpg',
                        width: 60.0,
                        height: 40.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                    child: Text(
                      'Hecho por Felipe Ignacio Parra Villarroel',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 18.0,
                          ),
                    ),
                  ),
                  Text(
                    'Universiadad de La Serena',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 18.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
