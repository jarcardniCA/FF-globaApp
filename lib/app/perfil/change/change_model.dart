import '/flutter_flow/flutter_flow_util.dart';
import 'change_widget.dart' show ChangeWidget;
import 'package:flutter/material.dart';

class ChangeModel extends FlutterFlowModel<ChangeWidget> {
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
