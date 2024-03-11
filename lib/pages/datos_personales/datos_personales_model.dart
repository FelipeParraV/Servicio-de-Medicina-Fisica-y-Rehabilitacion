import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DatosPersonalesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for NombreField widget.
  TextEditingController? nombreFieldController;
  String? Function(BuildContext, String?)? nombreFieldControllerValidator;
  String? _nombreFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio...';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Texto inválido...';
    }
    return null;
  }

  // State field(s) for ApellidoField widget.
  TextEditingController? apellidoFieldController;
  String? Function(BuildContext, String?)? apellidoFieldControllerValidator;
  String? _apellidoFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio...';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Texto inválido...';
    }
    return null;
  }

  // State field(s) for RutField widget.
  TextEditingController? rutFieldController;
  String? Function(BuildContext, String?)? rutFieldControllerValidator;
  String? _rutFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio...';
    }

    if (!RegExp('^[0-9]{8,9}[-|‐]{1}[0-9kK]{1}\$').hasMatch(val)) {
      return 'Texto inválido...';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for SexoRadio widget.
  FormFieldController<String>? sexoRadioValueController;
  // State field(s) for TelefonoField widget.
  TextEditingController? telefonoFieldController;
  String? Function(BuildContext, String?)? telefonoFieldControllerValidator;
  // State field(s) for DireccionField widget.
  TextEditingController? direccionFieldController;
  String? Function(BuildContext, String?)? direccionFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nombreFieldControllerValidator = _nombreFieldControllerValidator;
    apellidoFieldControllerValidator = _apellidoFieldControllerValidator;
    rutFieldControllerValidator = _rutFieldControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    nombreFieldController?.dispose();
    apellidoFieldController?.dispose();
    rutFieldController?.dispose();
    telefonoFieldController?.dispose();
    direccionFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get sexoRadioValue => sexoRadioValueController?.value;
}
