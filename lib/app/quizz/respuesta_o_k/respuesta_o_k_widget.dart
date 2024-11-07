import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'respuesta_o_k_model.dart';
export 'respuesta_o_k_model.dart';

class RespuestaOKWidget extends StatefulWidget {
  const RespuestaOKWidget({
    super.key,
    required this.onContinue,
  });

  final Future Function()? onContinue;

  @override
  State<RespuestaOKWidget> createState() => _RespuestaOKWidgetState();
}

class _RespuestaOKWidgetState extends State<RespuestaOKWidget> {
  late RespuestaOKModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RespuestaOKModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        height: 160.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryText,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    borderWidth: 0.0,
                    buttonSize: 30.0,
                    fillColor: const Color(0xFF5BF9B6),
                    icon: Icon(
                      Icons.check,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 13.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('RESPUESTA_O_K_COMP_check_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_execute_callback');
                      await widget.onContinue?.call();
                      logFirebaseEvent('IconButton_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Repuesta Correcta',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            color: const Color(0xFF5BF9B6),
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ].divide(const SizedBox(width: 11.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'RESPUESTA_O_K_COMP_CONTINUAR_BTN_ON_TAP');
                      logFirebaseEvent('Button_execute_callback');
                      await widget.onContinue?.call();
                      logFirebaseEvent('Button_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                    text: 'Continuar',
                    options: FFButtonOptions(
                      width: 370.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
