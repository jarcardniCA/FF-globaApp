import '/administracion/cursos/consulta_eliminacion_quiz/consulta_eliminacion_quiz_widget.dart';
import '/administracion/cursos/editar_cursos_fix/editar_cursos_fix_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'quiz_model.dart';
export 'quiz_model.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget({
    super.key,
    required this.questionItem,
    required this.quizz,
    required this.index,
    required this.allQuestionList,
  });

  final QuestionStruct? questionItem;
  final DocumentReference? quizz;
  final int? index;
  final List<QuestionStruct>? allQuestionList;

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  late QuizModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                widget.questionItem!.question,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Montserrat',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Builder(
                  builder: (context) => Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 0.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.edit,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('QUIZ_COMP_edit_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_alert_dialog');
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: EditarCursosFixWidget(
                                quiz: widget.quizz!,
                                quizz: widget.questionItem!,
                                index: widget.index!,
                                allQuestionList: widget.allQuestionList!,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Builder(
                  builder: (context) => Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 8.0,
                      borderWidth: 0.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.delete_sharp,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('QUIZ_COMP_delete_sharp_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_alert_dialog');
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: ConsultaEliminacionQuizWidget(
                                quizz: widget.questionItem!,
                                quiz: widget.quizz!,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
