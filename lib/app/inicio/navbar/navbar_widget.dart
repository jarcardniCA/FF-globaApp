import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'navbar_model.dart';
export 'navbar_model.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({
    super.key,
    required this.pagename,
  });

  final String? pagename;

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  late NavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavbarModel());

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
      width: double.infinity,
      height: 78.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 6.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              1.0,
            ),
          )
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('NAVBAR_COMP_Column_3ptsfqj1_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FFIcons.kplay,
                    color: widget.pagename == 'camino'
                        ? FlutterFlowTheme.of(context).secondary
                        : FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
                  ),
                  Text(
                    'El Camino',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: widget.pagename == 'camino'
                              ? FlutterFlowTheme.of(context).secondary
                              : FlutterFlowTheme.of(context).tertiary,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 6.0)),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('NAVBAR_COMP_Column_w70atm2d_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed(
                  'inicio-simulador',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FFIcons.kdocument,
                    color: widget.pagename == 'simulador'
                        ? FlutterFlowTheme.of(context).secondary
                        : FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
                  ),
                  Text(
                    'Simulador',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: widget.pagename == 'simulador'
                              ? FlutterFlowTheme.of(context).secondary
                              : FlutterFlowTheme.of(context).tertiary,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 6.0)),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('NAVBAR_COMP_Column_bhfnnn2o_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed(
                  'ranking',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FFIcons.kdocument,
                    color: widget.pagename == 'ranking'
                        ? FlutterFlowTheme.of(context).secondary
                        : FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
                  ),
                  Text(
                    'Ranking',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: widget.pagename == 'ranking'
                              ? FlutterFlowTheme.of(context).secondary
                              : FlutterFlowTheme.of(context).tertiary,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 6.0)),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('NAVBAR_COMP_Column_npbnoimb_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed(
                  'Ajustes',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FFIcons.ksetting,
                    color: widget.pagename == 'ajustes'
                        ? FlutterFlowTheme.of(context).secondary
                        : FlutterFlowTheme.of(context).tertiary,
                    size: 20.0,
                  ),
                  Text(
                    'Ajustes',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Montserrat',
                          color: widget.pagename == 'ajustes'
                              ? FlutterFlowTheme.of(context).secondary
                              : FlutterFlowTheme.of(context).tertiary,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 6.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
