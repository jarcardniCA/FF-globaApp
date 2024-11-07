import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cursos_widget.dart' show CursosWidget;
import 'package:flutter/material.dart';

class CursosModel extends FlutterFlowModel<CursosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sidenav component.
  late SidenavModel sidenavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

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
