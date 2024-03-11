import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'schwab_england5_model.dart';
export 'schwab_england5_model.dart';

class SchwabEngland5Widget extends StatefulWidget {
  const SchwabEngland5Widget({Key? key}) : super(key: key);

  @override
  _SchwabEngland5WidgetState createState() => _SchwabEngland5WidgetState();
}

class _SchwabEngland5WidgetState extends State<SchwabEngland5Widget> {
  late SchwabEngland5Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SchwabEngland5Model());
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
                context.goNamed('Seleccionar');
              },
            ),
            title: Text(
              'Escala Schwab y England',
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
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
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
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 0.0, 0.0),
                              child: Text(
                                '1. NIVEL DE INDEPENDENCIA',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
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
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Divider(
                                    thickness: 1.0,
                                    indent: 10.0,
                                    endIndent: 10.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.00, 0.00),
                                  child: FlutterFlowRadioButton(
                                    options: [
                                      '(100%) Completamente independiente. Capaz de realizar todas las tareas sin lentitud, dificultad o alteraciones. Esencialmente normal. No aprecia ninguna dificultad.',
                                      '(90%) Completamente independiente. Capaz de realizar todas las tareas con cierto grado de lentitud, dificultad o alteración. Puede tardar el doble. Comienza a ser consciente de sus dificultad.',
                                      '(80%) Completamente independiente para realizar la mayor parte de las tareas. Tarda el doble. Consciente de sus dificultades y lentitud.',
                                      '(70%) No es totalmente independiente. Mayor dificultad con ciertas tareas. En algunas tarda tres o cuatro veces el tiempo habitual. Tiene que invertir gran parte del día en realizar las tareas.',
                                      '(60%) Cierto grado de dependencia. Puede realizar la mayor parte de las tareas, pero con mucha lentitud y mucho esfuerzo. Errores; algunas tareas imposibles.',
                                      '(50%) Más dependiente. Ayuda para la mitad de las actividades. Más lento, etc. Dificultades con todo.',
                                      '(40%) Muy dependiente. Puede ayudar en todas las tareas, pero pocas las logra hacer solo.',
                                      '(30%) Con esfuerzo, de vez en cuando hace unas pocas actividades solo o las empieza solo. Necesita mucha ayuda.',
                                      '(20%) No hace nada solo. Puede ayudar algo en algunas actividades. Muy inválido.',
                                      '(10%) Totalmente dependiente, indefenso. Completamente inválido.',
                                      '(0%) No mantiene adecuadamente funciones vegetativas como la deglución, función vesical o intestinal. Encamado.'
                                    ].toList(),
                                    onChanged: (val) => setState(() {}),
                                    controller:
                                        _model.radioButtonValueController ??=
                                            FormFieldController<String>(null),
                                    optionHeight: 100.0,
                                    optionWidth:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    selectedTextStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    buttonPosition: RadioButtonPosition.left,
                                    direction: Axis.vertical,
                                    radioButtonColor:
                                        FlutterFlowTheme.of(context).primary,
                                    inactiveRadioButtonColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    toggleable: false,
                                    horizontalAlignment: WrapAlignment.start,
                                    verticalAlignment: WrapCrossAlignment.start,
                                  ),
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
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                    child: Row(
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
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if (_model.radioButtonValue == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Responde la pregunta 1...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    return;
                                  }
                                  // Asignar Resultado
                                  FFAppState().update(() {
                                    FFAppState().listaSchwab2 = () {
                                      if (_model.radioButtonValue ==
                                          '(100%) Completamente independiente. Capaz de realizar todas las tareas sin lentitud, dificultad o alteraciones. Esencialmente normal. No aprecia ninguna dificultad.') {
                                        return 100;
                                      } else if (_model.radioButtonValue ==
                                          '(90%) Completamente independiente. Capaz de realizar todas las tareas con cierto grado de lentitud, dificultad o alteración. Puede tardar el doble. Comienza a ser consciente de sus dificultad.') {
                                        return 90;
                                      } else if (_model.radioButtonValue ==
                                          '(80%) Completamente independiente para realizar la mayor parte de las tareas. Tarda el doble. Consciente de sus dificultades y lentitud.') {
                                        return 80;
                                      } else if (_model.radioButtonValue ==
                                          '(70%) No es totalmente independiente. Mayor dificultad con ciertas tareas. En algunas tarda tres o cuatro veces el tiempo habitual. Tiene que invertir gran parte del día en realizar las tareas.') {
                                        return 70;
                                      } else if (_model.radioButtonValue ==
                                          '(60%) Cierto grado de dependencia. Puede realizar la mayor parte de las tareas, pero con mucha lentitud y mucho esfuerzo. Errores; algunas tareas imposibles.') {
                                        return 60;
                                      } else if (_model.radioButtonValue ==
                                          '(50%) Más dependiente. Ayuda para la mitad de las actividades. Más lento, etc. Dificultades con todo.') {
                                        return 50;
                                      } else if (_model.radioButtonValue ==
                                          '(40%) Muy dependiente. Puede ayudar en todas las tareas, pero pocas las logra hacer solo.') {
                                        return 40;
                                      } else if (_model.radioButtonValue ==
                                          '(30%) Con esfuerzo, de vez en cuando hace unas pocas actividades solo o las empieza solo. Necesita mucha ayuda.') {
                                        return 30;
                                      } else if (_model.radioButtonValue ==
                                          '(20%) No hace nada solo. Puede ayudar algo en algunas actividades. Muy inválido.') {
                                        return 20;
                                      } else if (_model.radioButtonValue ==
                                          '(10%) Totalmente dependiente, indefenso. Completamente inválido.') {
                                        return 10;
                                      } else {
                                        return 0;
                                      }
                                    }();
                                  });
                                  // Deshabilitar Botón
                                  FFAppState().update(() {
                                    FFAppState().botonHabilitado5 = true;
                                  });

                                  context.goNamed('Seleccionar');
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
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
