import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'suscripciones_widget.dart' show SuscripcionesWidget;
import 'package:flutter/material.dart';

class SuscripcionesModel extends FlutterFlowModel<SuscripcionesWidget> {
  ///  Local state fields for this page.

  List<SuscripcionesRecord> sucrip = [];
  void addToSucrip(SuscripcionesRecord item) => sucrip.add(item);
  void removeFromSucrip(SuscripcionesRecord item) => sucrip.remove(item);
  void removeAtIndexFromSucrip(int index) => sucrip.removeAt(index);
  void insertAtIndexInSucrip(int index, SuscripcionesRecord item) =>
      sucrip.insert(index, item);
  void updateSucripAtIndex(int index, Function(SuscripcionesRecord) updateFn) =>
      sucrip[index] = updateFn(sucrip[index]);

  bool? isShow = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Suscripciones widget.
  List<SuscripcionesRecord>? listadeusuarios;
  // Model for sidenav component.
  late SidenavModel sidenavModel;
  List<SuscripcionesRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Estado widget.
  String? estadoValue;
  FormFieldController<String>? estadoValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SuscripcionesRecord>();

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
