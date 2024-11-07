import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'simulador_model.dart';
export 'simulador_model.dart';

class SimuladorWidget extends StatefulWidget {
  const SimuladorWidget({super.key});

  @override
  State<SimuladorWidget> createState() => _SimuladorWidgetState();
}

class _SimuladorWidgetState extends State<SimuladorWidget>
    with TickerProviderStateMixin {
  late SimuladorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SimuladorModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Simulador'});
    animationsMap.addAll({
      'sidenavOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 340.0.ms,
            duration: 930.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 340.0.ms,
            duration: 930.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 340.0.ms,
            duration: 930.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 340.0.ms,
            duration: 930.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
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
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 340.0.ms,
            duration: 930.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF6F4FF),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 456.0,
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.sidenavModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const SidenavWidget(
                      pagename: 'Simulador',
                    ),
                  ).animateOnPageLoad(
                      animationsMap['sidenavOnPageLoadAnimation']!),
                ),
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: StreamBuilder<List<ResultadosRecord>>(
                      stream: queryResultadosRecord(
                        queryBuilder: (resultadosRecord) => resultadosRecord
                            .where(
                              'borrado',
                              isEqualTo: 'no',
                            )
                            .orderBy('create_time'),
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
                        List<ResultadosRecord> containerResultadosRecordList =
                            snapshot.data!;

                        return Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 1920.0,
                          ),
                          decoration: const BoxDecoration(),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 40.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Simulador',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 36.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Container(
                                        height: 34.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              AuthUserStreamWidget(
                                                builder: (context) => Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      currentUserPhoto,
                                                      'https://picsum.photos/seed/703/600',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) => Text(
                                                  currentUserDisplayName,
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
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ).animateOnPageLoad(
                                      animationsMap['rowOnPageLoadAnimation']!),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: StreamBuilder<
                                          List<FormacionesRecord>>(
                                        stream: queryFormacionesRecord(
                                          queryBuilder: (formacionesRecord) =>
                                              formacionesRecord
                                                  .where(
                                                    'borrado',
                                                    isEqualTo: 'no',
                                                  )
                                                  .orderBy('create_time'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
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
                                          List<FormacionesRecord>
                                              containerFormacionesRecordList =
                                              snapshot.data!;

                                          return Container(
                                            decoration: const BoxDecoration(),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 60.0, 16.0, 30.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 6.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      offset: const Offset(
                                                        2.0,
                                                        2.0,
                                                      ),
                                                      spreadRadius: 2.0,
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(30.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Equipo',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize:
                                                                      24.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'SIMULADOR_CREAR_NUEVO_EQUIPO_BTN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Button_navigate_to');

                                                              context.pushNamed(
                                                                'crear_sistemas',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      const TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            0),
                                                                  ),
                                                                },
                                                              );
                                                            },
                                                            text:
                                                                'Crear nuevo equipo',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 2.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40.0),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 20.0)),
                                                      ),
                                                      DragTarget<String>(
                                                        builder:
                                                            (context, _, __) {
                                                          return Builder(
                                                            builder: (context) {
                                                              final formaciones =
                                                                  containerFormacionesRecordList
                                                                      .toList();

                                                              return ReorderableListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    formaciones
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        formacionesIndex) {
                                                                  final formacionesItem =
                                                                      formaciones[
                                                                          formacionesIndex];
                                                                  return Container(
                                                                    key: ValueKey("ListView_nvsv5j1v" '_' +
                                                                        formacionesIndex
                                                                            .toString()),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'SIMULADOR_PAGE_Container_hosy25y2_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'Container_update_page_state');
                                                                        _model.setSImulador = containerFormacionesRecordList
                                                                            .toList()
                                                                            .cast<FormacionesRecord>();
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        height:
                                                                            76.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          borderRadius:
                                                                              BorderRadius.circular(20.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              20.0,
                                                                              20.0,
                                                                              20.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    formacionesItem.nombre,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Montserrat',
                                                                                          fontSize: MediaQuery.sizeOf(context).width <= 1600.0 ? 18.0 : 24.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    formacionesItem.estado == true ? 'Publicado' : 'Borrador',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Montserrat',
                                                                                          color: FlutterFlowTheme.of(context).secondary,
                                                                                          fontSize: MediaQuery.sizeOf(context).width <= 1300.0 ? 12.0 : 18.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: Colors.transparent,
                                                                                  borderRadius: 8.0,
                                                                                  borderWidth: 0.0,
                                                                                  buttonSize: 33.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).secondary,
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_control_sharp,
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                    size: 18.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('SIMULADOR_keyboard_control_sharp_ICN_ON_');
                                                                                    logFirebaseEvent('IconButton_navigate_to');

                                                                                    context.pushNamed(
                                                                                      'editar_sistemas',
                                                                                      queryParameters: {
                                                                                        'formaciones': serializeParam(
                                                                                          formacionesItem.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation3']!),
                                                                  );
                                                                },
                                                                onReorder: (int
                                                                        reorderableOldIndex,
                                                                    int reorderableNewIndex) async {
                                                                  logFirebaseEvent(
                                                                      'SIMULADOR_ListView_nvsv5j1v_ON_REORDER');
                                                                  logFirebaseEvent(
                                                                      'ListView_custom_action');
                                                                  await actions
                                                                      .reorderFirebaseItemsnew(
                                                                    containerFormacionesRecordList
                                                                        .toList(),
                                                                    reorderableOldIndex,
                                                                    reorderableNewIndex,
                                                                  );

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 30.0)),
                                                  ),
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation2']!),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 60.0, 16.0, 30.0),
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 6.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                offset: const Offset(
                                                  2.0,
                                                  2.0,
                                                ),
                                                spreadRadius: 2.0,
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Combinaciones',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 24.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    Flexible(
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'SIMULADOR_PAGE_CREAR_NUEVO_BTN_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Button_navigate_to');

                                                          context.pushNamed(
                                                            'crear_combinaciones',
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .fade,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        0),
                                                              ),
                                                            },
                                                          );
                                                        },
                                                        text: 'Crear nuevo',
                                                        options:
                                                            FFButtonOptions(
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 2.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      40.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 20.0)),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final combinaciones =
                                                        containerResultadosRecordList
                                                            .toList();

                                                    return ReorderableListView
                                                        .builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          combinaciones.length,
                                                      itemBuilder: (context,
                                                          combinacionesIndex) {
                                                        final combinacionesItem =
                                                            combinaciones[
                                                                combinacionesIndex];
                                                        return Container(
                                                          key: ValueKey(
                                                              "ListView_n7p1efys" '_' +
                                                                  combinacionesIndex
                                                                      .toString()),
                                                          child: StreamBuilder<
                                                              FormacionesRecord>(
                                                            stream: FormacionesRecord
                                                                .getDocument(
                                                                    combinacionesItem
                                                                        .formacionA!),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
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

                                                              final formacionesAFormacionesRecord =
                                                                  snapshot
                                                                      .data!;

                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'SIMULADOR_PAGE_formaciones_a_ON_TAP');
                                                                },
                                                                child:
                                                                    Container(
                                                                  height: 76.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.0),
                                                                  ),
                                                                  child: StreamBuilder<
                                                                      FormacionesRecord>(
                                                                    stream: FormacionesRecord.getDocument(
                                                                        combinacionesItem
                                                                            .formacionB!),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }

                                                                      final formacionesBFormacionesRecord =
                                                                          snapshot
                                                                              .data!;

                                                                      return Container(
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              20.0,
                                                                              20.0,
                                                                              20.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      valueOrDefault<String>(
                                                                                        '${formacionesAFormacionesRecord.nombre} vs ${formacionesBFormacionesRecord.nombre}',
                                                                                        '--',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Montserrat',
                                                                                            fontSize: MediaQuery.sizeOf(context).width <= 1600.0 ? 18.0 : 24.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      combinacionesItem.estado == true ? 'Publicado' : 'Borrador',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Montserrat',
                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                            fontSize: MediaQuery.sizeOf(context).width <= 1300.0 ? 12.0 : 18.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 18.0, 0.0),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: Colors.transparent,
                                                                                  borderRadius: 8.0,
                                                                                  borderWidth: 0.0,
                                                                                  buttonSize: 33.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).secondary,
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_control_sharp,
                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                    size: 18.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('SIMULADOR_keyboard_control_sharp_ICN_ON_');
                                                                                    logFirebaseEvent('IconButton_navigate_to');

                                                                                    context.pushNamed(
                                                                                      'editar_combinaciones',
                                                                                      queryParameters: {
                                                                                        'combinacion': serializeParam(
                                                                                          combinacionesItem.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                        'formacionA': serializeParam(
                                                                                          formacionesAFormacionesRecord.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                        'formacionB': serializeParam(
                                                                                          formacionesBFormacionesRecord.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'containerOnPageLoadAnimation5']!);
                                                                    },
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      onReorder: (int
                                                              reorderableOldIndex,
                                                          int reorderableNewIndex) async {
                                                        logFirebaseEvent(
                                                            'SIMULADOR_ListView_n7p1efys_ON_REORDER');
                                                        logFirebaseEvent(
                                                            'ListView_custom_action');
                                                        await actions
                                                            .reorderableResultcidosItem(
                                                          containerResultadosRecordList
                                                              .toList(),
                                                          reorderableOldIndex,
                                                          reorderableNewIndex,
                                                        );

                                                        safeSetState(() {});
                                                      },
                                                    );
                                                  },
                                                ),
                                              ].divide(const SizedBox(height: 30.0)),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation4']!),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
