import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ventas_widget.dart' show VentasWidget;
import 'package:flutter/material.dart';

class VentasModel extends FlutterFlowModel<VentasWidget> {
  ///  Local state fields for this page.

  List<VentasRecord> ventas = [];
  void addToVentas(VentasRecord item) => ventas.add(item);
  void removeFromVentas(VentasRecord item) => ventas.remove(item);
  void removeAtIndexFromVentas(int index) => ventas.removeAt(index);
  void insertAtIndexInVentas(int index, VentasRecord item) =>
      ventas.insert(index, item);
  void updateVentasAtIndex(int index, Function(VentasRecord) updateFn) =>
      ventas[index] = updateFn(ventas[index]);

  bool? isShow = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Ventas widget.
  List<VentasRecord>? listadeusuarios;
  // Model for sidenav component.
  late SidenavModel sidenavModel;
  List<VentasRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<VentasRecord>();

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }
}
