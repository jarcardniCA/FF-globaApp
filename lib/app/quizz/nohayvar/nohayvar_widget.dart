import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nohayvar_model.dart';
export 'nohayvar_model.dart';

class NohayvarWidget extends StatefulWidget {
  const NohayvarWidget({super.key});

  @override
  State<NohayvarWidget> createState() => _NohayvarWidgetState();
}

class _NohayvarWidgetState extends State<NohayvarWidget> {
  late NohayvarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NohayvarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
        child: Container(
          width: double.infinity,
          height: 320.0,
          constraints: const BoxConstraints(
            maxWidth: 530.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 3.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).primaryBackground,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 10.0,
                        borderWidth: 1.0,
                        buttonSize: 36.0,
                        fillColor: FlutterFlowTheme.of(context).secondary,
                        icon: Icon(
                          Icons.close_rounded,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'NOHAYVAR_COMP_close_rounded_ICN_ON_TAP');
                          logFirebaseEvent(
                              'IconButton_close_dialog_drawer_etc');
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 12.0,
                  thickness: 1.0,
                  indent: 16.0,
                  endIndent: 16.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'La pista es la siguiente',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'No hay pistas',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Montserrat',
                                    letterSpacing: 0.0,
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
