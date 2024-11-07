import '/flutter_flow/flutter_flow_util.dart';
import 'registrar_widget.dart' show RegistrarWidget;
import 'package:flutter/material.dart';

class RegistrarModel extends FlutterFlowModel<RegistrarWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'No es un formato de email valido';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 8) {
      return 'Tu contraseña tiene que tener un minimo 8 caracteres';
    }

    return null;
  }

  // State field(s) for passwordconfirm widget.
  FocusNode? passwordconfirmFocusNode;
  TextEditingController? passwordconfirmTextController;
  late bool passwordconfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordconfirmTextControllerValidator;
  String? _passwordconfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    if (val.length < 8) {
      return 'Tu contraseña tiene que tener un minimo 8 caracteres';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    passwordconfirmVisibility = false;
    passwordconfirmTextControllerValidator =
        _passwordconfirmTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordconfirmFocusNode?.dispose();
    passwordconfirmTextController?.dispose();
  }
}
