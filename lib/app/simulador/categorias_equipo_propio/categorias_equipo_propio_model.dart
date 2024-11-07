import '/flutter_flow/flutter_flow_util.dart';
import 'categorias_equipo_propio_widget.dart' show CategoriasEquipoPropioWidget;
import 'package:flutter/material.dart';

class CategoriasEquipoPropioModel
    extends FlutterFlowModel<CategoriasEquipoPropioWidget> {
  ///  Local state fields for this page.

  int? avanzar;

  int? indice;

  String? titulo;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
