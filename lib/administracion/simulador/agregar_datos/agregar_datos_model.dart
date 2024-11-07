import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'agregar_datos_widget.dart' show AgregarDatosWidget;
import 'package:flutter/material.dart';

class AgregarDatosModel extends FlutterFlowModel<AgregarDatosWidget> {
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

  // State field(s) for Order widget.
  FocusNode? orderFocusNode;
  TextEditingController? orderTextController;
  String? Function(BuildContext, String?)? orderTextControllerValidator;
  String? _orderTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo es obligatorio';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InformacionCategoriaRecord? agregarTema;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    orderTextControllerValidator = _orderTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    orderFocusNode?.dispose();
    orderTextController?.dispose();
  }
}
