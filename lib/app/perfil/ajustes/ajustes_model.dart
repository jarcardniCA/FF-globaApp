import '/app/inicio/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ajustes_widget.dart' show AjustesWidget;
import 'package:flutter/material.dart';

class AjustesModel extends FlutterFlowModel<AjustesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - usertime] action in Container widget.
  String? time;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
