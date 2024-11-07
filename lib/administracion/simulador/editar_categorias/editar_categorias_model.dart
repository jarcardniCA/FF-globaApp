import '/flutter_flow/flutter_flow_util.dart';
import 'editar_categorias_widget.dart' show EditarCategoriasWidget;
import 'package:flutter/material.dart';

class EditarCategoriasModel extends FlutterFlowModel<EditarCategoriasWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Orden widget.
  FocusNode? ordenFocusNode;
  TextEditingController? ordenTextController;
  String? Function(BuildContext, String?)? ordenTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    ordenFocusNode?.dispose();
    ordenTextController?.dispose();
  }
}
