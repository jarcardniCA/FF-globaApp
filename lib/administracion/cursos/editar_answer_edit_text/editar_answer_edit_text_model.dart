import '/flutter_flow/flutter_flow_util.dart';
import 'editar_answer_edit_text_widget.dart' show EditarAnswerEditTextWidget;
import 'package:flutter/material.dart';

class EditarAnswerEditTextModel
    extends FlutterFlowModel<EditarAnswerEditTextWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for text widget.
  FocusNode? textFocusNode;
  TextEditingController? textTextController;
  String? Function(BuildContext, String?)? textTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFocusNode?.dispose();
    textTextController?.dispose();
  }
}
