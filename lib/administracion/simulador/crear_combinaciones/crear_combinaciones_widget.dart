import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/administracion/simulador/agregar_categorias_resultados/agregar_categorias_resultados_widget.dart';
import '/administracion/simulador/agregar_datos_combinacion/agregar_datos_combinacion_widget.dart';
import '/administracion/simulador/confirmacion_borrador_combinacion/confirmacion_borrador_combinacion_widget.dart';
import '/administracion/simulador/confirmacion_combinacion/confirmacion_combinacion_widget.dart';
import '/administracion/simulador/consulta_eliminacion/consulta_eliminacion_widget.dart';
import '/administracion/simulador/consulta_eliminacion_resultados_combinacion/consulta_eliminacion_resultados_combinacion_widget.dart';
import '/administracion/simulador/editar_categorias_resultados/editar_categorias_resultados_widget.dart';
import '/administracion/simulador/editar_datos_combinacion/editar_datos_combinacion_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'crear_combinaciones_model.dart';
export 'crear_combinaciones_model.dart';

class CrearCombinacionesWidget extends StatefulWidget {
  const CrearCombinacionesWidget({super.key});

  @override
  State<CrearCombinacionesWidget> createState() =>
      _CrearCombinacionesWidgetState();
}

class _CrearCombinacionesWidgetState extends State<CrearCombinacionesWidget>
    with TickerProviderStateMixin {
  late CrearCombinacionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrearCombinacionesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'crear_combinaciones'});
    animationsMap.addAll({
      'sidenavOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1100.0.ms,
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
            delay: 0.0.ms,
            duration: 1110.0.ms,
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
            delay: 0.0.ms,
            duration: 1130.0.ms,
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
            delay: 0.0.ms,
            duration: 600.0.ms,
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
            delay: 100.0.ms,
            duration: 1120.0.ms,
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
            delay: 100.0.ms,
            duration: 1120.0.ms,
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
                    child: Container(
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
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 8.0,
                                        borderWidth: 0.0,
                                        buttonSize: 33.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondary,
                                        icon: Icon(
                                          Icons.arrow_back_ios_new,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          size: 14.0,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'CREAR_COMBINACIONES_arrow_back_ios_new_I');
                                          logFirebaseEvent(
                                              'IconButton_navigate_back');
                                          context.safePop();
                                        },
                                      ),
                                      Text(
                                        'Crear combinación',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 36.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ].divide(const SizedBox(width: 21.0)),
                                  ),
                                  Container(
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
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
                                                    fontFamily: 'Montserrat',
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 60.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 6.0,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      offset: const Offset(
                                        2.0,
                                        2.0,
                                      ),
                                      spreadRadius: 2.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Información',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Título',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  FormacionesRecord>>(
                                                            stream:
                                                                queryFormacionesRecord(
                                                              queryBuilder:
                                                                  (formacionesRecord) =>
                                                                      formacionesRecord
                                                                          .where(
                                                                'estado',
                                                                isEqualTo: true,
                                                              ),
                                                            ),
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
                                                              List<FormacionesRecord>
                                                                  dropDownFormacionesRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return FlutterFlowDropDown<
                                                                  String>(
                                                                controller: _model
                                                                        .dropDownValueController1 ??=
                                                                    FormFieldController<
                                                                            String>(
                                                                        null),
                                                                options: List<
                                                                        String>.from(
                                                                    dropDownFormacionesRecordList
                                                                        .map((e) => e
                                                                            .reference
                                                                            .id)
                                                                        .toList()),
                                                                optionLabels:
                                                                    dropDownFormacionesRecordList
                                                                        .map((e) =>
                                                                            e.nombre)
                                                                        .toList(),
                                                                onChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.dropDownValue1 =
                                                                            val),
                                                                width: double
                                                                    .infinity,
                                                                height: 49.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                hintText:
                                                                    'Selecciona',
                                                                icon: Icon(
                                                                  Icons
                                                                      .arrow_drop_down_circle,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                elevation: 2.0,
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    40.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        ].divide(const SizedBox(
                                                            height: 11.0)),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Imagen del equipo rival',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                              StreamBuilder<
                                                                  List<
                                                                      FormacionesRecord>>(
                                                                stream:
                                                                    queryFormacionesRecord(
                                                                  queryBuilder:
                                                                      (formacionesRecord) =>
                                                                          formacionesRecord
                                                                              .where(
                                                                    'estado',
                                                                    isEqualTo:
                                                                        true,
                                                                  ),
                                                                ),
                                                                builder: (context,
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
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<FormacionesRecord>
                                                                      dropDownFormacionesRecordList =
                                                                      snapshot
                                                                          .data!;

                                                                  return FlutterFlowDropDown<
                                                                      String>(
                                                                    controller: _model
                                                                            .dropDownValueController2 ??=
                                                                        FormFieldController<
                                                                            String>(
                                                                      _model.dropDownValue2 ??=
                                                                          '0',
                                                                    ),
                                                                    options: List<String>.from(dropDownFormacionesRecordList
                                                                        .map((e) => e
                                                                            .reference
                                                                            .id)
                                                                        .toList()),
                                                                    optionLabels: dropDownFormacionesRecordList
                                                                        .map((e) =>
                                                                            e.nombre)
                                                                        .toList(),
                                                                    onChanged: (val) =>
                                                                        safeSetState(() =>
                                                                            _model.dropDownValue2 =
                                                                                val),
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        49.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText:
                                                                        'Selecciona',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .arrow_drop_down_circle,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    elevation:
                                                                        2.0,
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                    borderWidth:
                                                                        0.0,
                                                                    borderRadius:
                                                                        40.0,
                                                                    margin: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isOverButton:
                                                                        true,
                                                                    isSearchable:
                                                                        false,
                                                                    isMultiSelect:
                                                                        false,
                                                                  );
                                                                },
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 11.0)),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'CREAR_COMBINACIONES_CREAR_FORMACIN_BTN_O');
                                                                logFirebaseEvent(
                                                                    'Button_backend_call');

                                                                var resultadosRecordReference =
                                                                    ResultadosRecord
                                                                        .collection
                                                                        .doc();
                                                                await resultadosRecordReference
                                                                    .set(
                                                                        createResultadosRecordData(
                                                                  formacionA: functions
                                                                      .idform(_model
                                                                          .dropDownValue1!),
                                                                  formacionB: functions
                                                                      .idform(_model
                                                                          .dropDownValue2!),
                                                                  borrado: 'no',
                                                                  createTime:
                                                                      getCurrentTimestamp,
                                                                ));
                                                                _model.combinacion =
                                                                    ResultadosRecord
                                                                        .getDocumentFromData(
                                                                            createResultadosRecordData(
                                                                              formacionA: functions.idform(_model.dropDownValue1!),
                                                                              formacionB: functions.idform(_model.dropDownValue2!),
                                                                              borrado: 'no',
                                                                              createTime: getCurrentTimestamp,
                                                                            ),
                                                                            resultadosRecordReference);

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              text:
                                                                  'Crear formación',
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 40.0,
                                                                padding: const EdgeInsetsDirectional
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                textStyle: FlutterFlowTheme.of(
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
                                                                elevation: 0.0,
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
                                                        ].divide(const SizedBox(
                                                            height: 24.0)),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 55.0)),
                                                ),
                                              ].divide(const SizedBox(height: 28.0)),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 15.0)),
                                      ),
                                      if (_model.combinacion?.reference != null)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: StreamBuilder<
                                              List<CategoriasResultadosRecord>>(
                                            stream:
                                                queryCategoriasResultadosRecord(
                                              queryBuilder:
                                                  (categoriasResultadosRecord) =>
                                                      categoriasResultadosRecord
                                                          .where(
                                                            'resultado_ref',
                                                            isEqualTo: _model
                                                                .combinacion
                                                                ?.reference,
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
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<CategoriasResultadosRecord>
                                                  containerCategoriasResultadosRecordList =
                                                  snapshot.data!;

                                              return Container(
                                                width: double.infinity,
                                                decoration: const BoxDecoration(),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            width: 0.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      30.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        23.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Categorías',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            fontSize: MediaQuery.sizeOf(context).width <= 1440.0
                                                                                ? 10.0
                                                                                : 18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                    if (responsiveVisibility(
                                                                      context:
                                                                          context,
                                                                      tablet:
                                                                          false,
                                                                      tabletLandscape:
                                                                          false,
                                                                      desktop:
                                                                          false,
                                                                    ))
                                                                      FFButtonWidget(
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'Button pressed ...');
                                                                        },
                                                                        text:
                                                                            'Agregar tema',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          height:
                                                                              40.0,
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              0.0,
                                                                              24.0,
                                                                              0.0),
                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                color: Colors.white,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          elevation:
                                                                              2.0,
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(40.0),
                                                                        ),
                                                                        showLoadingIndicator:
                                                                            false,
                                                                      ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) =>
                                                                              FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'CREAR_COMBINACIONES_AGREGAR_CATEGORIA_BT');
                                                                          logFirebaseEvent(
                                                                              'Button_alert_dialog');
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (dialogContext) {
                                                                              return Dialog(
                                                                                elevation: 0,
                                                                                insetPadding: EdgeInsets.zero,
                                                                                backgroundColor: Colors.transparent,
                                                                                alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                child: GestureDetector(
                                                                                  onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                  child: AgregarCategoriasResultadosWidget(
                                                                                    resultado: _model.combinacion!.reference,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                        text:
                                                                            'Agregar categoria',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          height:
                                                                              40.0,
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              24.0,
                                                                              0.0,
                                                                              24.0,
                                                                              0.0),
                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Montserrat',
                                                                                color: Colors.white,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          elevation:
                                                                              2.0,
                                                                          borderSide:
                                                                              const BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(40.0),
                                                                        ),
                                                                        showLoadingIndicator:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final categorias =
                                                                      containerCategoriasResultadosRecordList
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
                                                                        categorias
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            categoriasIndex) {
                                                                      final categoriasItem =
                                                                          categorias[
                                                                              categoriasIndex];
                                                                      return Container(
                                                                        key: ValueKey("ListView_yct5d24q" '_' +
                                                                            categoriasIndex.toString()),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('CREAR_COMBINACIONES_Container_70lkf50c_O');
                                                                            logFirebaseEvent('Container_update_page_state');
                                                                            _model.categ =
                                                                                categoriasItem;
                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                              border: Border.all(
                                                                                width: 1.0,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      categoriasItem.nombre,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Montserrat',
                                                                                            fontSize: (MediaQuery.sizeOf(context).width <= 1280.0 ? 14 : 18).toDouble(),
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          phone: false,
                                                                                          tablet: false,
                                                                                          tabletLandscape: false,
                                                                                          desktop: false,
                                                                                        ))
                                                                                          Container(
                                                                                            width: 40.0,
                                                                                            height: 40.0,
                                                                                            clipBehavior: Clip.antiAlias,
                                                                                            decoration: const BoxDecoration(
                                                                                              shape: BoxShape.circle,
                                                                                            ),
                                                                                            child: Image.network(
                                                                                              'https://picsum.photos/seed/517/600',
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 18.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Builder(
                                                                                                builder: (context) => Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
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
                                                                                                      logFirebaseEvent('CREAR_COMBINACIONES_PAGE_edit_ICN_ON_TAP');
                                                                                                      logFirebaseEvent('IconButton_alert_dialog');
                                                                                                      await showDialog(
                                                                                                        context: context,
                                                                                                        builder: (dialogContext) {
                                                                                                          return Dialog(
                                                                                                            elevation: 0,
                                                                                                            insetPadding: EdgeInsets.zero,
                                                                                                            backgroundColor: Colors.transparent,
                                                                                                            alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                            child: GestureDetector(
                                                                                                              onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                              child: EditarCategoriasResultadosWidget(
                                                                                                                datosRef: categoriasItem.reference,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Builder(
                                                                                                builder: (context) => FlutterFlowIconButton(
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
                                                                                                    logFirebaseEvent('CREAR_COMBINACIONES_delete_sharp_ICN_ON_');
                                                                                                    logFirebaseEvent('IconButton_alert_dialog');
                                                                                                    await showDialog(
                                                                                                      context: context,
                                                                                                      builder: (dialogContext) {
                                                                                                        return Dialog(
                                                                                                          elevation: 0,
                                                                                                          insetPadding: EdgeInsets.zero,
                                                                                                          backgroundColor: Colors.transparent,
                                                                                                          alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                          child: GestureDetector(
                                                                                                            onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                            child: ConsultaEliminacionWidget(
                                                                                                              catatRef: categoriasItem.reference,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                    );
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: FlutterFlowIconButton(
                                                                                                  borderColor: Colors.transparent,
                                                                                                  borderRadius: 8.0,
                                                                                                  borderWidth: 0.0,
                                                                                                  buttonSize: 33.0,
                                                                                                  fillColor: FlutterFlowTheme.of(context).secondary,
                                                                                                  icon: Icon(
                                                                                                    Icons.arrow_forward_ios_sharp,
                                                                                                    color: FlutterFlowTheme.of(context).alternate,
                                                                                                    size: 14.0,
                                                                                                  ),
                                                                                                  onPressed: () async {
                                                                                                    logFirebaseEvent('CREAR_COMBINACIONES_arrow_forward_ios_sh');
                                                                                                    logFirebaseEvent('IconButton_update_page_state');
                                                                                                    _model.categ = categoriasItem;
                                                                                                    safeSetState(() {});
                                                                                                  },
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation3']!),
                                                                      );
                                                                    },
                                                                    onReorder: (int
                                                                            reorderableOldIndex,
                                                                        int reorderableNewIndex) async {
                                                                      logFirebaseEvent(
                                                                          'CREAR_COMBINACIONES_ListView_yct5d24q_ON');
                                                                      logFirebaseEvent(
                                                                          'ListView_custom_action');
                                                                      await actions
                                                                          .reorderCategoriesItem(
                                                                        containerCategoriasResultadosRecordList
                                                                            .toList(),
                                                                        reorderableOldIndex,
                                                                        reorderableNewIndex,
                                                                      );

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                  );
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    if (_model.categ != null)
                                                      Expanded(
                                                        child: StreamBuilder<
                                                            List<
                                                                ResultadoCombinacionRecord>>(
                                                          stream:
                                                              queryResultadoCombinacionRecord(
                                                            queryBuilder:
                                                                (resultadoCombinacionRecord) =>
                                                                    resultadoCombinacionRecord
                                                                        .where(
                                                                          'categoria_ref',
                                                                          isEqualTo: _model
                                                                              .categ
                                                                              ?.reference,
                                                                        )
                                                                        .orderBy(
                                                                            'order'),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<ResultadoCombinacionRecord>
                                                                containerResultadoCombinacionRecordList =
                                                                snapshot.data!;

                                                            return Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 0.0,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            30.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          23.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            'Datos: ${_model.categ?.nombre}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  fontSize: MediaQuery.sizeOf(context).width <= 1440.0 ? 10.0 : 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) => FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('CREAR_COMBINACIONES_AGREGAR_DATOS_BTN_ON');
                                                                                  logFirebaseEvent('Button_alert_dialog');
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (dialogContext) {
                                                                                      return Dialog(
                                                                                        elevation: 0,
                                                                                        insetPadding: EdgeInsets.zero,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        child: GestureDetector(
                                                                                          onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                          child: AgregarDatosCombinacionWidget(
                                                                                            forta: _model.categ!,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                },
                                                                                text: 'Agregar Datos',
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                                                                showLoadingIndicator: false,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final resultado =
                                                                            containerResultadoCombinacionRecordList.toList();

                                                                        return ReorderableListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              resultado.length,
                                                                          itemBuilder:
                                                                              (context, resultadoIndex) {
                                                                            final resultadoItem =
                                                                                resultado[resultadoIndex];
                                                                            return Container(
                                                                              key: ValueKey("ListView_o1bsyoj5" '_' + resultadoIndex.toString()),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    borderRadius: BorderRadius.circular(5.0),
                                                                                    border: Border.all(
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            resultadoItem.nombre,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: (MediaQuery.sizeOf(context).width <= 1280.0 ? 14 : 18).toDouble(),
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (responsiveVisibility(
                                                                                                context: context,
                                                                                                tablet: false,
                                                                                                tabletLandscape: false,
                                                                                                desktop: false,
                                                                                              ))
                                                                                                Container(
                                                                                                  width: 40.0,
                                                                                                  height: 40.0,
                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                  decoration: const BoxDecoration(
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
                                                                                                  child: Image.network(
                                                                                                    'https://picsum.photos/seed/517/600',
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Builder(
                                                                                                      builder: (context) => Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
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
                                                                                                            logFirebaseEvent('CREAR_COMBINACIONES_PAGE_edit_ICN_ON_TAP');
                                                                                                            logFirebaseEvent('IconButton_alert_dialog');
                                                                                                            await showDialog(
                                                                                                              context: context,
                                                                                                              builder: (dialogContext) {
                                                                                                                return Dialog(
                                                                                                                  elevation: 0,
                                                                                                                  insetPadding: EdgeInsets.zero,
                                                                                                                  backgroundColor: Colors.transparent,
                                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                  child: GestureDetector(
                                                                                                                    onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                                    child: EditarDatosCombinacionWidget(
                                                                                                                      categ: _model.categ!.reference,
                                                                                                                      datos: resultadoItem.reference,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            );
                                                                                                          },
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Builder(
                                                                                                      builder: (context) => FlutterFlowIconButton(
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
                                                                                                          logFirebaseEvent('CREAR_COMBINACIONES_delete_sharp_ICN_ON_');
                                                                                                          logFirebaseEvent('IconButton_alert_dialog');
                                                                                                          await showDialog(
                                                                                                            context: context,
                                                                                                            builder: (dialogContext) {
                                                                                                              return Dialog(
                                                                                                                elevation: 0,
                                                                                                                insetPadding: EdgeInsets.zero,
                                                                                                                backgroundColor: Colors.transparent,
                                                                                                                alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                                  child: ConsultaEliminacionResultadosCombinacionWidget(
                                                                                                                    resultadoRef: resultadoItem.reference,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                          );
                                                                                                        },
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                      child: FlutterFlowIconButton(
                                                                                                        borderColor: Colors.transparent,
                                                                                                        borderRadius: 8.0,
                                                                                                        borderWidth: 0.0,
                                                                                                        buttonSize: 33.0,
                                                                                                        fillColor: FlutterFlowTheme.of(context).secondary,
                                                                                                        icon: Icon(
                                                                                                          Icons.arrow_forward_ios_sharp,
                                                                                                          color: FlutterFlowTheme.of(context).alternate,
                                                                                                          size: 14.0,
                                                                                                        ),
                                                                                                        onPressed: () {
                                                                                                          print('IconButton pressed ...');
                                                                                                        },
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation4']!),
                                                                              ),
                                                                            );
                                                                          },
                                                                          onReorder:
                                                                              (int reorderableOldIndex, int reorderableNewIndex) async {
                                                                            logFirebaseEvent('CREAR_COMBINACIONES_ListView_o1bsyoj5_ON');
                                                                            logFirebaseEvent('ListView_custom_action');
                                                                            await actions.reorderCategoriesItem(
                                                                              containerCategoriasResultadosRecordList.toList(),
                                                                              reorderableOldIndex,
                                                                              reorderableNewIndex,
                                                                            );

                                                                            safeSetState(() {});
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                  ].divide(
                                                      const SizedBox(width: 20.0)),
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'containerOnPageLoadAnimation2']!);
                                            },
                                          ),
                                        ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Flexible(
                                            child: Builder(
                                              builder: (context) =>
                                                  FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'CREAR_COMBINACIONES_GUARDAR_COMO_BORRADO');
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await _model
                                                      .combinacion!.reference
                                                      .update(
                                                          createResultadosRecordData(
                                                    estado: false,
                                                  ));
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () =>
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus(),
                                                          child:
                                                              const ConfirmacionBorradorCombinacionWidget(),
                                                        ),
                                                      );
                                                    },
                                                  );

                                                  logFirebaseEvent(
                                                      'Button_navigate_to');

                                                  context
                                                      .pushNamed('Simulador');
                                                },
                                                text: 'Guardar como borrador',
                                                options: FFButtonOptions(
                                                  width: 227.0,
                                                  height: 50.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 15.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'CREAR_COMBINACIONES_PUBLICAR_BTN_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await _model
                                                    .combinacion!.reference
                                                    .update(
                                                        createResultadosRecordData(
                                                  estado: true,
                                                ));
                                                logFirebaseEvent(
                                                    'Button_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: GestureDetector(
                                                        onTap: () =>
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus(),
                                                        child:
                                                            const ConfirmacionCombinacionWidget(),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              text: 'Publicar',
                                              options: FFButtonOptions(
                                                width: 227.0,
                                                height: 50.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 2.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(width: 20.0)),
                                      ),
                                    ].divide(const SizedBox(height: 30.0)),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation1']!),
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
    );
  }
}
