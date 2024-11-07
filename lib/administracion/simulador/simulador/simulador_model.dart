import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'simulador_widget.dart' show SimuladorWidget;
import 'package:flutter/material.dart';

class SimuladorModel extends FlutterFlowModel<SimuladorWidget> {
  ///  Local state fields for this page.

  List<FormacionesRecord> setSImulador = [];
  void addToSetSImulador(FormacionesRecord item) => setSImulador.add(item);
  void removeFromSetSImulador(FormacionesRecord item) =>
      setSImulador.remove(item);
  void removeAtIndexFromSetSImulador(int index) => setSImulador.removeAt(index);
  void insertAtIndexInSetSImulador(int index, FormacionesRecord item) =>
      setSImulador.insert(index, item);
  void updateSetSImuladorAtIndex(
          int index, Function(FormacionesRecord) updateFn) =>
      setSImulador[index] = updateFn(setSImulador[index]);

  List<ResultadosRecord> setCombinaciones = [];
  void addToSetCombinaciones(ResultadosRecord item) =>
      setCombinaciones.add(item);
  void removeFromSetCombinaciones(ResultadosRecord item) =>
      setCombinaciones.remove(item);
  void removeAtIndexFromSetCombinaciones(int index) =>
      setCombinaciones.removeAt(index);
  void insertAtIndexInSetCombinaciones(int index, ResultadosRecord item) =>
      setCombinaciones.insert(index, item);
  void updateSetCombinacionesAtIndex(
          int index, Function(ResultadosRecord) updateFn) =>
      setCombinaciones[index] = updateFn(setCombinaciones[index]);

  int index = 0;

  ///  State fields for stateful widgets in this page.

  // Model for sidenav component.
  late SidenavModel sidenavModel;

  @override
  void initState(BuildContext context) {
    sidenavModel = createModel(context, () => SidenavModel());
  }

  @override
  void dispose() {
    sidenavModel.dispose();
  }
}
