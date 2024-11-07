import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'prueba_widget.dart' show PruebaWidget;
import 'package:flutter/material.dart';

class PruebaModel extends FlutterFlowModel<PruebaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 7200000;
  int timerMilliseconds = 7200000;
  String timerValue =
      StopWatchTimer.getDisplayTime(7200000, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
