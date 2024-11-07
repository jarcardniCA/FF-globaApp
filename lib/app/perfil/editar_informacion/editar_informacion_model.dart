import '/flutter_flow/flutter_flow_util.dart';
import 'editar_informacion_widget.dart' show EditarInformacionWidget;
import 'package:flutter/material.dart';

class EditarInformacionModel extends FlutterFlowModel<EditarInformacionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  String? Function(BuildContext, String?)? celularTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    celularFocusNode?.dispose();
    celularTextController?.dispose();
  }
}
