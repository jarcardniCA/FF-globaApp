import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_cursos_widget.dart' show EditarCursosWidget;
import 'package:flutter/material.dart';

class EditarCursosModel extends FlutterFlowModel<EditarCursosWidget> {
  ///  Local state fields for this page.

  TopicsRecord? temas;

  ///  State fields for stateful widgets in this page.

  // Model for sidenav component.
  late SidenavModel sidenavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  // State field(s) for order widget.
  FocusNode? orderFocusNode;
  TextEditingController? orderTextController;
  String? Function(BuildContext, String?)? orderTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Custom Action - reorderQuestionItems] action in ListView widget.
  List<QuestionStruct>? updatedList;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();

    orderFocusNode?.dispose();
    orderTextController?.dispose();
  }
}
