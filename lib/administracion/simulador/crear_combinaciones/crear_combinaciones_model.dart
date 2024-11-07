import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_combinaciones_widget.dart' show CrearCombinacionesWidget;
import 'package:flutter/material.dart';

class CrearCombinacionesModel
    extends FlutterFlowModel<CrearCombinacionesWidget> {
  ///  Local state fields for this page.

  CategoriasResultadosRecord? categ;

  ///  State fields for stateful widgets in this page.

  // Model for sidenav component.
  late SidenavModel sidenavModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ResultadosRecord? combinacion;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
  }
}
