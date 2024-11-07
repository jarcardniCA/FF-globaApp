import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_sistemas_widget.dart' show EditarSistemasWidget;
import 'package:flutter/material.dart';

class EditarSistemasModel extends FlutterFlowModel<EditarSistemasWidget> {
  ///  Local state fields for this page.

  CategoriasRecord? categSelect;

  DocumentReference? infoCategories;

  ///  State fields for stateful widgets in this page.

  // Model for sidenav component.
  late SidenavModel sidenavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
