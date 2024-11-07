import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'form_answer_copy_widget.dart' show FormAnswerCopyWidget;
import 'package:flutter/material.dart';

class FormAnswerCopyModel extends FlutterFlowModel<FormAnswerCopyWidget> {
  ///  Local state fields for this component.

  List<AnswerStruct> componentAnswerList = [];
  void addToComponentAnswerList(AnswerStruct item) =>
      componentAnswerList.add(item);
  void removeFromComponentAnswerList(AnswerStruct item) =>
      componentAnswerList.remove(item);
  void removeAtIndexFromComponentAnswerList(int index) =>
      componentAnswerList.removeAt(index);
  void insertAtIndexInComponentAnswerList(int index, AnswerStruct item) =>
      componentAnswerList.insert(index, item);
  void updateComponentAnswerListAtIndex(
          int index, Function(AnswerStruct) updateFn) =>
      componentAnswerList[index] = updateFn(componentAnswerList[index]);

  String answerType = ' ';

  List<String> emptyListNODELETE = [];
  void addToEmptyListNODELETE(String item) => emptyListNODELETE.add(item);
  void removeFromEmptyListNODELETE(String item) =>
      emptyListNODELETE.remove(item);
  void removeAtIndexFromEmptyListNODELETE(int index) =>
      emptyListNODELETE.removeAt(index);
  void insertAtIndexInEmptyListNODELETE(int index, String item) =>
      emptyListNODELETE.insert(index, item);
  void updateEmptyListNODELETEAtIndex(int index, Function(String) updateFn) =>
      emptyListNODELETE[index] = updateFn(emptyListNODELETE[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for DropDownCuadrantes widget.
  List<String>? dropDownCuadrantesValue;
  FormFieldController<List<String>>? dropDownCuadrantesValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
