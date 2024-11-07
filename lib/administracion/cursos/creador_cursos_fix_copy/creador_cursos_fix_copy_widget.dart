import '/administracion/cursos/asnwer_selection/asnwer_selection_widget.dart';
import '/administracion/cursos/form_answer/form_answer_widget.dart';
import '/administracion/cursos/question_media/question_media_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'creador_cursos_fix_copy_model.dart';
export 'creador_cursos_fix_copy_model.dart';

class CreadorCursosFixCopyWidget extends StatefulWidget {
  const CreadorCursosFixCopyWidget({
    super.key,
    required this.quiz,
    required this.quizAnswer,
  });

  final DocumentReference? quiz;
  final QuestionStruct? quizAnswer;

  @override
  State<CreadorCursosFixCopyWidget> createState() =>
      _CreadorCursosFixCopyWidgetState();
}

class _CreadorCursosFixCopyWidgetState
    extends State<CreadorCursosFixCopyWidget> {
  late CreadorCursosFixCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreadorCursosFixCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREADOR_CURSOS_FIX_COPY_creador_cursosFi');
      logFirebaseEvent('creador_cursosFixCopy_set_form_field');
      safeSetState(() {
        _model.seleccionarTipoValueController?.value =
            'Opción múltiple con multimedia';
      });
      logFirebaseEvent('creador_cursosFixCopy_update_component_s');
      _model.answerList =
          widget.quizAnswer!.answerList.toList().cast<AnswerStruct>();
      _model.answerType = widget.quizAnswer!.type;
      _model.answerCorrectIndex = widget.quizAnswer!.answerCorrectIndex;
      _model.updatePage(() {});
      logFirebaseEvent('creador_cursosFixCopy_update_app_state');

      FFAppState().update(() {});
    });

    _model.tituloTextController ??=
        TextEditingController(text: widget.quizAnswer?.question);
    _model.tituloFocusNode ??= FocusNode();

    _model.mensajeVARTextController ??= TextEditingController();
    _model.mensajeVARFocusNode ??= FocusNode();

    _model.mensajeIncorrectoTextController ??= TextEditingController();
    _model.mensajeIncorrectoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 1214.0,
      height: 1177.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      decoration: const BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  77.0, 44.0, 0.0, 0.0),
                              child: Text(
                                'Editar Quiz',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 36.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  74.0, 38.0, 0.0, 34.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    FlutterFlowDropDown<String>(
                                      controller: _model
                                              .seleccionarTipoValueController ??=
                                          FormFieldController<String>(null),
                                      options: List<String>.from([
                                        'SIMPLE_SELECTION',
                                        'IMAGE_SELECTION',
                                        'TRUE_FALSE',
                                        'CUADRANTE',
                                        'SIMPLE_SELECTION_IMAGE',
                                        'SIMPLE_SELECTION_IMAGE',
                                        'IMAGE_SELECTION'
                                      ]),
                                      optionLabels: const [
                                        'Opción múltiple',
                                        'Seleccionar imagenes',
                                        'Verdadero',
                                        'Múltiples cuadrantes',
                                        '  ',
                                        'Opción múltiple con multimedia',
                                        'Opción múltiple con imagenes'
                                      ],
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.seleccionarTipoValue = val);
                                        logFirebaseEvent(
                                            'CREADOR_CURSOS_FIX_COPY_seleccionar_tipo');
                                        logFirebaseEvent(
                                            'seleccionar_tipo_update_component_state');
                                        _model.answerType =
                                            _model.seleccionarTipoValue!;
                                        safeSetState(() {});
                                      },
                                      width: 447.0,
                                      height: 47.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Seleccionar',
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 34.0, 0.0, 11.0),
                                    child: Text(
                                      'Título de la pregunta',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: SizedBox(
                                      width: 447.0,
                                      child: TextFormField(
                                        controller: _model.tituloTextController,
                                        focusNode: _model.tituloFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.tituloTextController',
                                          const Duration(milliseconds: 1000),
                                          () => safeSetState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Titulo',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        validator: _model
                                            .tituloTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  75.0, 0.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.formAnswerModel,
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: FormAnswerWidget(
                                  answerType: valueOrDefault<String>(
                                    _model.answerType,
                                    '*1',
                                  ),
                                  answerCorrectIndex: valueOrDefault<int>(
                                    _model.answerCorrectIndex,
                                    0,
                                  ),
                                  elegirTypo: valueOrDefault<String>(
                                    _model.answerType,
                                    '*5',
                                  ),
                                  answerList: _model.answerList,
                                  onAnswerTypeChange: (answerType, score,
                                      answerCorrectIndex) async {
                                    logFirebaseEvent(
                                        'CREADOR_CURSOS_FIX_COPY_Container_baqddd');
                                    logFirebaseEvent(
                                        'formAnswer_update_component_state');
                                    _model.answerType = answerType;
                                    _model.score = score;
                                    _model.answerCorrectIndex =
                                        answerCorrectIndex;
                                    safeSetState(() {});
                                  },
                                  onSelectAnswerCorrect:
                                      (answerCorrectIndex) async {
                                    logFirebaseEvent(
                                        'CREADOR_CURSOS_FIX_COPY_Container_baqddd');
                                    logFirebaseEvent(
                                        'formAnswer_update_component_state');
                                    _model.answerCorrectIndex =
                                        answerCorrectIndex;
                                    safeSetState(() {});
                                  },
                                  onChangeAnswerList: (answerList) async {
                                    logFirebaseEvent(
                                        'CREADOR_CURSOS_FIX_COPY_Container_baqddd');
                                    logFirebaseEvent(
                                        'formAnswer_update_component_state');
                                    _model.answerList = answerList
                                        .toList()
                                        .cast<AnswerStruct>();
                                    _model.updatePage(() {});
                                  },
                                  onChangeAnswer: (answer, index) async {
                                    logFirebaseEvent(
                                        'CREADOR_CURSOS_FIX_COPY_Container_baqddd');
                                    logFirebaseEvent(
                                        'formAnswer_update_component_state');
                                    _model.updateAnswerListAtIndex(
                                      index,
                                      (_) => answer,
                                    );
                                    _model.updatePage(() {});
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  74.0, 34.0, 0.0, 50.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 11.0),
                                    child: Text(
                                      'VAR',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 447.0,
                                    child: TextFormField(
                                      controller:
                                          _model.mensajeVARTextController,
                                      focusNode: _model.mensajeVARFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                10.0, 0.0, 0.0, 0.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                      validator: _model
                                          .mensajeVARTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 34.0, 0.0, 11.0),
                                    child: Text(
                                      'Mensaje para repuesta incorrecta',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 447.0,
                                    child: TextFormField(
                                      controller: _model
                                          .mensajeIncorrectoTextController,
                                      focusNode:
                                          _model.mensajeIncorrectoFocusNode,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                10.0, 0.0, 0.0, 0.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            letterSpacing: 0.0,
                                          ),
                                      validator: _model
                                          .mensajeIncorrectoTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 541.0,
                      height: 1000.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 60.0, 0.0, 30.0),
                                child: Container(
                                  width: 390.0,
                                  height: 810.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Status_Bar.png',
                                            width: double.infinity,
                                            height: 44.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 8.0,
                                                      borderWidth: 0.0,
                                                      buttonSize: 30.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      icon: Icon(
                                                        Icons.close,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 14.0,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                                    ),
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child:
                                                          LinearPercentIndicator(
                                                        percent: 0.2,
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
                                                            const Radius.circular(
                                                                40.0),
                                                        padding:
                                                            EdgeInsets.zero,
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 15.0)),
                                                ),
                                              ),
                                              Flexible(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: 22.0,
                                                      height: 22.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        size: 16.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      FFAppState()
                                                          .userLives
                                                          .toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Icon(
                                                        FFIcons.kvector1,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 16.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      FFAppState()
                                                          .userScore
                                                          .toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    ClipRRect(
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
                                                  ].divide(
                                                      const SizedBox(width: 4.0)),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 29.0, 16.0, 60.0),
                                          child: SingleChildScrollView(
                                            primary: false,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Pregunta ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  _model.tituloTextController
                                                      .text,
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                if (_model.answerType !=
                                                    'CUADRANTE')
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .questionMediaModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            QuestionMediaWidget(
                                                          imageUrl: _model
                                                              .formAnswerModel
                                                              .uploadedFileUrl3,
                                                          videoUrl: _model
                                                              .formAnswerModel
                                                              .uploadedFileUrl2,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .asnwerSelectionModel,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    updateOnChange: true,
                                                    child:
                                                        AsnwerSelectionWidget(
                                                      quetionType:
                                                          _model.answerType,
                                                      answerList:
                                                          _model.answerList,
                                                      cuadrantesList: _model
                                                                      .formAnswerModel
                                                                      .dropDownCuadrantesValue !=
                                                                  null &&
                                                              (_model.formAnswerModel
                                                                      .dropDownCuadrantesValue)!
                                                                  .isNotEmpty
                                                          ? _model
                                                              .formAnswerModel
                                                              .dropDownCuadrantesValue
                                                          : _model
                                                              .emptyListNODELETE,
                                                      answerSelectedIndex: _model
                                                          .answerCorrectIndex,
                                                      imageCuadrante: _model
                                                          .formAnswerModel
                                                          .uploadedFileUrl1,
                                                      full: false,
                                                      onSelect:
                                                          (answerSelectedIndex) async {
                                                        logFirebaseEvent(
                                                            'CREADOR_CURSOS_FIX_COPY_Container_s6o148');
                                                        logFirebaseEvent(
                                                            'asnwerSelection_update_component_state');
                                                        _model.answerCorrectIndex =
                                                            answerSelectedIndex!;
                                                        safeSetState(() {});
                                                      },
                                                      cuadrantesSelected:
                                                          (index) async {},
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(height: 14.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 49.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'CREADOR_CURSOS_FIX_COPY_CANCELAR_BTN_ON_');
                    logFirebaseEvent('Button_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                  text: 'Cancelar',
                  options: FFButtonOptions(
                    width: 222.0,
                    height: 54.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 49.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent(
                        'CREADOR_CURSOS_FIX_COPY_GUARDAR_BTN_ON_T');
                    if (_model.answerType == 'CUADRANTE') {
                      logFirebaseEvent('Button_backend_call');

                      await widget.quiz!.update({
                        ...mapToFirestore(
                          {
                            'question': FieldValue.arrayUnion([
                              getQuestionFirestoreData(
                                updateQuestionStruct(
                                  QuestionStruct(
                                    question: _model.tituloTextController.text,
                                    score: _model.score,
                                    help: _model.mensajeVARTextController.text,
                                    imageUrl:
                                        _model.formAnswerModel.uploadedFileUrl1,
                                    videoUrl:
                                        _model.formAnswerModel.uploadedFileUrl2,
                                    errorMessage: _model
                                        .mensajeIncorrectoTextController.text,
                                    type: _model.answerType,
                                    answerList: functions.listAnswersCuadrantes(
                                        _model.formAnswerModel
                                            .dropDownCuadrantesValue!
                                            .toList()),
                                    answerCorrectIndex:
                                        _model.answerCorrectIndex,
                                    estado: true,
                                  ),
                                  clearUnsetFields: false,
                                ),
                                true,
                              )
                            ]),
                          },
                        ),
                      });
                    } else {
                      logFirebaseEvent('Button_backend_call');

                      await widget.quiz!.update({
                        ...mapToFirestore(
                          {
                            'question': FieldValue.arrayUnion([
                              getQuestionFirestoreData(
                                updateQuestionStruct(
                                  QuestionStruct(
                                    question: _model.tituloTextController.text,
                                    score: _model.score,
                                    help: _model.mensajeVARTextController.text,
                                    imageUrl:
                                        _model.formAnswerModel.uploadedFileUrl3,
                                    videoUrl:
                                        _model.formAnswerModel.uploadedFileUrl2,
                                    errorMessage: _model
                                        .mensajeIncorrectoTextController.text,
                                    type: _model.answerType,
                                    answerList: _model.answerList,
                                    answerCorrectIndex:
                                        _model.answerCorrectIndex,
                                    estado: true,
                                  ),
                                  clearUnsetFields: false,
                                ),
                                true,
                              )
                            ]),
                          },
                        ),
                      });
                    }

                    logFirebaseEvent('Button_close_dialog_drawer_etc');
                    Navigator.pop(context);
                  },
                  text: 'Guardar',
                  options: FFButtonOptions(
                    width: 222.0,
                    height: 54.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 2.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ].divide(const SizedBox(width: 29.0)),
          ),
        ],
      ),
    );
  }
}
