import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'text_model.dart';
export 'text_model.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  late TextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 100.0,
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 30.0, 0.0),
        child: TextFormField(
          controller: _model.textController,
          focusNode: _model.textFieldFocusNode,
          autofocus: true,
          obscureText: false,
          decoration: InputDecoration(
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Montserrat',
                  letterSpacing: 0.0,
                ),
            hintText: widget.parameter1,
            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Montserrat',
                letterSpacing: 0.0,
              ),
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
