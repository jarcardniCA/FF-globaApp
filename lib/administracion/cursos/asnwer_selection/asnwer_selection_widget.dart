import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'asnwer_selection_model.dart';
export 'asnwer_selection_model.dart';

class AsnwerSelectionWidget extends StatefulWidget {
  const AsnwerSelectionWidget({
    super.key,
    required this.quetionType,
    required this.answerList,
    required this.onSelect,
    this.cuadrantesList,
    required this.answerSelectedIndex,
    required this.cuadrantesSelected,
    required this.imageCuadrante,
    required this.full,
  });

  final String? quetionType;
  final List<AnswerStruct>? answerList;
  final Future Function(int? answerSelectedIndex)? onSelect;
  final List<String>? cuadrantesList;
  final int? answerSelectedIndex;
  final Future Function(String index)? cuadrantesSelected;
  final String? imageCuadrante;
  final bool? full;

  @override
  State<AsnwerSelectionWidget> createState() => _AsnwerSelectionWidgetState();
}

class _AsnwerSelectionWidgetState extends State<AsnwerSelectionWidget>
    with TickerProviderStateMixin {
  late AsnwerSelectionModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AsnwerSelectionModel());

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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.quetionType == QuestionType.IMAGE_SELECTION.name)
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 62.0, 16.0, 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ASNWER_SELECTION_Container_9kk9in5p_ON_T');
                          logFirebaseEvent('Container_execute_callback');
                          await widget.onSelect?.call(
                            0,
                          );
                        },
                        child: Container(
                          width: 170.0,
                          height: 170.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                (widget.answerList![0]).imageUrl,
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: widget.answerSelectedIndex == 0
                                  ? FlutterFlowTheme.of(context).secondary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              width: 5.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ASNWER_SELECTION_Container_m7niyk69_ON_T');
                          logFirebaseEvent('Container_execute_callback');
                          await widget.onSelect?.call(
                            1,
                          );
                        },
                        child: Container(
                          width: 170.0,
                          height: 170.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                (widget.answerList![1]).imageUrl,
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: widget.answerSelectedIndex == 1
                                  ? FlutterFlowTheme.of(context).secondary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              width: 5.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 17.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ASNWER_SELECTION_Container_q0ksspv5_ON_T');
                          logFirebaseEvent('Container_execute_callback');
                          await widget.onSelect?.call(
                            2,
                          );
                        },
                        child: Container(
                          width: 170.0,
                          height: 170.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                (widget.answerList![2]).imageUrl,
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: widget.answerSelectedIndex == 2
                                  ? FlutterFlowTheme.of(context).secondary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              width: 5.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ASNWER_SELECTION_Container_01gl2bxb_ON_T');
                          logFirebaseEvent('Container_execute_callback');
                          await widget.onSelect?.call(
                            3,
                          );
                        },
                        child: Container(
                          width: 170.0,
                          height: 170.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                (widget.answerList![3]).imageUrl,
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: widget.answerSelectedIndex == 3
                                  ? FlutterFlowTheme.of(context).secondary
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              width: 5.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 17.0)),
                ),
              ].divide(const SizedBox(height: 26.0)),
            ),
          ),
        if ((widget.quetionType == QuestionType.SIMPLE_SELECTION.name) ||
            (widget.quetionType ==
                QuestionType.SIMPLE_SELECTION_IMAGE.name))
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 40.0, 16.0, 15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ASNWER_SELECTION_Container_c5pi8kgw_ON_T');
                          logFirebaseEvent('Container_execute_callback');
                          await widget.onSelect?.call(
                            0,
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: widget.answerSelectedIndex == 0
                                ? FlutterFlowTheme.of(context).secondary
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                17.0, 10.0, 17.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        (widget.answerList![0]).text,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  widget.answerSelectedIndex ==
                                                          0
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 17.0)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ASNWER_SELECTION_Container_b6yo1bce_ON_T');
                          logFirebaseEvent('Container_execute_callback');
                          await widget.onSelect?.call(
                            1,
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: widget.answerSelectedIndex == 1
                                ? FlutterFlowTheme.of(context).secondary
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                17.0, 10.0, 17.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        (widget.answerList![1]).text,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  widget.answerSelectedIndex ==
                                                          1
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 17.0)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ASNWER_SELECTION_Container_jfnjy3w8_ON_T');
                          logFirebaseEvent('Container_execute_callback');
                          await widget.onSelect?.call(
                            2,
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: widget.answerSelectedIndex == 2
                                ? FlutterFlowTheme.of(context).secondary
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                17.0, 10.0, 17.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        (widget.answerList![2]).text,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  widget.answerSelectedIndex ==
                                                          2
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 17.0)),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ASNWER_SELECTION_Container_anopcaqo_ON_T');
                          logFirebaseEvent('Container_execute_callback');
                          await widget.onSelect?.call(
                            3,
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: widget.answerSelectedIndex == 3
                                ? FlutterFlowTheme.of(context).secondary
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                17.0, 10.0, 17.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        (widget.answerList![3]).text,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  widget.answerSelectedIndex ==
                                                          3
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ].divide(const SizedBox(width: 17.0)),
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 20.0)),
                  ),
                ],
              ),
            ),
          ),
        if (widget.quetionType == QuestionType.TRUE_FALSE.name)
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 141.0, 16.0, 15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('ASNWER_SELECTION_COMP_Button_ON_TAP');
                        logFirebaseEvent('Button_execute_callback');
                        await widget.onSelect?.call(
                          0,
                        );
                      },
                      text: (widget.answerList![0]).text,
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 65.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: widget.answerSelectedIndex == 0
                            ? FlutterFlowTheme.of(context).secondary
                            : FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Montserrat',
                              color: widget.answerSelectedIndex == 0
                                  ? FlutterFlowTheme.of(context)
                                      .primaryBackground
                                  : FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      showLoadingIndicator: false,
                    ).animateOnActionTrigger(
                      animationsMap['buttonOnActionTriggerAnimation1']!,
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'ASNWER_SELECTION_COMP_FALSO_BTN_ON_TAP');
                        logFirebaseEvent('Button_execute_callback');
                        await widget.onSelect?.call(
                          1,
                        );
                      },
                      text: (widget.answerList![1]).text,
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 65.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: widget.answerSelectedIndex == 1
                            ? FlutterFlowTheme.of(context).secondary
                            : FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Montserrat',
                              color: widget.answerSelectedIndex == 1
                                  ? FlutterFlowTheme.of(context)
                                      .primaryBackground
                                  : FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      showLoadingIndicator: false,
                    ).animateOnActionTrigger(
                      animationsMap['buttonOnActionTriggerAnimation2']!,
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
              ],
            ),
          ),
        if (widget.quetionType == QuestionType.CUADRANTE.name)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 600.0,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        child: Image.network(
                          widget.imageCuadrante!,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          final cuadrante =
                              functions.cuadrantesIndexes30().toList();

                          return Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(cuadrante.length,
                                (cuadranteIndex) {
                              final cuadranteItem = cuadrante[cuadranteIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'ASNWER_SELECTION_Container_3c3atoej_ON_T');
                                  if (widget.full!) {
                                    logFirebaseEvent(
                                        'Container_execute_callback');
                                    await widget.cuadrantesSelected?.call(
                                      cuadranteItem,
                                    );
                                  }
                                },
                                child: Container(
                                  width: widget.full!
                                      ? ((MediaQuery.sizeOf(context).width -
                                              32) /
                                          5)
                                      : ((358.0 - 32) / 5),
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: widget.cuadrantesList!
                                            .contains(cuadranteItem)
                                        ? const Color(0x4CA47FFD)
                                        : const Color(0x00E0E3E7),
                                    border: Border.all(
                                      color: widget.cuadrantesList!
                                              .contains(cuadranteItem)
                                          ? FlutterFlowTheme.of(context)
                                              .secondary
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
