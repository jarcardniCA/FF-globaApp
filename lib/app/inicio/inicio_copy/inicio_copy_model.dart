import '/app/inicio/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inicio_copy_widget.dart' show InicioCopyWidget;
import 'package:flutter/material.dart';

class InicioCopyModel extends FlutterFlowModel<InicioCopyWidget> {
  ///  State fields for stateful widgets in this page.

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
