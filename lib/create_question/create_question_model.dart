import '/administracion/cursos/form_answer/form_answer_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_question_widget.dart' show CreateQuestionWidget;
import 'package:flutter/material.dart';

class CreateQuestionModel extends FlutterFlowModel<CreateQuestionWidget> {
  ///  Local state fields for this page.

  DocumentReference? courseReference;

  List<AnswerStruct> answerList = [];
  void addToAnswerList(AnswerStruct item) => answerList.add(item);
  void removeFromAnswerList(AnswerStruct item) => answerList.remove(item);
  void removeAtIndexFromAnswerList(int index) => answerList.removeAt(index);
  void insertAtIndexInAnswerList(int index, AnswerStruct item) =>
      answerList.insert(index, item);
  void updateAnswerListAtIndex(int index, Function(AnswerStruct) updateFn) =>
      answerList[index] = updateFn(answerList[index]);

  int answerCorrectIndex = 0;

  String answerType = ' ';

  int score = 0;

  DocumentReference? quizDocumentReference;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Model for formAnswer component.
  late FormAnswerModel formAnswerModel;
  // State field(s) for question widget.
  FocusNode? questionFocusNode;
  TextEditingController? questionTextController;
  String? Function(BuildContext, String?)? questionTextControllerValidator;
  String? _questionTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for help widget.
  FocusNode? helpFocusNode;
  TextEditingController? helpTextController;
  String? Function(BuildContext, String?)? helpTextControllerValidator;
  // State field(s) for erroMessage widget.
  FocusNode? erroMessageFocusNode;
  TextEditingController? erroMessageTextController;
  String? Function(BuildContext, String?)? erroMessageTextControllerValidator;

  @override
  void initState(BuildContext context) {
    formAnswerModel = createModel(context, () => FormAnswerModel());
    questionTextControllerValidator = _questionTextControllerValidator;
  }

  @override
  void dispose() {
    formAnswerModel.dispose();
    questionFocusNode?.dispose();
    questionTextController?.dispose();

    helpFocusNode?.dispose();
    helpTextController?.dispose();

    erroMessageFocusNode?.dispose();
    erroMessageTextController?.dispose();
  }
}
