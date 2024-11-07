import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'agregar_datos_combinacion_widget.dart'
    show AgregarDatosCombinacionWidget;
import 'package:flutter/material.dart';

class AgregarDatosCombinacionModel
    extends FlutterFlowModel<AgregarDatosCombinacionWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es obligatorio';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es obligatorio';
    }

    return null;
  }

  // State field(s) for Orden widget.
  FocusNode? ordenFocusNode;
  TextEditingController? ordenTextController;
  String? Function(BuildContext, String?)? ordenTextControllerValidator;
  String? _ordenTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es obligatorio';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ResultadoCombinacionRecord? agregarFor;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    ordenTextControllerValidator = _ordenTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    ordenFocusNode?.dispose();
    ordenTextController?.dispose();
  }
}
