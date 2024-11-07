import '/app/inicio/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inicio_simulador_widget.dart' show InicioSimuladorWidget;
import 'package:flutter/material.dart';

class InicioSimuladorModel extends FlutterFlowModel<InicioSimuladorWidget> {
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
