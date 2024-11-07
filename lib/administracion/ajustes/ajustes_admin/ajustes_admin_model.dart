import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ajustes_admin_widget.dart' show AjustesAdminWidget;
import 'package:flutter/material.dart';

class AjustesAdminModel extends FlutterFlowModel<AjustesAdminWidget> {
  ///  Local state fields for this page.

  TopicsRecord? temaSelected;

  DocumentReference? quizRef;

  ///  State fields for stateful widgets in this page.

  // Model for sidenav component.
  late SidenavModel sidenavModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for movil widget.
  FocusNode? movilFocusNode;
  TextEditingController? movilTextController;
  String? Function(BuildContext, String?)? movilTextControllerValidator;
  // State field(s) for pais widget.
  FocusNode? paisFocusNode;
  TextEditingController? paisTextController;
  String? Function(BuildContext, String?)? paisTextControllerValidator;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    movilFocusNode?.dispose();
    movilTextController?.dispose();

    paisFocusNode?.dispose();
    paisTextController?.dispose();
  }
}
