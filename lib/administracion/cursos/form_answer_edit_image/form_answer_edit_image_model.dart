import '/flutter_flow/flutter_flow_util.dart';
import 'form_answer_edit_image_widget.dart' show FormAnswerEditImageWidget;
import 'package:flutter/material.dart';

class FormAnswerEditImageModel
    extends FlutterFlowModel<FormAnswerEditImageWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
