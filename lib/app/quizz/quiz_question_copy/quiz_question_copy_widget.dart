import '/administracion/cursos/asnwer_selection/asnwer_selection_widget.dart';
import '/administracion/cursos/question_media/question_media_widget.dart';
import '/app/quizz/question_v_a_r/question_v_a_r_widget.dart';
import '/app/quizz/respuesta_n_o_o_k/respuesta_n_o_o_k_widget.dart';
import '/app/quizz/respuesta_o_k/respuesta_o_k_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'quiz_question_copy_model.dart';
export 'quiz_question_copy_model.dart';

class QuizQuestionCopyWidget extends StatefulWidget {
  const QuizQuestionCopyWidget({
    super.key,
    required this.course,
    required this.topic,
  });

  final String? course;
  final String? topic;

  @override
  State<QuizQuestionCopyWidget> createState() => _QuizQuestionCopyWidgetState();
}

class _QuizQuestionCopyWidgetState extends State<QuizQuestionCopyWidget>
    with TickerProviderStateMixin {
  late QuizQuestionCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizQuestionCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'quizQuestionCopy'});
    animationsMap.addAll({
      'buttonOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: StreamBuilder<List<QuizRecord>>(
            stream: queryQuizRecord(
              queryBuilder: (quizRecord) => quizRecord
                  .where(
                    'courses',
                    isEqualTo: widget.course,
                  )
                  .where(
                    'topic',
                    isEqualTo: widget.topic,
                  ),
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                );
              }
              List<QuizRecord> containerQuizRecordList = snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final containerQuizRecord = containerQuizRecordList.isNotEmpty
                  ? containerQuizRecordList.first
                  : null;

              return Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 17.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final question =
                          containerQuizRecord?.question.toList() ?? [];

                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                              List.generate(question.length, (questionIndex) {
                            final questionItem = question[questionIndex];
                            return Visibility(
                              visible:
                                  _model.questionSelectIndex == questionIndex,
                              child: Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FlutterFlowIconButton(
                                                  borderRadius: 8.0,
                                                  borderWidth: 0.0,
                                                  buttonSize: 30.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .tertiary,
                                                  icon: Icon(
                                                    Icons.close,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    size: 14.0,
                                                  ),
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'QUIZ_QUESTION_COPY_PAGE_close_ICN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'IconButton_backend_call');

                                                    await currentUserReference!
                                                        .update(
                                                            createUsersRecordData(
                                                      lives: FFAppState()
                                                          .userLives,
                                                    ));
                                                    logFirebaseEvent(
                                                        'IconButton_update_app_state');
                                                    FFAppState().userScore =
                                                        valueOrDefault(
                                                            currentUserDocument
                                                                ?.score,
                                                            0);
                                                    FFAppState().userErrors = 0;
                                                    safeSetState(() {});
                                                    logFirebaseEvent(
                                                        'IconButton_navigate_back');
                                                    context.safePop();
                                                  },
                                                ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                  child: LinearPercentIndicator(
                                                    percent: functions
                                                        .getQuizProgress(
                                                            containerQuizRecord!
                                                                .question
                                                                .toList(),
                                                            _model
                                                                .questionSelectIndex),
                                                    width: 120.0,
                                                    lineHeight: 16.0,
                                                    animation: true,
                                                    animateFromLastPercent:
                                                        true,
                                                    progressColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent4,
                                                    barRadius:
                                                        const Radius.circular(40.0),
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 15.0)),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 22.0,
                                                height: 22.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 16.0,
                                                ),
                                              ),
                                              Text(
                                                FFAppState()
                                                    .userLives
                                                    .toString(),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                              Container(
                                                width: 22.0,
                                                height: 22.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  FFIcons.kvector1,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 16.0,
                                                ),
                                              ),
                                              Text(
                                                FFAppState()
                                                    .userScore
                                                    .toString(),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                              if ((questionItem.help !=
                                                          '') &&
                                                  (FFAppState().userLives > 0))
                                                Builder(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'QUIZ_QUESTION_COPY_Image_ml63vc9n_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Image_update_app_state');
                                                      FFAppState().userLives =
                                                          FFAppState()
                                                                  .userLives +
                                                              -1;
                                                      safeSetState(() {});
                                                      logFirebaseEvent(
                                                          'Image_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () =>
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus(),
                                                              child:
                                                                  QuestionVARWidget(
                                                                help:
                                                                    questionItem
                                                                        .help,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/Group_27.png',
                                                        width: 60.0,
                                                        height: 30.0,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              if ((questionItem.help ==
                                                          '') ||
                                                  (FFAppState().userLives == 0))
                                                ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/SIN_VAR.png',
                                                    width: 60.0,
                                                    height: 30.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                            ].divide(const SizedBox(width: 4.0)),
                                          ),
                                        ].divide(const SizedBox(width: 10.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 29.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Pregunta ${functions.getQuestionNumber(_model.questionSelectIndex).toString()}',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                          ),
                                          if (questionItem.type != 'CUADRANTE')
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Container(
                                                decoration: const BoxDecoration(),
                                                child: QuestionMediaWidget(
                                                  key: Key(
                                                      'Keyvu0_${questionIndex}_of_${question.length}'),
                                                  imageUrl:
                                                      questionItem.imageUrl,
                                                  videoUrl:
                                                      questionItem.videoUrl,
                                                ),
                                              ),
                                            ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                questionItem.question,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ].divide(const SizedBox(height: 5.0)),
                                          ),
                                        ].divide(const SizedBox(height: 14.0)),
                                      ),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(),
                                      child: wrapWithModel(
                                        model: _model.asnwerSelectionModels
                                            .getModel(
                                          '${containerQuizRecord.reference.id}_${questionIndex.toString()}',
                                          questionIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: AsnwerSelectionWidget(
                                          key: Key(
                                            'Keyshw_${'${containerQuizRecord.reference.id}_${questionIndex.toString()}'}',
                                          ),
                                          quetionType: questionItem.type,
                                          answerList: questionItem.answerList,
                                          cuadrantesList:
                                              _model.answerCuadrantes,
                                          answerSelectedIndex:
                                              _model.answerSelectedIndex!,
                                          imageCuadrante: questionItem.imageUrl,
                                          full: true,
                                          onSelect:
                                              (answerSelectedIndex) async {
                                            logFirebaseEvent(
                                                'QUIZ_QUESTION_COPY_Container_shwo5lku_CA');
                                            logFirebaseEvent(
                                                'asnwerSelection_update_page_state');
                                            _model.answerSelectedIndex =
                                                answerSelectedIndex;
                                            safeSetState(() {});
                                          },
                                          cuadrantesSelected: (index) async {
                                            logFirebaseEvent(
                                                'QUIZ_QUESTION_COPY_Container_shwo5lku_CA');
                                            if (_model.answerCuadrantes
                                                .contains(index)) {
                                              logFirebaseEvent(
                                                  'asnwerSelection_update_page_state');
                                              _model.removeFromAnswerCuadrantes(
                                                  questionIndex.toString());
                                              safeSetState(() {});
                                            } else {
                                              logFirebaseEvent(
                                                  'asnwerSelection_update_page_state');
                                              _model
                                                  .addToAnswerCuadrantes(index);
                                              safeSetState(() {});
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                    if ((_model.answerSelectedIndex != -1) ||
                                        (_model.answerCuadrantes.isNotEmpty))
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 90.0, 16.0, 20.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'QUIZ_QUESTION_COPY_CheckButton_ON_TAP');
                                            if (questionItem.type ==
                                                'CUADRANTE') {
                                              if (functions
                                                  .checkAnswerCuadrante(
                                                      questionItem.answerList
                                                          .map((e) => e.text)
                                                          .toList(),
                                                      _model.answerCuadrantes
                                                          .toList())) {
                                                logFirebaseEvent(
                                                    'CheckButton_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            RespuestaOKWidget(
                                                          onContinue: () async {
                                                            logFirebaseEvent(
                                                                '_update_app_state');
                                                            FFAppState()
                                                                    .userScore =
                                                                FFAppState()
                                                                        .userScore +
                                                                    questionItem
                                                                        .score;
                                                            safeSetState(() {});
                                                            if (functions
                                                                    .getQuizProgress(
                                                                        containerQuizRecord
                                                                            .question
                                                                            .toList(),
                                                                        _model
                                                                            .questionSelectIndex)
                                                                    .toString() ==
                                                                '1') {
                                                              logFirebaseEvent(
                                                                  '_backend_call');

                                                              await currentUserReference!
                                                                  .update(
                                                                      createUsersRecordData(
                                                                lives: FFAppState()
                                                                    .userLives,
                                                                score: FFAppState()
                                                                    .userScore,
                                                              ));
                                                              logFirebaseEvent(
                                                                  '_update_page_state');
                                                              _model.questionSelectIndex =
                                                                  0;
                                                              _model.answerSelectedIndex =
                                                                  -1;
                                                              _model.answerCuadrantes =
                                                                  [];
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  '_navigate_to');

                                                              context.pushNamed(
                                                                'quizFinish',
                                                                queryParameters:
                                                                    {
                                                                  'course':
                                                                      serializeParam(
                                                                    widget
                                                                        .course,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            } else {
                                                              logFirebaseEvent(
                                                                  '_update_page_state');
                                                              _model.questionSelectIndex =
                                                                  _model.questionSelectIndex +
                                                                      1;
                                                              _model.answerSelectedIndex =
                                                                  -1;
                                                              _model.answerCuadrantes =
                                                                  [];
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              } else {
                                                logFirebaseEvent(
                                                    'CheckButton_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            RespuestaNOOKWidget(
                                                          errorMessage:
                                                              questionItem
                                                                  .errorMessage,
                                                          onBack: () async {
                                                            logFirebaseEvent(
                                                                '_update_page_state');
                                                            _model.answerSelectedIndex =
                                                                -1;
                                                            _model.answerCuadrantes =
                                                                [];
                                                            safeSetState(() {});
                                                          },
                                                          onContinue: () async {
                                                            if (functions
                                                                    .getQuizProgress(
                                                                        containerQuizRecord
                                                                            .question
                                                                            .toList(),
                                                                        _model
                                                                            .questionSelectIndex)
                                                                    .toString() ==
                                                                '1') {
                                                              logFirebaseEvent(
                                                                  '_backend_call');

                                                              await currentUserReference!
                                                                  .update(
                                                                      createUsersRecordData(
                                                                lives: FFAppState()
                                                                    .userLives,
                                                                score: FFAppState()
                                                                    .userScore,
                                                              ));
                                                              logFirebaseEvent(
                                                                  '_update_page_state');
                                                              _model.questionSelectIndex =
                                                                  0;
                                                              _model.answerSelectedIndex =
                                                                  -1;
                                                              _model.answerCuadrantes =
                                                                  [];
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  '_navigate_to');

                                                              context.pushNamed(
                                                                'quizFinish',
                                                                queryParameters:
                                                                    {
                                                                  'course':
                                                                      serializeParam(
                                                                    widget
                                                                        .course,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            } else {
                                                              logFirebaseEvent(
                                                                  '_update_page_state');
                                                              _model.questionSelectIndex =
                                                                  _model.questionSelectIndex +
                                                                      1;
                                                              _model.answerSelectedIndex =
                                                                  -1;
                                                              _model.answerCuadrantes =
                                                                  [];
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }
                                            } else {
                                              if (questionItem
                                                      .answerCorrectIndex ==
                                                  _model.answerSelectedIndex) {
                                                logFirebaseEvent(
                                                    'CheckButton_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            RespuestaOKWidget(
                                                          onContinue: () async {
                                                            logFirebaseEvent(
                                                                '_update_app_state');
                                                            FFAppState()
                                                                    .userScore =
                                                                FFAppState()
                                                                        .userScore +
                                                                    questionItem
                                                                        .score;
                                                            safeSetState(() {});
                                                            if (functions
                                                                    .getQuizProgress(
                                                                        containerQuizRecord
                                                                            .question
                                                                            .toList(),
                                                                        _model
                                                                            .questionSelectIndex)
                                                                    .toString() ==
                                                                '1') {
                                                              logFirebaseEvent(
                                                                  '_backend_call');

                                                              await currentUserReference!
                                                                  .update(
                                                                      createUsersRecordData(
                                                                lives: FFAppState()
                                                                    .userLives,
                                                                score: FFAppState()
                                                                    .userScore,
                                                              ));
                                                              logFirebaseEvent(
                                                                  '_update_page_state');
                                                              _model.questionSelectIndex =
                                                                  0;
                                                              _model.answerSelectedIndex =
                                                                  -1;
                                                              _model.answerCuadrantes =
                                                                  [];
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  '_navigate_to');

                                                              context.pushNamed(
                                                                'quizFinish',
                                                                queryParameters:
                                                                    {
                                                                  'course':
                                                                      serializeParam(
                                                                    widget
                                                                        .course,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            } else {
                                                              logFirebaseEvent(
                                                                  '_update_page_state');
                                                              _model.questionSelectIndex =
                                                                  _model.questionSelectIndex +
                                                                      1;
                                                              _model.answerSelectedIndex =
                                                                  -1;
                                                              _model.answerCuadrantes =
                                                                  [];
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              } else {
                                                logFirebaseEvent(
                                                    'CheckButton_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            RespuestaNOOKWidget(
                                                          errorMessage:
                                                              questionItem
                                                                  .errorMessage,
                                                          onBack: () async {
                                                            logFirebaseEvent(
                                                                '_update_page_state');
                                                            _model.answerSelectedIndex =
                                                                -1;
                                                            _model.answerCuadrantes =
                                                                [];
                                                            safeSetState(() {});
                                                          },
                                                          onContinue: () async {
                                                            if (functions
                                                                    .getQuizProgress(
                                                                        containerQuizRecord
                                                                            .question
                                                                            .toList(),
                                                                        _model
                                                                            .questionSelectIndex)
                                                                    .toString() ==
                                                                '1') {
                                                              logFirebaseEvent(
                                                                  '_backend_call');

                                                              await currentUserReference!
                                                                  .update(
                                                                      createUsersRecordData(
                                                                lives: FFAppState()
                                                                    .userLives,
                                                                score: FFAppState()
                                                                    .userScore,
                                                              ));
                                                              logFirebaseEvent(
                                                                  '_update_page_state');
                                                              _model.questionSelectIndex =
                                                                  0;
                                                              _model.answerSelectedIndex =
                                                                  -1;
                                                              _model.answerCuadrantes =
                                                                  [];
                                                              safeSetState(
                                                                  () {});
                                                              logFirebaseEvent(
                                                                  '_navigate_to');

                                                              context.pushNamed(
                                                                'quizFinish',
                                                                queryParameters:
                                                                    {
                                                                  'course':
                                                                      serializeParam(
                                                                    widget
                                                                        .course,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            } else {
                                                              logFirebaseEvent(
                                                                  '_update_page_state');
                                                              _model.questionSelectIndex =
                                                                  _model.questionSelectIndex +
                                                                      1;
                                                              _model.answerSelectedIndex =
                                                                  -1;
                                                              _model.answerCuadrantes =
                                                                  [];
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                          },
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              }
                                            }
                                          },
                                          text: 'Revisar',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 60.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          showLoadingIndicator: false,
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'buttonOnActionTriggerAnimation1']!,
                                        ),
                                      ),
                                    if ((_model.answerSelectedIndex == -1) &&
                                        (_model.answerCuadrantes.isEmpty))
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 70.0, 16.0, 20.0),
                                        child: FFButtonWidget(
                                          onPressed: true
                                              ? null
                                              : () {
                                                  print(
                                                      'NextButton pressed ...');
                                                },
                                          text: 'Continuar',
                                          options: FFButtonOptions(
                                            width: double.infinity,
                                            height: 60.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                            elevation: 0.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                            disabledColor: const Color(0x1C4C4F57),
                                            disabledTextColor:
                                                const Color(0x584D4F57),
                                          ),
                                          showLoadingIndicator: false,
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'buttonOnActionTriggerAnimation2']!,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
