import '/flutter_flow/flutter_flow_util.dart';
import 'edit_answer_edit_image_widget.dart' show EditAnswerEditImageWidget;
import 'package:flutter/material.dart';

class EditAnswerEditImageModel
    extends FlutterFlowModel<EditAnswerEditImageWidget> {
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
