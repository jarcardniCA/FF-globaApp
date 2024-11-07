import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'usuarios_widget.dart' show UsuariosWidget;
import 'package:flutter/material.dart';

class UsuariosModel extends FlutterFlowModel<UsuariosWidget> {
  ///  Local state fields for this page.

  List<UsersRecord> user = [];
  void addToUser(UsersRecord item) => user.add(item);
  void removeFromUser(UsersRecord item) => user.remove(item);
  void removeAtIndexFromUser(int index) => user.removeAt(index);
  void insertAtIndexInUser(int index, UsersRecord item) =>
      user.insert(index, item);
  void updateUserAtIndex(int index, Function(UsersRecord) updateFn) =>
      user[index] = updateFn(user[index]);

  bool? isShow = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in usuarios widget.
  List<UsersRecord>? listadeusuarios;
  // Model for sidenav component.
  late SidenavModel sidenavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsersRecord>();

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
