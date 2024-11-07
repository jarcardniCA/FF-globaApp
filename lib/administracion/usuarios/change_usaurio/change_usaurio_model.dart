import '/flutter_flow/flutter_flow_util.dart';
import 'change_usaurio_widget.dart' show ChangeUsaurioWidget;
import 'package:flutter/material.dart';

class ChangeUsaurioModel extends FlutterFlowModel<ChangeUsaurioWidget> {
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
