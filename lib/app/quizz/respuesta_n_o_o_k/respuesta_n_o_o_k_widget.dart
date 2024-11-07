import '/app/perfil/precrompra_aviso/precrompra_aviso_widget.dart';
import '/app/quizz/aviso_erroes/aviso_erroes_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'respuesta_n_o_o_k_model.dart';
export 'respuesta_n_o_o_k_model.dart';

class RespuestaNOOKWidget extends StatefulWidget {
  const RespuestaNOOKWidget({
    super.key,
    this.errorMessage,
    required this.onBack,
    this.onContinue,
  });

  final String? errorMessage;
  final Future Function()? onBack;
  final Future Function()? onContinue;

  @override
  State<RespuestaNOOKWidget> createState() => _RespuestaNOOKWidgetState();
}

class _RespuestaNOOKWidgetState extends State<RespuestaNOOKWidget> {
  late RespuestaNOOKModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RespuestaNOOKModel());

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

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).error,
                      borderRadius: 8.0,
                      borderWidth: 0.0,
                      buttonSize: 30.0,
                      fillColor: FlutterFlowTheme.of(context).error,
                      icon: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 13.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'RESPUESTA_N_O_O_K_COMP_close_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_close_dialog_drawer_etc');
                        Navigator.pop(context);
                        logFirebaseEvent('IconButton_execute_callback');
                        await widget.onBack?.call();
                      },
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Repuesta Incorrecta',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).error,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 11.0)),
                ),
              ),
              if (widget.errorMessage != null && widget.errorMessage != '')
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    widget.errorMessage!,
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).alternate,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Builder(
                      builder: (context) => FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'RESPUESTA_N_O_O_K_VOLVER_A_RESPONDER_BTN');
                          logFirebaseEvent('Button_close_dialog_drawer_etc');
                          Navigator.pop(context);
                          if (!valueOrDefault<bool>(
                              currentUserDocument?.usuarioPremium, false)) {
                            if (FFAppState().userErrors >=
                                FFAppConstants.userErrorMax) {
                              logFirebaseEvent('Button_update_app_state');
                              FFAppState().userErrors = 0;
                              FFAppState().userLives = 0;
                              safeSetState(() {});
                              logFirebaseEvent('Button_execute_callback');
                              await widget.onBack?.call();
                              logFirebaseEvent('Button_alert_dialog');
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: const AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: const PrecrompraAvisoWidget(),
                                  );
                                },
                              );
                            } else {
                              logFirebaseEvent('Button_update_app_state');
                              FFAppState().userErrors =
                                  FFAppState().userErrors + 1;
                              FFAppState().userLives =
                                  FFAppState().userLives + -1;
                              safeSetState(() {});
                              if (FFAppState().userErrors == 3) {
                                logFirebaseEvent('Button_alert_dialog');
                                await showDialog(
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: const AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: const AvisoErroesWidget(),
                                    );
                                  },
                                );
                              } else {
                                logFirebaseEvent('Button_execute_callback');
                                await widget.onBack?.call();
                              }
                            }

                            return;
                          } else {
                            return;
                          }
                        },
                        text: 'Volver a responder',
                        options: FFButtonOptions(
                          width: 370.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).secondary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
              if (valueOrDefault<bool>(
                  currentUserDocument?.usuarioPremium, false))
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'RESPUESTA_N_O_O_K_CONTINUAR_BTN_ON_TAP');
                              logFirebaseEvent('Button_execute_callback');
                              await widget.onContinue?.call();
                              logFirebaseEvent(
                                  'Button_close_dialog_drawer_etc');
                              Navigator.pop(context);
                            },
                            text: 'Continuar',
                            options: FFButtonOptions(
                              width: 390.0,
                              height: 50.0,
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
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
