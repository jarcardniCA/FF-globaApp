import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'equipo2_widget.dart' show Equipo2Widget;
import 'package:flutter/material.dart';

class Equipo2Model extends FlutterFlowModel<Equipo2Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Equipo2 widget.
  ResultadosRecord? resultado;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ResultadosRecord? resultadofinal;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
