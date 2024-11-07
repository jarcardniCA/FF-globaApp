import '/administracion/cursos/asnwer_selection/asnwer_selection_widget.dart';
import '/administracion/cursos/form_answer/form_answer_widget.dart';
import '/administracion/cursos/question_media/question_media_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'creador_cursos_fix_copy_widget.dart' show CreadorCursosFixCopyWidget;
import 'package:flutter/material.dart';

class CreadorCursosFixCopyModel
    extends FlutterFlowModel<CreadorCursosFixCopyWidget> {
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

  ///  State fields for stateful widgets in this component.

  // State field(s) for seleccionar_tipo widget.
  String? seleccionarTipoValue;
  FormFieldController<String>? seleccionarTipoValueController;
  // State field(s) for titulo widget.
  FocusNode? tituloFocusNode;
  TextEditingController? tituloTextController;
  String? Function(BuildContext, String?)? tituloTextControllerValidator;
  // Model for formAnswer component.
  late FormAnswerModel formAnswerModel;
  // State field(s) for Mensaje_VAR widget.
  FocusNode? mensajeVARFocusNode;
  TextEditingController? mensajeVARTextController;
  String? Function(BuildContext, String?)? mensajeVARTextControllerValidator;
  // State field(s) for mensaje_incorrecto widget.
  FocusNode? mensajeIncorrectoFocusNode;
  TextEditingController? mensajeIncorrectoTextController;
  String? Function(BuildContext, String?)?
      mensajeIncorrectoTextControllerValidator;
  // Model for questionMedia component.
  late QuestionMediaModel questionMediaModel;
  // Model for asnwerSelection component.
  late AsnwerSelectionModel asnwerSelectionModel;

  @override
  void initState(BuildContext context) {
    formAnswerModel = createModel(context, () => FormAnswerModel());
    questionMediaModel = createModel(context, () => QuestionMediaModel());
    asnwerSelectionModel = createModel(context, () => AsnwerSelectionModel());
  }

  @override
  void dispose() {
    tituloFocusNode?.dispose();
    tituloTextController?.dispose();

    formAnswerModel.dispose();
    mensajeVARFocusNode?.dispose();
    mensajeVARTextController?.dispose();

    mensajeIncorrectoFocusNode?.dispose();
    mensajeIncorrectoTextController?.dispose();

    questionMediaModel.dispose();
    asnwerSelectionModel.dispose();
  }
}
