import '/flutter_flow/flutter_flow_util.dart';
import 'asnwer_selection_widget.dart' show AsnwerSelectionWidget;
import 'package:flutter/material.dart';

class AsnwerSelectionModel extends FlutterFlowModel<AsnwerSelectionWidget> {
  ///  Local state fields for this component.

  List<String> remove = [];
  void addToRemove(String item) => remove.add(item);
  void removeFromRemove(String item) => remove.remove(item);
  void removeAtIndexFromRemove(int index) => remove.removeAt(index);
  void insertAtIndexInRemove(int index, String item) =>
      remove.insert(index, item);
  void updateRemoveAtIndex(int index, Function(String) updateFn) =>
      remove[index] = updateFn(remove[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
