import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'resultados_model.dart';
export 'resultados_model.dart';

class ResultadosWidget extends StatefulWidget {
  const ResultadosWidget({Key? key}) : super(key: key);

  @override
  _ResultadosWidgetState createState() => _ResultadosWidgetState();
}

class _ResultadosWidgetState extends State<ResultadosWidget> {
  late ResultadosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultadosModel());
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
                context.goNamed('Inicio');

                FFAppState().update(() {
                  FFAppState().cargandoResultados = false;
                });
                FFAppState().update(() {
                  FFAppState().botonHabilitado1 = true;
                  FFAppState().botonHabilitado2 = true;
                  FFAppState().botonHabilitado3 = true;
                  FFAppState().botonHabilitado4 = true;
                  FFAppState().botonHabilitado5 = true;
                });
              },
            ),
            title: Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Text(
                'Resultados',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Builder(
              builder: (context) {
                final casillas = FFAppState().numeroPacientes.toList();
                return ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  scrollDirection: Axis.vertical,
                  itemCount: casillas.length,
                  separatorBuilder: (_, __) => SizedBox(height: 16.0),
                  itemBuilder: (context, casillasIndex) {
                    final casillasItem = casillas[casillasIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Container(
                          width: double.infinity,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          child: ExpandableNotifier(
                            initialExpanded: false,
                            child: ExpandablePanel(
                              header: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  '${FFAppState().listaNombres[casillasIndex]} ${FFAppState().listaApellidos[casillasIndex]}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20.0,
                                      ),
                                ),
                              ),
                              collapsed: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              expanded: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    thickness: 1.0,
                                    indent: 10.0,
                                    endIndent: 10.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Text(
                                            'Datos Paciente',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 26.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'RUT: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                .listaRuts[casillasIndex],
                                            'No especificado...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Fecha de nacimiento: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                                'd/M/y',
                                                FFAppState().listaFechas[
                                                    casillasIndex]),
                                            'No especificado...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Sexo: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState()
                                                .listaSexos[casillasIndex],
                                            'No especificado...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Teléfono: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().listaTelefonos[
                                                        casillasIndex] ==
                                                    ''
                                                ? 'No especificado...'
                                                : FFAppState().listaTelefonos[
                                                    casillasIndex],
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Dirección: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().listaDirecciones[
                                                        casillasIndex] ==
                                                    ''
                                                ? 'No especificado...'
                                                : FFAppState().listaDirecciones[
                                                    casillasIndex],
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    indent: 10.0,
                                    endIndent: 10.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: Text(
                                              'Resultados',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 26.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Escala de Berg',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 20.0,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Resultado: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().listaBerg[
                                                        casillasIndex] ==
                                                    -1
                                                ? 'Sin registro...'
                                                : valueOrDefault<String>(
                                                    FFAppState()
                                                        .listaBerg[
                                                            casillasIndex]
                                                        .toString(),
                                                    'No especificado...',
                                                  ),
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Text(
                                              valueOrDefault<String>(
                                                'Interpretación: ${valueOrDefault<String>(
                                                  () {
                                                    if (FFAppState().listaBerg[
                                                            casillasIndex] >=
                                                        45) {
                                                      return 'El paciente es mayoritariamente independiente en sus movimientos y presenta un bajo riesgo de caídas.';
                                                    } else if ((FFAppState()
                                                                    .listaBerg[
                                                                casillasIndex] >=
                                                            41) &&
                                                        (FFAppState().listaBerg[
                                                                casillasIndex] <=
                                                            44)) {
                                                      return '\tEl paciente es mayoritariamente independiente en sus movimientos, pero conlleva un riesgo significativo de caídas.';
                                                    } else if ((FFAppState()
                                                                    .listaBerg[
                                                                casillasIndex] >=
                                                            21) &&
                                                        (FFAppState().listaBerg[
                                                                casillasIndex] <=
                                                            40)) {
                                                      return '\tEl paciente puede necesitar ayuda para realizar algunas de las tareas de la prueba de equilibrio y, en general, las actividades de la vida diaria. El riesgo de caídas es del 100%.';
                                                    } else if (FFAppState()
                                                                .listaBerg[
                                                            casillasIndex] ==
                                                        -1) {
                                                      return 'Sin interpretación...';
                                                    } else {
                                                      return 'El paciente está en silla de ruedas en este momento o podría estarlo en el futuro y presenta un riesgo de caída del 100%.';
                                                    }
                                                  }(),
                                                  'No especificado...',
                                                )}',
                                                'No especificado...',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Escala de Barthel',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 20.0,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Resultado: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().listaBarthel[
                                                        casillasIndex] ==
                                                    -1
                                                ? 'Sin registro...'
                                                : FFAppState()
                                                    .listaBarthel[casillasIndex]
                                                    .toString(),
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Text(
                                              valueOrDefault<String>(
                                                'Interpretación: ${valueOrDefault<String>(
                                                  () {
                                                    if (FFAppState()
                                                                .listaBarthel[
                                                            casillasIndex] >=
                                                        100) {
                                                      return 'Independencia.';
                                                    } else if ((FFAppState()
                                                                    .listaBarthel[
                                                                casillasIndex] >=
                                                            91) &&
                                                        (FFAppState()
                                                                    .listaBarthel[
                                                                casillasIndex] <=
                                                            99)) {
                                                      return 'Dependencia escasa.';
                                                    } else if ((FFAppState()
                                                                    .listaBarthel[
                                                                casillasIndex] >=
                                                            61) &&
                                                        (FFAppState()
                                                                    .listaBarthel[
                                                                casillasIndex] <=
                                                            90)) {
                                                      return 'Dependencia moderada.';
                                                    } else if ((FFAppState()
                                                                    .listaBarthel[
                                                                casillasIndex] >=
                                                            21) &&
                                                        (FFAppState()
                                                                    .listaBarthel[
                                                                casillasIndex] <=
                                                            60)) {
                                                      return 'Dependencia severa.';
                                                    } else if (FFAppState()
                                                                .listaBarthel[
                                                            casillasIndex] ==
                                                        -1) {
                                                      return 'Sin interpretación...';
                                                    } else {
                                                      return 'Dependencia total.';
                                                    }
                                                  }(),
                                                  'No especificado...',
                                                )}',
                                                'No especificado...',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Escala de Tinetti',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 20.0,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Puntaje de Equilibrio: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().puntajeEquilibrio[
                                                        casillasIndex] ==
                                                    -1
                                                ? 'Sin registro...'
                                                : FFAppState()
                                                    .puntajeEquilibrio[
                                                        casillasIndex]
                                                    .toString(),
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Puntaje de Marcha: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().puntajeMarcha[
                                                        casillasIndex] ==
                                                    -1
                                                ? 'Sin registro...'
                                                : FFAppState()
                                                    .puntajeMarcha[
                                                        casillasIndex]
                                                    .toString(),
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Puntaje Total: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().listaTinetti[
                                                        casillasIndex] ==
                                                    -1
                                                ? 'Sin registro...'
                                                : FFAppState()
                                                    .listaTinetti[casillasIndex]
                                                    .toString(),
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Text(
                                              valueOrDefault<String>(
                                                'Interpretación: ${() {
                                                  if (FFAppState().listaTinetti[
                                                          casillasIndex] >=
                                                      24) {
                                                    return 'Bajo riesgo de caida.';
                                                  } else if ((FFAppState()
                                                                  .listaTinetti[
                                                              casillasIndex] >=
                                                          19) &&
                                                      (FFAppState()
                                                                  .listaTinetti[
                                                              casillasIndex] <=
                                                          23)) {
                                                    return 'Moderado riesgo de caida.';
                                                  } else if (FFAppState()
                                                              .listaTinetti[
                                                          casillasIndex] ==
                                                      -1) {
                                                    return 'Sin interpretación...';
                                                  } else {
                                                    return 'Alto riesgo de caida.';
                                                  }
                                                }()}',
                                                'No especificado...',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Text(
                                              'Medida de Independencia Funcional (FIM)',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 20.0,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'FIM Motor: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().FIMmotor[
                                                        casillasIndex] ==
                                                    -1
                                                ? 'Sin registro...'
                                                : FFAppState()
                                                    .FIMmotor[casillasIndex]
                                                    .toString(),
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'FIM Cognitivo: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().FIMcognitivo[
                                                        casillasIndex] ==
                                                    -1
                                                ? 'Sin registro...'
                                                : FFAppState()
                                                    .FIMcognitivo[casillasIndex]
                                                    .toString(),
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'FIM Total: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            FFAppState().listaFIM[
                                                        casillasIndex] ==
                                                    -1
                                                ? 'Sin registro...'
                                                : FFAppState()
                                                    .listaFIM[casillasIndex]
                                                    .toString(),
                                            'Error...',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Text(
                                              valueOrDefault<String>(
                                                'Interpretación: ${() {
                                                  if (FFAppState().FIMmotor[casillasIndex] ==
                                                      13) {
                                                    return 'El nivel de independencia motora es del 0%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] ==
                                                      14) {
                                                    return 'El nivel de independencia motora es del 10%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      15) {
                                                    return 'El nivel de independencia motora es del 16%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      16) {
                                                    return 'El nivel de independencia motora es del 20%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      17) {
                                                    return 'El nivel de independencia motora es del 22%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      18) {
                                                    return 'El nivel de independencia motora es del 24%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      19) {
                                                    return 'El nivel de independencia motora es del 26%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      20) {
                                                    return 'El nivel de independencia motora es del 27%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      21) {
                                                    return 'El nivel de independencia motora es del 28%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      22) {
                                                    return 'El nivel de independencia motora es del 29%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      23) {
                                                    return 'El nivel de independencia motora es del 30%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      24) {
                                                    return 'El nivel de independencia motora es del 31%';
                                                  } else if (FFAppState().FIMmotor[
                                                          casillasIndex] ==
                                                      25) {
                                                    return 'El nivel de independencia motora es del 32%';
                                                  } else if (FFAppState()
                                                          .FIMmotor[casillasIndex] ==
                                                      26) {
                                                    return 'El nivel de independencia motora es del 33%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 27) {
                                                    return 'El nivel de independencia motora es del 34%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 28) {
                                                    return 'El nivel de independencia motora es del 35%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 29) {
                                                    return 'El nivel de independencia motora es del 35%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 30) {
                                                    return 'El nivel de independencia motora es del 36%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 31) {
                                                    return 'El nivel de independencia motora es del 37%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 32) {
                                                    return 'El nivel de independencia motora es del 37%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 33) {
                                                    return 'El nivel de independencia motora es del 38%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 34) {
                                                    return 'El nivel de independencia motora es del 38%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 35) {
                                                    return 'El nivel de independencia motora es del 39%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 36) {
                                                    return 'El nivel de independencia motora es del 40%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 37) {
                                                    return 'El nivel de independencia motora es del 40%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 38) {
                                                    return 'El nivel de independencia motora es del 41%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 39) {
                                                    return 'El nivel de independencia motora es del 41%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 40) {
                                                    return 'El nivel de independencia motora es del 42%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 41) {
                                                    return 'El nivel de independencia motora es del 42%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 42) {
                                                    return 'El nivel de independencia motora es del 43%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 43) {
                                                    return 'El nivel de independencia motora es del 43%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 44) {
                                                    return 'El nivel de independencia motora es del 44%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 45) {
                                                    return 'El nivel de independencia motora es del 44%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 46) {
                                                    return 'El nivel de independencia motora es del 45%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 47) {
                                                    return 'El nivel de independencia motora es del 45%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 48) {
                                                    return 'El nivel de independencia motora es del 46%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 49) {
                                                    return 'El nivel de independencia motora es del 46%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 50) {
                                                    return 'El nivel de independencia motora es del 47%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 51) {
                                                    return 'El nivel de independencia motora es del 47%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 52) {
                                                    return 'El nivel de independencia motora es del 48%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 53) {
                                                    return 'El nivel de independencia motora es del 48%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 54) {
                                                    return 'El nivel de independencia motora es del 49%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 55) {
                                                    return 'El nivel de independencia motora es del 50%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 56) {
                                                    return 'El nivel de independencia motora es del 50%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 57) {
                                                    return 'El nivel de independencia motora es del 51%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 58) {
                                                    return 'El nivel de independencia motora es del 51%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 59) {
                                                    return 'El nivel de independencia motora es del 52%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 60) {
                                                    return 'El nivel de independencia motora es del 52%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 61) {
                                                    return 'El nivel de independencia motora es del 53%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 62) {
                                                    return 'El nivel de independencia motora es del 53%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 63) {
                                                    return 'El nivel de independencia motora es del 54%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 64) {
                                                    return 'El nivel de independencia motora es del 54%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 65) {
                                                    return 'El nivel de independencia motora es del 55%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 66) {
                                                    return 'El nivel de independencia motora es del 56%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 67) {
                                                    return 'El nivel de independencia motora es del 56%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 68) {
                                                    return 'El nivel de independencia motora es del 57%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 69) {
                                                    return 'El nivel de independencia motora es del 58%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 70) {
                                                    return 'El nivel de independencia motora es del 58%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 71) {
                                                    return 'El nivel de independencia motora es del 59%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 72) {
                                                    return 'El nivel de independencia motora es del 60%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 73) {
                                                    return 'El nivel de independencia motora es del 60%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 74) {
                                                    return 'El nivel de independencia motora es del 61%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 75) {
                                                    return 'El nivel de independencia motora es del 62%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 76) {
                                                    return 'El nivel de independencia motora es del 63%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 77) {
                                                    return 'El nivel de independencia motora es del 63%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 78) {
                                                    return 'El nivel de independencia motora es del 64%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 79) {
                                                    return 'El nivel de independencia motora es del 65%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 80) {
                                                    return 'El nivel de independencia motora es del 66%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 81) {
                                                    return 'El nivel de independencia motora es del 67%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 82) {
                                                    return 'El nivel de independencia motora es del 68%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 83) {
                                                    return 'El nivel de independencia motora es del 70%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 84) {
                                                    return 'El nivel de independencia motora es del 71%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 85) {
                                                    return 'El nivel de independencia motora es del 73%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 86) {
                                                    return 'El nivel de independencia motora es del 74%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 87) {
                                                    return 'El nivel de independencia motora es del 77%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 88) {
                                                    return 'El nivel de independencia motora es del 79%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 89) {
                                                    return 'El nivel de independencia motora es del 83%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 90) {
                                                    return 'El nivel de independencia motora es del 90%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == 91) {
                                                    return 'El nivel de independencia motora es del 100%';
                                                  } else if (FFAppState().FIMmotor[casillasIndex] == -1) {
                                                    return 'Sin interpretación...';
                                                  } else {
                                                    return '[Error]';
                                                  }
                                                }()}',
                                                'No especificado...',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Text(
                                              valueOrDefault<String>(
                                                'Interpretación: ${() {
                                                  if (FFAppState().FIMcognitivo[casillasIndex] ==
                                                      5) {
                                                    return 'El nivel de independencia cognitiva es del 0%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] ==
                                                      6) {
                                                    return 'El nivel de independencia cognitiva es del 12%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      7) {
                                                    return 'El nivel de independencia cognitiva es del 20%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      8) {
                                                    return 'El nivel de independencia cognitiva es del 24%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      9) {
                                                    return 'El nivel de independencia cognitiva es del 28%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      10) {
                                                    return 'El nivel de independencia cognitiva es del 30%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      11) {
                                                    return 'El nivel de independencia cognitiva es del 32%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      12) {
                                                    return 'El nivel de independencia cognitiva es del 34%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      13) {
                                                    return 'El nivel de independencia cognitiva es del 36%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      14) {
                                                    return 'El nivel de independencia cognitiva es del 37%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      15) {
                                                    return 'El nivel de independencia cognitiva es del 39%';
                                                  } else if (FFAppState()
                                                              .FIMcognitivo[
                                                          casillasIndex] ==
                                                      16) {
                                                    return 'El nivel de independencia cognitiva es del 40%';
                                                  } else if (FFAppState()
                                                          .FIMcognitivo[casillasIndex] ==
                                                      17) {
                                                    return 'El nivel de independencia cognitiva es del 42%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 18) {
                                                    return 'El nivel de independencia cognitiva es del 43%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 19) {
                                                    return 'El nivel de independencia cognitiva es del 45%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 20) {
                                                    return 'El nivel de independencia cognitiva es del 46%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 21) {
                                                    return 'El nivel de independencia cognitiva es del 47%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 22) {
                                                    return 'El nivel de independencia cognitiva es del 49%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 23) {
                                                    return 'El nivel de independencia cognitiva es del 50%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 24) {
                                                    return 'El nivel de independencia cognitiva es del 52%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 25) {
                                                    return 'El nivel de independencia cognitiva es del 53%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 26) {
                                                    return 'El nivel de independencia cognitiva es del 55%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 27) {
                                                    return 'El nivel de independencia cognitiva es del 57%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 28) {
                                                    return 'El nivel de independencia cognitiva es del 59%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 29) {
                                                    return 'El nivel de independencia cognitiva es del 62%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 30) {
                                                    return 'El nivel de independencia cognitiva es del 64%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 31) {
                                                    return 'El nivel de independencia cognitiva es del 68%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 32) {
                                                    return 'El nivel de independencia cognitiva es del 72%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 33) {
                                                    return 'El nivel de independencia cognitiva es del 77%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 34) {
                                                    return 'El nivel de independencia cognitiva es del 87%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == 35) {
                                                    return 'El nivel de independencia cognitiva es del 100%';
                                                  } else if (FFAppState().FIMcognitivo[casillasIndex] == -1) {
                                                    return 'Sin interpretación...';
                                                  } else {
                                                    return '[Error]';
                                                  }
                                                }()}',
                                                'No especificado...',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Escala Schwab y England',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 20.0,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Porcentaje: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                        Text(
                                          FFAppState().listaSchwab[
                                                      casillasIndex] ==
                                                  -1
                                              ? 'Sin registro...'
                                              : '${FFAppState().listaSchwab[casillasIndex].toString()}%',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 100.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Text(
                                              valueOrDefault<String>(
                                                'Interpretación: ${valueOrDefault<String>(
                                                  () {
                                                    if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        100) {
                                                      return 'Completamente independiente. Capaz de realizar todas las tareas sin lentitud, dificultad o alteraciones. Esencialmente normal. No aprecia ninguna dificultad.';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        90) {
                                                      return 'Completamente independiente. Capaz de realizar todas las tareas con cierto grado de lentitud, dificultad o alteración. Puede tardar el doble. Comienza a ser consciente de sus dificultad. ';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        80) {
                                                      return 'Completamente independiente para realizar la mayor parte de las tareas. Tarda el doble. Consciente de sus dificultades y lentitud.';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        70) {
                                                      return 'No es totalmente independiente. Mayor dificultad con ciertas tareas. En algunas tarda tres o cuatro veces el tiempo habitual. Tiene que invertir gran parte del día en realizar las tareas.';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        60) {
                                                      return 'Cierto grado de dependencia. Puede realizar la mayor parte de las tareas, pero con mucha lentitud y mucho esfuerzo. Errores; algunas tareas imposibles.';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        50) {
                                                      return 'Más dependiente. Ayuda para la mitad de las actividades. Más lento, etc. Dificultades con todo.';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        40) {
                                                      return 'Muy dependiente. Puede ayudar en todas las tareas, pero pocas las logra hacer solo.';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        30) {
                                                      return 'Con esfuerzo, de vez en cuando hace unas pocas actividades solo o las empieza solo. Necesita mucha ayuda.';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        20) {
                                                      return 'No hace nada solo. Puede ayudar algo en algunas actividades. Muy inválido.';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        10) {
                                                      return 'Totalmente dependiente, indefenso. Completamente inválido';
                                                    } else if (FFAppState()
                                                                .listaSchwab[
                                                            casillasIndex] ==
                                                        -1) {
                                                      return 'Sin interpretación...';
                                                    } else {
                                                      return 'No mantiene adecuadamente funciones vegetativas como la deglución, función vesical o intestinal. Encamado.';
                                                    }
                                                  }(),
                                                  'No especificado...',
                                                )}',
                                                'No especificado...',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 16.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 8.0),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            icon: Icon(
                                              Icons.delete,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              FFAppState().update(() {
                                                FFAppState()
                                                    .removeAtIndexFromNumeroPacientes(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaNombres(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaApellidos(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaRuts(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaFechas(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaSexos(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaTelefonos(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaDirecciones(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaBerg(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaBarthel(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaTinetti(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaFIM(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromListaSchwab(
                                                        casillasIndex);
                                                FFAppState().borrarRetroceder =
                                                    FFAppState()
                                                            .borrarRetroceder +
                                                        -1;
                                                FFAppState()
                                                    .removeAtIndexFromPuntajeEquilibrio(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromPuntajeMarcha(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromFIMmotor(
                                                        casillasIndex);
                                                FFAppState()
                                                    .removeAtIndexFromFIMcognitivo(
                                                        casillasIndex);
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              theme: ExpandableThemeData(
                                tapHeaderToExpand: true,
                                tapBodyToExpand: false,
                                tapBodyToCollapse: false,
                                headerAlignment:
                                    ExpandablePanelHeaderAlignment.top,
                                hasIcon: true,
                                iconColor:
                                    FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
