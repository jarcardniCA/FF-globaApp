import '/flutter_flow/flutter_flow_util.dart';
import 'preguntas_widget.dart' show PreguntasWidget;
import 'package:flutter/material.dart';

class PreguntasModel extends FlutterFlowModel<PreguntasWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for opcion1 widget.
  FocusNode? opcion1FocusNode;
  TextEditingController? opcion1TextController;
  String? Function(BuildContext, String?)? opcion1TextControllerValidator;
  // State field(s) for opcion2 widget.
  FocusNode? opcion2FocusNode;
  TextEditingController? opcion2TextController;
  String? Function(BuildContext, String?)? opcion2TextControllerValidator;
  // State field(s) for opcion3 widget.
  FocusNode? opcion3FocusNode;
  TextEditingController? opcion3TextController;
  String? Function(BuildContext, String?)? opcion3TextControllerValidator;
  // State field(s) for opcion4 widget.
  FocusNode? opcion4FocusNode;
  TextEditingController? opcion4TextController;
  String? Function(BuildContext, String?)? opcion4TextControllerValidator;
  // State field(s) for opcion1_multiple widget.
  FocusNode? opcion1MultipleFocusNode;
  TextEditingController? opcion1MultipleTextController;
  String? Function(BuildContext, String?)?
      opcion1MultipleTextControllerValidator;
  // State field(s) for opcion2_multiple widget.
  FocusNode? opcion2MultipleFocusNode;
  TextEditingController? opcion2MultipleTextController;
  String? Function(BuildContext, String?)?
      opcion2MultipleTextControllerValidator;
  // State field(s) for opcion3_multiple widget.
  FocusNode? opcion3MultipleFocusNode;
  TextEditingController? opcion3MultipleTextController;
  String? Function(BuildContext, String?)?
      opcion3MultipleTextControllerValidator;
  // State field(s) for opcion4_multiple widget.
  FocusNode? opcion4MultipleFocusNode;
  TextEditingController? opcion4MultipleTextController;
  String? Function(BuildContext, String?)?
      opcion4MultipleTextControllerValidator;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // State field(s) for cudrantes1 widget.
  FocusNode? cudrantes1FocusNode;
  TextEditingController? cudrantes1TextController;
  String? Function(BuildContext, String?)? cudrantes1TextControllerValidator;
  // State field(s) for cuadrantes22 widget.
  FocusNode? cuadrantes22FocusNode;
  TextEditingController? cuadrantes22TextController;
  String? Function(BuildContext, String?)? cuadrantes22TextControllerValidator;
  // State field(s) for cuadrantes3 widget.
  FocusNode? cuadrantes3FocusNode;
  TextEditingController? cuadrantes3TextController;
  String? Function(BuildContext, String?)? cuadrantes3TextControllerValidator;
  // State field(s) for cuadrantes4 widget.
  FocusNode? cuadrantes4FocusNode;
  TextEditingController? cuadrantes4TextController;
  String? Function(BuildContext, String?)? cuadrantes4TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    opcion1FocusNode?.dispose();
    opcion1TextController?.dispose();

    opcion2FocusNode?.dispose();
    opcion2TextController?.dispose();

    opcion3FocusNode?.dispose();
    opcion3TextController?.dispose();

    opcion4FocusNode?.dispose();
    opcion4TextController?.dispose();

    opcion1MultipleFocusNode?.dispose();
    opcion1MultipleTextController?.dispose();

    opcion2MultipleFocusNode?.dispose();
    opcion2MultipleTextController?.dispose();

    opcion3MultipleFocusNode?.dispose();
    opcion3MultipleTextController?.dispose();

    opcion4MultipleFocusNode?.dispose();
    opcion4MultipleTextController?.dispose();

    cudrantes1FocusNode?.dispose();
    cudrantes1TextController?.dispose();

    cuadrantes22FocusNode?.dispose();
    cuadrantes22TextController?.dispose();

    cuadrantes3FocusNode?.dispose();
    cuadrantes3TextController?.dispose();

    cuadrantes4FocusNode?.dispose();
    cuadrantes4TextController?.dispose();
  }
}
