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
import 'categorias_equipo_propio_model.dart';
export 'categorias_equipo_propio_model.dart';

class CategoriasEquipoPropioWidget extends StatefulWidget {
  const CategoriasEquipoPropioWidget({
    super.key,
    required this.equipo1,
  });

  final DocumentReference? equipo1;

  @override
  State<CategoriasEquipoPropioWidget> createState() =>
      _CategoriasEquipoPropioWidgetState();
}

class _CategoriasEquipoPropioWidgetState
    extends State<CategoriasEquipoPropioWidget> with TickerProviderStateMixin {
  late CategoriasEquipoPropioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriasEquipoPropioModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'categorias_equipo_propio'});
    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation': AnimationInfo(
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

    return FutureBuilder<List<CategoriasRecord>>(
      future: queryCategoriasRecordOnce(
        queryBuilder: (categoriasRecord) => categoriasRecord
            .where(
              'formarciones_ref',
              isEqualTo: widget.equipo1,
            )
            .orderBy('Order'),
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
        List<CategoriasRecord> categoriasEquipoPropioCategoriasRecordList =
            snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            body: FutureBuilder<CategoriasRecord>(
              future: CategoriasRecord.getDocumentOnce(
                  categoriasEquipoPropioCategoriasRecordList[
                          valueOrDefault<int>(
                FFAppState().avanzar,
                0,
              )]
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

                final categoriasQueryCategoriasRecord = snapshot.data!;

                return Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: const BoxDecoration(),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 30.0, 16.0, 0.0),
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
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      icon: Icon(
                                        Icons.arrow_back_ios_new,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 14.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'CATEGORIAS_EQUIPO_PROPIO_arrow_back_ios_');
                                        logFirebaseEvent(
                                            'IconButton_update_app_state');
                                        FFAppState().avanzar = 0;
                                        safeSetState(() {});
                                        logFirebaseEvent(
                                            'IconButton_update_app_state');

                                        safeSetState(() {});
                                        logFirebaseEvent(
                                            'IconButton_navigate_to');

                                        context.goNamed(
                                          'Equipo1',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
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
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          categoriasQueryCategoriasRecord
                                              .nombre,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation']!),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 8.0,
                                      borderWidth: 0.0,
                                      buttonSize: 30.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      icon: Icon(
                                        Icons.close,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 14.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'CATEGORIAS_EQUIPO_PROPIO_close_ICN_ON_TA');
                                        logFirebaseEvent(
                                            'IconButton_navigate_to');

                                        context.pushNamed(
                                          'salir',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ].divide(const SizedBox(width: 15.0)),
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
                                    child: SizedBox(
                                      width: 300.0,
                                      height: 450.0,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 30.0, 16.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
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
                                            alignment:
                                                const AlignmentDirectional(0.0, -0.4),
                                            child: ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                              child: Image.network(
                                                containerFormacionesRecord
                                                    .equipoPropio.image,
                                                width: 300.0,
                                                height: 300.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation']!),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Container(
                                width: 400.0,
                                height: 200.0,
                                decoration: const BoxDecoration(),
                                child: SizedBox(
                                  height: 200.0,
                                  child: SizedBox(
                                    height: 200.0,
                                    child: FutureBuilder<
                                        List<InformacionCategoriaRecord>>(
                                      future:
                                          queryInformacionCategoriaRecordOnce(
                                        queryBuilder:
                                            (informacionCategoriaRecord) =>
                                                informacionCategoriaRecord
                                                    .where(
                                                      'categoriaRef',
                                                      isEqualTo:
                                                          categoriasQueryCategoriasRecord
                                                              .reference,
                                                    )
                                                    .orderBy('Order'),
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
                                        List<InformacionCategoriaRecord>
                                            pageViewInformacionCategoriaRecordList =
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
                                                                  pageViewInformacionCategoriaRecordList
                                                                          .length -
                                                                      1))),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      pageViewInformacionCategoriaRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, pageViewIndex) {
                                                    final pageViewInformacionCategoriaRecord =
                                                        pageViewInformacionCategoriaRecordList[
                                                            pageViewIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            pageViewInformacionCategoriaRecord
                                                                .titulo,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          Text(
                                                            pageViewInformacionCategoriaRecord
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
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 25.0)),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'columnOnPageLoadAnimation']!),
                                                    );
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
                                                                    pageViewInformacionCategoriaRecordList
                                                                            .length -
                                                                        1))),
                                                    count:
                                                        pageViewInformacionCategoriaRecordList
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
                                                      radius: 12.0,
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
                                    16.0, 40.0, 16.0, 90.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'CATEGORIAS_EQUIPO_PROPIO_SIGUIENTE_BTN_O');
                                    if (FFAppState().avanzar <
                                        (categoriasEquipoPropioCategoriasRecordList
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
                                      FFAppState().avanzar =
                                          FFAppState().avanzar + 1;
                                      safeSetState(() {});
                                    } else {
                                      logFirebaseEvent('Button_navigate_to');

                                      context.pushNamed(
                                        'Equipo2',
                                        queryParameters: {
                                          'equipo1': serializeParam(
                                            widget.equipo1,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );

                                      logFirebaseEvent('Button_page_view');
                                      await _model.pageViewController
                                          ?.animateToPage(
                                        0,
                                        duration: const Duration(milliseconds: 500),
                                        curve: Curves.ease,
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
                      ],
                    ),
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
