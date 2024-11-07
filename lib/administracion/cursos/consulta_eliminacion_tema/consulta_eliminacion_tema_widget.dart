import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'consulta_eliminacion_tema_model.dart';
export 'consulta_eliminacion_tema_model.dart';

class ConsultaEliminacionTemaWidget extends StatefulWidget {
  const ConsultaEliminacionTemaWidget({
    super.key,
    required this.topic,
  });

  final DocumentReference? topic;

  @override
  State<ConsultaEliminacionTemaWidget> createState() =>
      _ConsultaEliminacionTemaWidgetState();
}

class _ConsultaEliminacionTemaWidgetState
    extends State<ConsultaEliminacionTemaWidget> {
  late ConsultaEliminacionTemaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConsultaEliminacionTemaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 787.0,
      height: 545.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).alternate,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    borderWidth: 0.0,
                    buttonSize: 49.0,
                    fillColor: FlutterFlowTheme.of(context).secondary,
                    icon: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).alternate,
                      size: 29.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'CONSULTA_ELIMINACION_TEMA_close_ICN_ON_T');
                      logFirebaseEvent('IconButton_close_dialog_drawer_etc');
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Flexible(
              child: Container(
                width: 629.0,
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 84.0,
                      height: 84.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondary,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: FaIcon(
                          FontAwesomeIcons.check,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 34.0,
                        ),
                      ),
                    ),
                    Text(
                      '¿Estás seguro que deseas eliminar este tema?',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Montserrat',
                            fontSize: 36.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'CONSULTA_ELIMINACION_TEMA_CONFIRMAR_BTN_');
                        logFirebaseEvent('Button_backend_call');
                        await widget.topic!.delete();
                        logFirebaseEvent('Button_close_dialog_drawer_etc');
                        Navigator.pop(context);
                      },
                      text: 'Confirmar',
                      options: FFButtonOptions(
                        width: 264.0,
                        height: 54.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'CONSULTA_ELIMINACION_TEMA_CANCELAR_BTN_O');
                        logFirebaseEvent('Button_close_dialog_drawer_etc');
                        Navigator.pop(context);
                      },
                      text: 'Cancelar',
                      options: FFButtonOptions(
                        width: 264.0,
                        height: 54.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ].divide(const SizedBox(height: 30.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
