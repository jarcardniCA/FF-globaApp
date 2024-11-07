import '/flutter_flow/flutter_flow_util.dart';
import 'editar_tema_widget.dart' show EditarTemaWidget;
import 'package:flutter/material.dart';

class EditarTemaModel extends FlutterFlowModel<EditarTemaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for order widget.
  FocusNode? orderFocusNode;
  TextEditingController? orderTextController;
  String? Function(BuildContext, String?)? orderTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    orderFocusNode?.dispose();
    orderTextController?.dispose();
  }
}
