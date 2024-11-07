import '/administracion/cursos/asnwer_selection/asnwer_selection_widget.dart';
import '/administracion/cursos/editar_answer/editar_answer_widget.dart';
import '/administracion/cursos/question_media/question_media_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_cursos_fix_copy_widget.dart' show EditarCursosFixCopyWidget;
import 'package:flutter/material.dart';

class EditarCursosFixCopyModel
    extends FlutterFlowModel<EditarCursosFixCopyWidget> {
  ///  Local state fields for this component.

  DocumentReference? cursosRef;

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

  int score = 10;

  DocumentReference? quizref;

  List<String> emptyListNODELETE = [' '];
  void addToEmptyListNODELETE(String item) => emptyListNODELETE.add(item);
  void removeFromEmptyListNODELETE(String item) =>
      emptyListNODELETE.remove(item);
  void removeAtIndexFromEmptyListNODELETE(int index) =>
      emptyListNODELETE.removeAt(index);
  void insertAtIndexInEmptyListNODELETE(int index, String item) =>
      emptyListNODELETE.insert(index, item);
  void updateEmptyListNODELETEAtIndex(int index, Function(String) updateFn) =>
      emptyListNODELETE[index] = updateFn(emptyListNODELETE[index]);

  List<QuestionStruct> updatedQuestionData = [];
  void addToUpdatedQuestionData(QuestionStruct item) =>
      updatedQuestionData.add(item);
  void removeFromUpdatedQuestionData(QuestionStruct item) =>
      updatedQuestionData.remove(item);
  void removeAtIndexFromUpdatedQuestionData(int index) =>
      updatedQuestionData.removeAt(index);
  void insertAtIndexInUpdatedQuestionData(int index, QuestionStruct item) =>
      updatedQuestionData.insert(index, item);
  void updateUpdatedQuestionDataAtIndex(
          int index, Function(QuestionStruct) updateFn) =>
      updatedQuestionData[index] = updateFn(updatedQuestionData[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for seleccionar_tipo widget.
  String? seleccionarTipoValue;
  FormFieldController<String>? seleccionarTipoValueController;
  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  // Model for editarAnswer component.
  late EditarAnswerModel editarAnswerModel;
  // State field(s) for Mensaje_VAR widget.
  FocusNode? mensajeVARFocusNode;
  TextEditingController? mensajeVARTextController;
  String? Function(BuildContext, String?)? mensajeVARTextControllerValidator;
  // State field(s) for mensaje_incorrecto widget.
  FocusNode? mensajeIncorrectoFocusNode;
  TextEditingController? mensajeIncorrectoTextController;
  String? Function(BuildContext, String?)?
      mensajeIncorrectoTextControllerValidator;
  // Model for editar_questionMedia.
  late QuestionMediaModel editarQuestionMediaModel;
  // Model for editarSelection.
  late AsnwerSelectionModel editarSelectionModel;

  @override
  void initState(BuildContext context) {
    editarAnswerModel = createModel(context, () => EditarAnswerModel());
    editarQuestionMediaModel = createModel(context, () => QuestionMediaModel());
    editarSelectionModel = createModel(context, () => AsnwerSelectionModel());
  }

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    editarAnswerModel.dispose();
    mensajeVARFocusNode?.dispose();
    mensajeVARTextController?.dispose();

    mensajeIncorrectoFocusNode?.dispose();
    mensajeIncorrectoTextController?.dispose();

    editarQuestionMediaModel.dispose();
    editarSelectionModel.dispose();
  }
}
