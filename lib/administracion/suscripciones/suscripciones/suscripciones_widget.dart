import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/administracion/suscripciones/suscripcion/suscripcion_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:text_search/text_search.dart';
import 'suscripciones_model.dart';
export 'suscripciones_model.dart';

class SuscripcionesWidget extends StatefulWidget {
  const SuscripcionesWidget({super.key});

  @override
  State<SuscripcionesWidget> createState() => _SuscripcionesWidgetState();
}

class _SuscripcionesWidgetState extends State<SuscripcionesWidget>
    with TickerProviderStateMixin {
  late SuscripcionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuscripcionesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Suscripciones'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SUSCRIPCIONES_Suscripciones_ON_INIT_STAT');
      logFirebaseEvent('Suscripciones_firestore_query');
      _model.listadeusuarios = await querySuscripcionesRecordOnce(
        queryBuilder: (suscripcionesRecord) => suscripcionesRecord
            .where(
              'status',
              isEqualTo: _model.estadoValue,
            )
            .orderBy('create_time', descending: true),
      );
      logFirebaseEvent('Suscripciones_update_page_state');
      _model.sucrip =
          _model.listadeusuarios!.toList().cast<SuscripcionesRecord>();
      safeSetState(() {});
      logFirebaseEvent('Suscripciones_data_table');
      _model.paginatedDataTableController.paginatorController
          .setRowsPerPage(25);
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 930.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 930.0.ms,
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
    return StreamBuilder<List<SuscripcionesRecord>>(
      stream: querySuscripcionesRecord(
        queryBuilder: (suscripcionesRecord) => suscripcionesRecord
            .where(
              'status',
              isEqualTo: _model.estadoValue != '' ? _model.estadoValue : null,
            )
            .orderBy('create_time', descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
        List<SuscripcionesRecord> suscripcionesSuscripcionesRecordList =
            snapshot.data!;

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
                          pagename: 'Suscripciones',
                        ),
                      ),
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
                                        'Suscripciones',
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
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 60.0, 16.0, 30.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 800.0,
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
                                              Flexible(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Container(
                                                        width: 325.0,
                                                        height: 47.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              InkWell(
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
                                                                      'SUSCRIPCIONES_PAGE_Icon_pmyit3rs_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Icon_simple_search');
                                                                  await querySuscripcionesRecordOnce()
                                                                      .then(
                                                                        (records) =>
                                                                            _model.simpleSearchResults =
                                                                                TextSearch(
                                                                          records
                                                                              .map(
                                                                                (record) => TextSearchItem.fromTerms(record, [
                                                                                  record.nombreUsuario
                                                                                ]),
                                                                              )
                                                                              .toList(),
                                                                        ).search(_model.textController.text).map((r) => r.object).toList(),
                                                                      )
                                                                      .onError((_,
                                                                              __) =>
                                                                          _model.simpleSearchResults =
                                                                              [])
                                                                      .whenComplete(() =>
                                                                          safeSetState(
                                                                              () {}));

                                                                  logFirebaseEvent(
                                                                      'Icon_update_page_state');
                                                                  _model.isShow =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons.search,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .textController,
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              800),
                                                                      () => safeSetState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Busca usuario',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    validator: _model
                                                                        .textControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                              InkWell(
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
                                                                      'SUSCRIPCIONES_PAGE_Icon_q6j2arhu_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Icon_clear_text_fields_pin_codes');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textController
                                                                        ?.clear();
                                                                  });
                                                                },
                                                                child: Icon(
                                                                  Icons.close,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Filtrar por',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Container(
                                                          width: 255.0,
                                                          decoration:
                                                              const BoxDecoration(),
                                                          child:
                                                              FlutterFlowDropDown<
                                                                  String>(
                                                            controller: _model
                                                                    .estadoValueController ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            options: const [
                                                              'Activo',
                                                              'Desactivo'
                                                            ],
                                                            onChanged: (val) =>
                                                                safeSetState(() =>
                                                                    _model.estadoValue =
                                                                        val),
                                                            width: 316.0,
                                                            height: 47.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            hintText:
                                                                'Seleccionar',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                            borderWidth: 1.0,
                                                            borderRadius: 10.0,
                                                            margin:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                        ),
                                                        if (_model.estadoValue !=
                                                                null &&
                                                            _model.estadoValue !=
                                                                '')
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'SUSCRIPCIONES_PAGE_Icon_sqou7lp7_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Icon_reset_form_fields');
                                                              safeSetState(() {
                                                                _model
                                                                    .estadoValueController
                                                                    ?.reset();
                                                              });
                                                            },
                                                            child: Icon(
                                                              Icons.close,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                      ].divide(const SizedBox(
                                                          width: 15.0)),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 12.0)),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 20.0)),
                                          ),
                                          Flexible(
                                            child: SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  1.0,
                                              child: Builder(
                                                builder: (context) {
                                                  final list = functions
                                                      .buscarSuscripciones(
                                                          suscripcionesSuscripcionesRecordList
                                                              .toList(),
                                                          _model.textController
                                                              .text)
                                                      .toList();

                                                  return FlutterFlowDataTable<
                                                      SuscripcionesRecord>(
                                                    controller: _model
                                                        .paginatedDataTableController,
                                                    data: list,
                                                    numRows: list.length,
                                                    columnsBuilder:
                                                        (onSortChanged) => [
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Text(
                                                            'Usuario',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        fixedWidth: 190.0,
                                                        onSort: onSortChanged,
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Text(
                                                            'Estado',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Text(
                                                            'Vencimiento',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Text(
                                                            'Renovación',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      DataColumn2(
                                                        label: DefaultTextStyle
                                                            .merge(
                                                          softWrap: true,
                                                          child: Container(),
                                                        ),
                                                      ),
                                                    ],
                                                    dataRowBuilder: (listItem,
                                                            listIndex,
                                                            selected,
                                                            onSelectChanged) =>
                                                        DataRow(
                                                      color:
                                                          WidgetStateProperty
                                                              .all(
                                                        listIndex % 2 == 0
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                      ),
                                                      cells: [
                                                        FutureBuilder<
                                                            UsersRecord>(
                                                          future: UsersRecord
                                                              .getDocumentOnce(
                                                                  listItem
                                                                      .userRef!),
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

                                                            final textUsersRecord =
                                                                snapshot.data!;

                                                            return Text(
                                                              textUsersRecord
                                                                  .displayName,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            );
                                                          },
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Container(
                                                              height: 37.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: listItem
                                                                            .status ==
                                                                        'Activo'
                                                                    ? const Color(
                                                                        0xFF5BF9B6)
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  listItem
                                                                      .status,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        color: listItem.status ==
                                                                                'Activo'
                                                                            ? FlutterFlowTheme.of(context).primaryText
                                                                            : FlutterFlowTheme.of(context).primaryBackground,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            dateTimeFormat(
                                                              "yMMMd",
                                                              listItem
                                                                  .expirationDate,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            '-',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Container(
                                                          height: 37.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listItem
                                                                      .status,
                                                                  'Para siempre',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Builder(
                                                          builder: (context) =>
                                                              FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'SUSCRIPCIONES_VER_DETALLES_BTN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Button_alert_dialog');
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Dialog(
                                                                    elevation:
                                                                        0,
                                                                    insetPadding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    child:
                                                                        GestureDetector(
                                                                      onTap: () =>
                                                                          FocusScope.of(dialogContext)
                                                                              .unfocus(),
                                                                      child:
                                                                          SuscripcionWidget(
                                                                        suscri:
                                                                            listItem.reference,
                                                                        user: listItem
                                                                            .userRef!,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                            text:
                                                                'Ver detalles',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 201.0,
                                                              height: 37.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
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
                                                                        fontSize:
                                                                            14.0,
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
                                                                          20.0),
                                                            ),
                                                            showLoadingIndicator:
                                                                false,
                                                          ),
                                                        ),
                                                      ]
                                                          .map((c) =>
                                                              DataCell(c))
                                                          .toList(),
                                                    ),
                                                    paginated: true,
                                                    selectable: false,
                                                    hidePaginator: false,
                                                    showFirstLastButtons: true,
                                                    width: double.infinity,
                                                    headingRowHeight: 56.0,
                                                    dataRowHeight: 60.0,
                                                    columnSpacing: 20.0,
                                                    headingRowColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    sortIconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    addHorizontalDivider: true,
                                                    addTopAndBottomDivider:
                                                        false,
                                                    hideDefaultHorizontalDivider:
                                                        true,
                                                    horizontalDividerThickness:
                                                        0.0,
                                                    addVerticalDivider: false,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 30.0)),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation']!),
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
      },
    );
  }
}
