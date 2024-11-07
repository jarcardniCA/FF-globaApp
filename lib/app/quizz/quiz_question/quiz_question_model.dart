import '/administracion/cursos/asnwer_selection/asnwer_selection_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'quiz_question_widget.dart' show QuizQuestionWidget;
import 'package:flutter/material.dart';

class QuizQuestionModel extends FlutterFlowModel<QuizQuestionWidget> {
  ///  Local state fields for this page.

  int questionSelectIndex = 0;

  int? answerSelectedIndex = -1;

  List<String> answerCuadrantes = [];
  void addToAnswerCuadrantes(String item) => answerCuadrantes.add(item);
  void removeFromAnswerCuadrantes(String item) => answerCuadrantes.remove(item);
  void removeAtIndexFromAnswerCuadrantes(int index) =>
      answerCuadrantes.removeAt(index);
  void insertAtIndexInAnswerCuadrantes(int index, String item) =>
      answerCuadrantes.insert(index, item);
  void updateAnswerCuadrantesAtIndex(int index, Function(String) updateFn) =>
      answerCuadrantes[index] = updateFn(answerCuadrantes[index]);

  ///  State fields for stateful widgets in this page.

  // Models for asnwerSelection dynamic component.
  late FlutterFlowDynamicModels<AsnwerSelectionModel> asnwerSelectionModels;

  @override
  void initState(BuildContext context) {
    asnwerSelectionModels =
        FlutterFlowDynamicModels(() => AsnwerSelectionModel());
  }

  @override
  void dispose() {
    asnwerSelectionModels.dispose();
  }
}
