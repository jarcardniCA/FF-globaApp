import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'equipo1_widget.dart' show Equipo1Widget;
import 'package:flutter/material.dart';

class Equipo1Model extends FlutterFlowModel<Equipo1Widget> {
  ///  Local state fields for this page.

  String? image;

  FormacionesRecord? form;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
