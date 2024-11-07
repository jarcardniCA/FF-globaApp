import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'equipo2_model.dart';
export 'equipo2_model.dart';

class Equipo2Widget extends StatefulWidget {
  const Equipo2Widget({
    super.key,
    required this.equipo1,
  });

  final DocumentReference? equipo1;

  @override
  State<Equipo2Widget> createState() => _Equipo2WidgetState();
}

class _Equipo2WidgetState extends State<Equipo2Widget>
    with TickerProviderStateMixin {
  late Equipo2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Equipo2Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Equipo2'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('EQUIPO2_PAGE_Equipo2_ON_INIT_STATE');
      logFirebaseEvent('Equipo2_firestore_query');
      _model.resultado = await queryResultadosRecordOnce(
        queryBuilder: (resultadosRecord) => resultadosRecord
            .where(
              'formacion_a',
              isEqualTo: widget.equipo1,
            )
            .where(
              'formacion_b',
              isEqualTo: functions.idform(_model.dropDownValue!),
            ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
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
    return StreamBuilder<List<FormacionesRecord>>(
      stream: queryFormacionesRecord(
        queryBuilder: (formacionesRecord) => formacionesRecord
            .where(
              'estado',
              isEqualTo: true,
            )
            .where(
              'borrado',
              isEqualTo: 'no',
            ),
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
        List<FormacionesRecord> equipo2FormacionesRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: const BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 50.0, 16.0, 0.0),
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
                                                    'EQUIPO2_arrow_back_ios_new_ICN_ON_TAP');
                                                logFirebaseEvent(
                                                    'IconButton_update_app_state');
                                                FFAppState().avanzar = 0;
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
                                                  'Elige equipo rival',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
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
                                                    'EQUIPO2_PAGE_close_ICN_ON_TAP');
                                                logFirebaseEvent(
                                                    'IconButton_navigate_to');

                                                context.pushNamed(
                                                  'salir',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
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
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: SizedBox(
                                    width: 300.0,
                                    height: 450.0,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                        if (_model.dropDownValue != null &&
                                            _model.dropDownValue != '')
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
                                                equipo2FormacionesRecordList
                                                    .where((e) =>
                                                        e.reference.id ==
                                                        _model.dropDownValue)
                                                    .toList()
                                                    .first
                                                    .imagenRival,
                                                width: 300.0,
                                                height: 400.0,
                                                fit: BoxFit.cover,
                                                alignment: const Alignment(-1.0, 0.0),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'imageOnPageLoadAnimation']!),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 50.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Para continuar debes elegir el sistema táctico del equipo rival',
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                              Text(
                                                'Selecciona',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      fontSize: 16.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dropDownValue ??= '',
                                                ),
                                                options: List<String>.from(
                                                    equipo2FormacionesRecordList
                                                        .map((e) =>
                                                            e.reference.id)
                                                        .toList()),
                                                optionLabels:
                                                    equipo2FormacionesRecordList
                                                        .map((e) => e.nombre)
                                                        .toList(),
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                        .dropDownValue = val),
                                                width: double.infinity,
                                                height: 49.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText: 'Selecciona',
                                                icon: Icon(
                                                  Icons.arrow_drop_down_circle,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 0.0,
                                                borderRadius: 40.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ].divide(const SizedBox(height: 24.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 60.0, 16.0, 90.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'EQUIPO2_GENERAR_SIMULACION_BTN_ON_TAP');
                                      logFirebaseEvent(
                                          'Button_firestore_query');
                                      _model.resultadofinal =
                                          await queryResultadosRecordOnce(
                                        queryBuilder: (resultadosRecord) =>
                                            resultadosRecord
                                                .where(
                                                  'formacion_a',
                                                  isEqualTo: widget.equipo1,
                                                )
                                                .where(
                                                  'formacion_b',
                                                  isEqualTo: functions.idform(
                                                      _model.dropDownValue!),
                                                )
                                                .where(
                                                  'estado',
                                                  isEqualTo: true,
                                                ),
                                        singleRecord: true,
                                      ).then((s) => s.firstOrNull);
                                      if (_model.resultadofinal?.reference !=
                                          null) {
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed(
                                          'resultados_simulacion',
                                          queryParameters: {
                                            'equipo1': serializeParam(
                                              widget.equipo1,
                                              ParamType.DocumentReference,
                                            ),
                                            'equipo2': serializeParam(
                                              functions.idform(
                                                  _model.dropDownValue!),
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
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

                                        logFirebaseEvent(
                                            'Button_reset_form_fields');
                                        safeSetState(() {
                                          _model.dropDownValueController
                                              ?.reset();
                                        });
                                      } else {
                                        logFirebaseEvent('Button_alert_dialog');
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: const Text(
                                                  'No hay simulacion disponible'),
                                              content: const Text('Proximamente'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                    text: 'Generar simulacion',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 49.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
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
    );
  }
}
