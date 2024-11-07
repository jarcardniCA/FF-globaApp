import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'slider_categ_model.dart';
export 'slider_categ_model.dart';

class SliderCategWidget extends StatefulWidget {
  const SliderCategWidget({
    super.key,
    this.refCat,
  });

  final DocumentReference? refCat;

  @override
  State<SliderCategWidget> createState() => _SliderCategWidgetState();
}

class _SliderCategWidgetState extends State<SliderCategWidget> {
  late SliderCategModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SliderCategModel());

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
      height: 200.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
      ),
      child: StreamBuilder<List<InformacionCategoriaRecord>>(
        stream: queryInformacionCategoriaRecord(
          queryBuilder: (informacionCategoriaRecord) =>
              informacionCategoriaRecord.where(
            'categoriaRef',
            isEqualTo: widget.refCat,
          ),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<InformacionCategoriaRecord>
              pageViewInformacionCategoriaRecordList = snapshot.data!;

          return SizedBox(
            width: double.infinity,
            height: 500.0,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                  child: PageView.builder(
                    controller: _model.pageViewController ??= PageController(
                        initialPage: max(
                            0,
                            min(
                                0,
                                pageViewInformacionCategoriaRecordList.length -
                                    1))),
                    scrollDirection: Axis.horizontal,
                    itemCount: pageViewInformacionCategoriaRecordList.length,
                    itemBuilder: (context, pageViewIndex) {
                      final pageViewInformacionCategoriaRecord =
                          pageViewInformacionCategoriaRecordList[pageViewIndex];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pageViewInformacionCategoriaRecord.titulo,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            pageViewInformacionCategoriaRecord.descripcion,
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ].divide(const SizedBox(height: 25.0)),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                    child: smooth_page_indicator.SmoothPageIndicator(
                      controller: _model.pageViewController ??= PageController(
                          initialPage: max(
                              0,
                              min(
                                  0,
                                  pageViewInformacionCategoriaRecordList
                                          .length -
                                      1))),
                      count: pageViewInformacionCategoriaRecordList.length,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) async {
                        await _model.pageViewController!.animateToPage(
                          i,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                        safeSetState(() {});
                      },
                      effect: smooth_page_indicator.ExpandingDotsEffect(
                        expansionFactor: 3.0,
                        spacing: 8.0,
                        radius: 16.0,
                        dotWidth: 16.0,
                        dotHeight: 8.0,
                        dotColor: FlutterFlowTheme.of(context).accent1,
                        activeDotColor: FlutterFlowTheme.of(context).primary,
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
