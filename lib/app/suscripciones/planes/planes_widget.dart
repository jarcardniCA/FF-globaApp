import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'planes_model.dart';
export 'planes_model.dart';

class PlanesWidget extends StatefulWidget {
  const PlanesWidget({super.key});

  @override
  State<PlanesWidget> createState() => _PlanesWidgetState();
}

class _PlanesWidgetState extends State<PlanesWidget> {
  late PlanesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanesModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'planes'});
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
        body: Container(
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xAB989BB0),
                FlutterFlowTheme.of(context).primaryBackground
              ],
              stops: const [0.0, 0.4],
              begin: const AlignmentDirectional(1.0, 0.64),
              end: const AlignmentDirectional(-1.0, -0.64),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: const BoxDecoration(),
                ),
                Container(
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 42.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Text(
                            '¡Elige uno de nuestros planes Premium!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 31.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'PLANES_PAGE_Container_0jwgcfr5_ON_TAP');
                            logFirebaseEvent('Container_update_page_state');
                            _model.susc = 'suscripciones';
                            safeSetState(() {});
                            logFirebaseEvent('Container_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              usuarioPremium: true,
                            ));
                            logFirebaseEvent('Container_backend_call');

                            var suscripcionesRecordReference =
                                SuscripcionesRecord.collection.doc();
                            await suscripcionesRecordReference
                                .set(createSuscripcionesRecordData(
                              userRef: currentUserReference,
                              createTime: getCurrentTimestamp,
                              name: 'Plan Macenas',
                              price: 2.99,
                              status: 'Activo',
                              nombreUsuario: currentUserDisplayName,
                            ));
                            _model.suscripcion =
                                SuscripcionesRecord.getDocumentFromData(
                                    createSuscripcionesRecordData(
                                      userRef: currentUserReference,
                                      createTime: getCurrentTimestamp,
                                      name: 'Plan Macenas',
                                      price: 2.99,
                                      status: 'Activo',
                                      nombreUsuario: currentUserDisplayName,
                                    ),
                                    suscripcionesRecordReference);
                            logFirebaseEvent('Container_backend_call');

                            await VentasRecord.collection
                                .doc()
                                .set(createVentasRecordData(
                                  userRef: currentUserReference,
                                  createTime: getCurrentTimestamp,
                                  productRef: _model.suscripcion?.reference,
                                  nombreUsuario: currentUserDisplayName,
                                ));
                            logFirebaseEvent('Container_navigate_to');

                            context.pushNamed(
                              'Confirmacion_nuevaplan',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType:
                                      PageTransitionType.rightToLeft,
                                ),
                              },
                            );

                            safeSetState(() {});
                          },
                          child: Container(
                            width: double.infinity,
                            height: 186.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x33000000),
                                  offset: Offset(3.0, 0.0),
                                  spreadRadius: 4.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: '${_model.susc}' == 'suscripciones'
                                    ? FlutterFlowTheme.of(context).secondary
                                    : Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Plan Mecenas',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'No es necesario Ingresar Tarjeta.\n\nHaga click AQUI  y Te contactaremos\n',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Text(
                                    '2.99 USD / MES',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: const Color(0xFFFC0404),
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Container(
                            width: double.infinity,
                            height: 159.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    3.0,
                                    0.0,
                                  ),
                                  spreadRadius: 4.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Plan Anual',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'Este plan aún no se encuentra disponible',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '24.99 USD',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Text(
                                          '¡Ahorra 80%!',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 10.0))
                                    .around(const SizedBox(height: 10.0)),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.3,
                          child: Container(
                            width: double.infinity,
                            height: 159.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Color(0x33000000),
                                  offset: Offset(3.0, 0.0),
                                  spreadRadius: 4.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Plan Mensual',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    'Este plan aún no se encuentra disponible',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '2.99 USD',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tabletLandscape: false,
                                      ))
                                        Text(
                                          '¡Ahorra 80%!',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                    ].divide(const SizedBox(width: 10.0)),
                                  ),
                                ]
                                    .divide(const SizedBox(height: 10.0))
                                    .around(const SizedBox(height: 10.0)),
                              ),
                            ),
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 21.0))
                          .around(const SizedBox(height: 21.0)),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 31.0, 16.0, 15.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Continuar',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 49.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).secondary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                      ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('PLANES_PAGE_CANCELAR_BTN_ON_TAP');
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed('inicio');
                        },
                        text: 'Cancelar',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 49.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).primaryText,
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
