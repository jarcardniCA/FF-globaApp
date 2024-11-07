import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'confirmacion_nuevaplan_model.dart';
export 'confirmacion_nuevaplan_model.dart';

class ConfirmacionNuevaplanWidget extends StatefulWidget {
  const ConfirmacionNuevaplanWidget({super.key});

  @override
  State<ConfirmacionNuevaplanWidget> createState() =>
      _ConfirmacionNuevaplanWidgetState();
}

class _ConfirmacionNuevaplanWidgetState
    extends State<ConfirmacionNuevaplanWidget> {
  late ConfirmacionNuevaplanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmacionNuevaplanModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Confirmacion_nuevaplan'});
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
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: const Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ),
                ),
                Container(
                  width: 321.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 90.0,
                        height: 90.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 6.0,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.check,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 43.0,
                          ),
                        ),
                      ),
                      Text(
                        '¡Muchas gracias por unirte a nuestra comunidad!',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        'Cuando lancemos la aplicación, nos pondremos en contacto contigo',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ].divide(const SizedBox(height: 17.0)),
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 31.0, 16.0, 31.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'CONFIRMACION_NUEVAPLAN_REGRESAR_BTN_ON_T');
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed(
                              'inicio',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          text: 'Regresar',
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
                    ],
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
