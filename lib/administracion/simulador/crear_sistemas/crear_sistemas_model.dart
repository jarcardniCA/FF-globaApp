import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'crear_sistemas_widget.dart' show CrearSistemasWidget;
import 'package:flutter/material.dart';

class CrearSistemasModel extends FlutterFlowModel<CrearSistemasWidget> {
  ///  Local state fields for this page.

  CategoriasRecord? categSelect;

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

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FormacionesRecord? crearEquipo;

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
