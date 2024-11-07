import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'resultados_simulacion_model.dart';
export 'resultados_simulacion_model.dart';

class ResultadosSimulacionWidget extends StatefulWidget {
  const ResultadosSimulacionWidget({
    super.key,
    required this.equipo1,
    required this.equipo2,
  });

  final DocumentReference? equipo1;
  final DocumentReference? equipo2;

  @override
  State<ResultadosSimulacionWidget> createState() =>
      _ResultadosSimulacionWidgetState();
}

class _ResultadosSimulacionWidgetState extends State<ResultadosSimulacionWidget>
    with TickerProviderStateMixin {
  late ResultadosSimulacionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultadosSimulacionModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'resultados_simulacion'});
    animationsMap.addAll({
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 590.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 20.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 590.0.ms,
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 260.0.ms,
            duration: 810.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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

    return StreamBuilder<List<ResultadosRecord>>(
      stream: queryResultadosRecord(
        queryBuilder: (resultadosRecord) => resultadosRecord
            .where(
              'formacion_a',
              isEqualTo: widget.equipo1,
            )
            .where(
              'formacion_b',
              isEqualTo: widget.equipo2,
            )
            .where(
              'estado',
              isEqualTo: true,
            ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ResultadosRecord> resultadosSimulacionResultadosRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final resultadosSimulacionResultadosRecord =
            resultadosSimulacionResultadosRecordList.isNotEmpty
                ? resultadosSimulacionResultadosRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            body: StreamBuilder<List<CategoriasResultadosRecord>>(
              stream: queryCategoriasResultadosRecord(
                queryBuilder: (categoriasResultadosRecord) =>
                    categoriasResultadosRecord
                        .where(
                          'resultado_ref',
                          isEqualTo:
                              resultadosSimulacionResultadosRecord?.reference,
                        )
                        .orderBy('order'),
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
                List<CategoriasResultadosRecord>
                    containerCategoriasResultadosRecordList = snapshot.data!;

                return Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: const BoxDecoration(),
                  child: FutureBuilder<CategoriasResultadosRecord>(
                    future: CategoriasResultadosRecord.getDocumentOnce(
                        containerCategoriasResultadosRecordList[
                                FFAppState().resultado]
                            .reference),
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

                      final containerCategoriasResultadosRecord =
                          snapshot.data!;

                      return Container(
                        decoration: const BoxDecoration(),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 30.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 8.0,
                                            borderWidth: 0.0,
                                            buttonSize: 30.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            icon: Icon(
                                              Icons.arrow_back_ios_new,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 14.0,
                                            ),
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'RESULTADOS_SIMULACION_arrow_back_ios_new');
                                              logFirebaseEvent(
                                                  'IconButton_update_app_state');
                                              FFAppState().resultado = 0;
                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'IconButton_update_app_state');

                                              safeSetState(() {});
                                              logFirebaseEvent(
                                                  'IconButton_navigate_back');
                                              context.safePop();
                                            },
                                          ),
                                          Container(
                                            width: 231.0,
                                            height: 47.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF242735),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                containerCategoriasResultadosRecord
                                                    .nombre,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 8.0,
                                            borderWidth: 0.0,
                                            buttonSize: 30.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            icon: Icon(
                                              Icons.close,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 14.0,
                                            ),
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'RESULTADOS_SIMULACION_close_ICN_ON_TAP');
                                              logFirebaseEvent(
                                                  'IconButton_navigate_to');

                                              context.pushNamed(
                                                'salir',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                          ),
                                        ].divide(const SizedBox(width: 15.0)),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 10.0)),
                                ),
                              ),
                              FutureBuilder<FormacionesRecord>(
                                future: FormacionesRecord.getDocumentOnce(
                                    widget.equipo1!),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }

                                  final containerFormacionesRecord =
                                      snapshot.data!;

                                  return Container(
                                    decoration: const BoxDecoration(),
                                    child: FutureBuilder<FormacionesRecord>(
                                      future: FormacionesRecord.getDocumentOnce(
                                          widget.equipo2!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }

                                        final stackFormacionesRecord =
                                            snapshot.data!;

                                        return SizedBox(
                                          width: 300.0,
                                          height: 450.0,
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 30.0,
                                                          16.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/CANCHA_SOLA_Mesa_de_trabajo_1.png',
                                                      width: 300.0,
                                                      height: 400.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -0.3),
                                                child: ClipRRect(
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
                                                  child: Image.network(
                                                    containerFormacionesRecord
                                                        .equipoPropio.image,
                                                    width: 300.0,
                                                    height: 300.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation1']!),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -0.4),
                                                child: ClipRRect(
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
                                                  child: Image.network(
                                                    stackFormacionesRecord
                                                        .equipoRival.image,
                                                    width: 300.0,
                                                    height: 400.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation2']!),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                              Container(
                                width: 400.0,
                                height: 200.0,
                                decoration: const BoxDecoration(),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Container(
                                    height: 150.0,
                                    decoration: const BoxDecoration(),
                                    child: StreamBuilder<
                                        List<ResultadoCombinacionRecord>>(
                                      stream: queryResultadoCombinacionRecord(
                                        queryBuilder:
                                            (resultadoCombinacionRecord) =>
                                                resultadoCombinacionRecord
                                                    .where(
                                                      'categoria_ref',
                                                      isEqualTo:
                                                          containerCategoriasResultadosRecord
                                                              .reference,
                                                    )
                                                    .orderBy('order'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<ResultadoCombinacionRecord>
                                            pageViewResultadoCombinacionRecordList =
                                            snapshot.data!;

                                        return SizedBox(
                                          width: double.infinity,
                                          height: 500.0,
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 40.0),
                                                child: PageView.builder(
                                                  controller: _model
                                                          .pageViewController ??=
                                                      PageController(
                                                          initialPage: max(
                                                              0,
                                                              min(
                                                                  0,
                                                                  pageViewResultadoCombinacionRecordList
                                                                          .length -
                                                                      1))),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      pageViewResultadoCombinacionRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, pageViewIndex) {
                                                    final pageViewResultadoCombinacionRecord =
                                                        pageViewResultadoCombinacionRecordList[
                                                            pageViewIndex];
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          pageViewResultadoCombinacionRecord
                                                              .nombre,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                        Text(
                                                          pageViewResultadoCombinacionRecord
                                                              .descripcion,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 15.0)),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'columnOnPageLoadAnimation']!);
                                                  },
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 0.0, 16.0),
                                                  child: smooth_page_indicator
                                                      .SmoothPageIndicator(
                                                    controller: _model
                                                            .pageViewController ??=
                                                        PageController(
                                                            initialPage: max(
                                                                0,
                                                                min(
                                                                    0,
                                                                    pageViewResultadoCombinacionRecordList
                                                                            .length -
                                                                        1))),
                                                    count:
                                                        pageViewResultadoCombinacionRecordList
                                                            .length,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    onDotClicked: (i) async {
                                                      await _model
                                                          .pageViewController!
                                                          .animateToPage(
                                                        i,
                                                        duration: const Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.ease,
                                                      );
                                                      safeSetState(() {});
                                                    },
                                                    effect:
                                                        smooth_page_indicator
                                                            .SlideEffect(
                                                      spacing: 8.0,
                                                      radius: 16.0,
                                                      dotWidth: 9.0,
                                                      dotHeight: 8.0,
                                                      dotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      activeDotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      paintStyle:
                                                          PaintingStyle.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 30.0, 16.0, 50.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'RESULTADOS_SIMULACION_SIGUIENTE_BTN_ON_T');
                                    if (FFAppState().resultado <
                                        (containerCategoriasResultadosRecordList
                                                .length -
                                            1)) {
                                      logFirebaseEvent('Button_page_view');
                                      await _model.pageViewController
                                          ?.animateToPage(
                                        0,
                                        duration: const Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                      logFirebaseEvent(
                                          'Button_update_app_state');
                                      FFAppState().resultado =
                                          FFAppState().resultado + 1;
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent('Button_navigate_to');

                                      context.pushNamed(
                                        'confirmacion_simulador',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    }
                                  },
                                  text: 'Siguiente',
                                  options: FFButtonOptions(
                                    width: double.infinity,
                                    height: 49.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 15.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
