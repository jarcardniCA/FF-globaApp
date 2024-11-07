import '/flutter_flow/flutter_flow_util.dart';
import 'agregar_categoria_widget.dart' show AgregarCategoriaWidget;
import 'package:flutter/material.dart';

class AgregarCategoriaModel extends FlutterFlowModel<AgregarCategoriaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for Orden widget.
  FocusNode? ordenFocusNode;
  TextEditingController? ordenTextController;
  String? Function(BuildContext, String?)? ordenTextControllerValidator;
  String? _ordenTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    ordenTextControllerValidator = _ordenTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    ordenFocusNode?.dispose();
    ordenTextController?.dispose();
  }
}
