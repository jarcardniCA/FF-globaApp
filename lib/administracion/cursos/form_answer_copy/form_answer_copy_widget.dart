import '/administracion/cursos/form_answer_edit_image/form_answer_edit_image_widget.dart';
import '/administracion/cursos/form_answer_edit_text/form_answer_edit_text_widget.dart';
import '/app/quizz/nohayvar/nohayvar_widget.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'form_answer_copy_model.dart';
export 'form_answer_copy_model.dart';

class FormAnswerCopyWidget extends StatefulWidget {
  const FormAnswerCopyWidget({
    super.key,
    required this.answerType,
    required this.answerList,
    required this.answerCorrectIndex,
    required this.onAnswerTypeChange,
    required this.onSelectAnswerCorrect,
    required this.onChangeAnswerList,
    required this.elegirTypo,
    required this.onChangeAnswer,
  });

  final String? answerType;
  final List<AnswerStruct>? answerList;
  final int? answerCorrectIndex;
  final Future Function(String answerType, int score, int answerCorrectIndex)?
      onAnswerTypeChange;
  final Future Function(int answerCorrectIndex)? onSelectAnswerCorrect;
  final Future Function(List<AnswerStruct> answerList)? onChangeAnswerList;
  final String? elegirTypo;
  final Future Function(AnswerStruct answer, int index)? onChangeAnswer;

  @override
  State<FormAnswerCopyWidget> createState() => _FormAnswerCopyWidgetState();
}

class _FormAnswerCopyWidgetState extends State<FormAnswerCopyWidget> {
  late FormAnswerCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormAnswerCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FORM_ANSWER_COPY_formAnswerCopy_ON_INIT_');
      logFirebaseEvent('formAnswerCopy_update_component_state');
      _model.componentAnswerList =
          widget.answerList!.toList().cast<AnswerStruct>();
      _model.answerType = widget.answerType!;
      _model.updatePage(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 447.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: SingleChildScrollView(
        primary: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 11.0),
                  child: Text(
                    'Tipo de pregunta',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
            FlutterFlowDropDown<String>(
              controller: _model.dropDownValueController ??=
                  FormFieldController<String>(
                _model.dropDownValue ??= widget.answerType,
              ),
              options: List<String>.from(
                  QuestionType.values.map((e) => e.name).toList()),
              optionLabels:
                  QuestionTypeLabels.values.map((e) => e.name).toList(),
              onChanged: (val) async {
                safeSetState(() => _model.dropDownValue = val);
                logFirebaseEvent('FORM_ANSWER_COPY_DropDown_t8f6gqsz_ON_FO');
                logFirebaseEvent('DropDown_update_component_state');
                _model.answerType = _model.dropDownValue!;
                safeSetState(() {});
                if (_model.answerType ==
                    QuestionType.SIMPLE_SELECTION.name) {
                  logFirebaseEvent('DropDown_update_component_state');
                  _model.componentAnswerList = FFAppState()
                      .defaultAnswerForSimpleSelection
                      .toList()
                      .cast<AnswerStruct>();
                  safeSetState(() {});
                  logFirebaseEvent('DropDown_execute_callback');
                  await widget.onChangeAnswerList?.call(
                    _model.componentAnswerList,
                  );
                  logFirebaseEvent('DropDown_execute_callback');
                  await widget.onAnswerTypeChange?.call(
                    _model.answerType,
                    FFAppConstants.scoreForSimpleSelection,
                    0,
                  );
                } else {
                  if (_model.answerType == QuestionType.TRUE_FALSE.name) {
                    logFirebaseEvent('DropDown_update_component_state');
                    _model.componentAnswerList = FFAppState()
                        .defaultAnswerForTrueFalse
                        .toList()
                        .cast<AnswerStruct>();
                    safeSetState(() {});
                    logFirebaseEvent('DropDown_execute_callback');
                    await widget.onChangeAnswerList?.call(
                      _model.componentAnswerList,
                    );
                    logFirebaseEvent('DropDown_execute_callback');
                    await widget.onAnswerTypeChange?.call(
                      _model.answerType,
                      FFAppConstants.scoreForTrueFalse,
                      0,
                    );
                  } else {
                    if (_model.answerType ==
                        QuestionType.IMAGE_SELECTION.name) {
                      logFirebaseEvent('DropDown_update_component_state');
                      _model.componentAnswerList = FFAppState()
                          .defaultAnswerForImageSelection
                          .toList()
                          .cast<AnswerStruct>();
                      safeSetState(() {});
                      logFirebaseEvent('DropDown_execute_callback');
                      await widget.onChangeAnswerList?.call(
                        _model.componentAnswerList,
                      );
                      logFirebaseEvent('DropDown_execute_callback');
                      await widget.onAnswerTypeChange?.call(
                        _model.answerType,
                        FFAppConstants.scoreForImageSelection,
                        0,
                      );
                    } else {
                      if (_model.answerType ==
                          QuestionType.CUADRANTE.name) {
                        logFirebaseEvent('DropDown_update_component_state');
                        _model.componentAnswerList = [];
                        safeSetState(() {});
                        logFirebaseEvent('DropDown_execute_callback');
                        await widget.onChangeAnswerList?.call(
                          _model.componentAnswerList,
                        );
                        logFirebaseEvent('DropDown_execute_callback');
                        await widget.onAnswerTypeChange?.call(
                          _model.answerType,
                          FFAppConstants.scoreForCuadrante,
                          0,
                        );
                      } else {
                        if (widget.answerType ==
                            QuestionType.SIMPLE_SELECTION_IMAGE.name) {
                          logFirebaseEvent('DropDown_update_component_state');
                          _model.componentAnswerList = [];
                          safeSetState(() {});
                          logFirebaseEvent('DropDown_execute_callback');
                          await widget.onChangeAnswerList?.call(
                            _model.componentAnswerList,
                          );
                          logFirebaseEvent('DropDown_execute_callback');
                          await widget.onAnswerTypeChange?.call(
                            _model.answerType,
                            FFAppConstants.scoreForSimpleSelection,
                            0,
                          );
                        }
                      }
                    }
                  }
                }

                logFirebaseEvent('DropDown_update_app_state');

                FFAppState().update(() {});
              },
              height: 56.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Montserrat',
                    letterSpacing: 0.0,
                  ),
              hintText: 'Seleccionar',
              icon: Icon(
                Icons.arrow_drop_down_circle_rounded,
                color: FlutterFlowTheme.of(context).secondary,
                size: 24.0,
              ),
              fillColor: FlutterFlowTheme.of(context).alternate,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
              hidesUnderline: true,
              isOverButton: true,
              isSearchable: false,
              isMultiSelect: false,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.info_outline,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'FORM_ANSWER_COPY_info_outline_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_alert_dialog');
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Opcionpes de respuesta'),
                            content: const Text(
                                'Opciones que el usuario puede elegir para responder.'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (_model.dropDownValue == 'CUADRANTE')
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (_model.dropDownValue == 'CUADRANTE')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Subir archivo multimedia',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          if (_model.dropDownValue == 'CUADRANTE')
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'FORM_ANSWER_COPY_COMP_FOTO_SUBIR_ON_TAP');
                                        logFirebaseEvent(
                                            'FOTO_SUBIR_upload_media_to_firebase');
                                        final selectedMedia =
                                            await selectMediaWithSourceBottomSheet(
                                          context: context,
                                          maxWidth: 359.00,
                                          allowPhoto: true,
                                          includeDimensions: true,
                                        );
                                        if (selectedMedia != null &&
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          safeSetState(() =>
                                              _model.isDataUploading1 = true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];

                                          var downloadUrls = <String>[];
                                          try {
                                            showUploadMessage(
                                              context,
                                              'Uploading file...',
                                              showLoading: true,
                                            );
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
                                                          blurHash: m.blurHash,
                                                        ))
                                                    .toList();

                                            downloadUrls = (await Future.wait(
                                              selectedMedia.map(
                                                (m) async => await uploadData(
                                                    m.storagePath, m.bytes),
                                              ),
                                            ))
                                                .where((u) => u != null)
                                                .map((u) => u!)
                                                .toList();
                                          } finally {
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            _model.isDataUploading1 = false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                                  selectedMedia.length &&
                                              downloadUrls.length ==
                                                  selectedMedia.length) {
                                            safeSetState(() {
                                              _model.uploadedLocalFile1 =
                                                  selectedUploadedFiles.first;
                                              _model.uploadedFileUrl1 =
                                                  downloadUrls.first;
                                            });
                                            showUploadMessage(
                                                context, 'Success!');
                                          } else {
                                            safeSetState(() {});
                                            showUploadMessage(context,
                                                'Failed to upload data');
                                            return;
                                          }
                                        }
                                      },
                                      text: 'Subir foto',
                                      options: FFButtonOptions(
                                        width: 447.0,
                                        height: 54.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 2.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 27.0)),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 11.0),
                                  child: Text(
                                    'Cuadrantes correctos',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          FlutterFlowDropDown<String>(
                            multiSelectController:
                                _model.dropDownCuadrantesValueController ??=
                                    FormListFieldController<String>(
                                        _model.dropDownCuadrantesValue ??=
                                            List<String>.from(
                              _model.emptyListNODELETE ?? [],
                            )),
                            options: functions.cuadrantesIndexes30(),
                            width: double.infinity,
                            height: 56.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'Seleccionar',
                            icon: Icon(
                              Icons.arrow_drop_down_circle_rounded,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: true,
                            onMultiSelectChanged: (val) => safeSetState(
                                () => _model.dropDownCuadrantesValue = val),
                          ),
                        ],
                      ),
                    if (_model.dropDownValue == 'Seleccion_simple_con_imagenes')
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 34.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Subir archivo multimedia',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'FORM_ANSWER_COPY_COMP_VIDEO_SUBIR_ON_TAP');
                                          logFirebaseEvent(
                                              'VIDEO_SUBIR_upload_media_to_firebase');
                                          final selectedMedia =
                                              await selectMediaWithSourceBottomSheet(
                                            context: context,
                                            allowPhoto: false,
                                            allowVideo: true,
                                          );
                                          if (selectedMedia != null &&
                                              selectedMedia.every((m) =>
                                                  validateFileFormat(
                                                      m.storagePath,
                                                      context))) {
                                            safeSetState(() =>
                                                _model.isDataUploading2 = true);
                                            var selectedUploadedFiles =
                                                <FFUploadedFile>[];

                                            var downloadUrls = <String>[];
                                            try {
                                              showUploadMessage(
                                                context,
                                                'Uploading file...',
                                                showLoading: true,
                                              );
                                              selectedUploadedFiles =
                                                  selectedMedia
                                                      .map(
                                                          (m) => FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                      .toList();

                                              downloadUrls = (await Future.wait(
                                                selectedMedia.map(
                                                  (m) async => await uploadData(
                                                      m.storagePath, m.bytes),
                                                ),
                                              ))
                                                  .where((u) => u != null)
                                                  .map((u) => u!)
                                                  .toList();
                                            } finally {
                                              ScaffoldMessenger.of(context)
                                                  .hideCurrentSnackBar();
                                              _model.isDataUploading2 = false;
                                            }
                                            if (selectedUploadedFiles.length ==
                                                    selectedMedia.length &&
                                                downloadUrls.length ==
                                                    selectedMedia.length) {
                                              safeSetState(() {
                                                _model.uploadedLocalFile2 =
                                                    selectedUploadedFiles.first;
                                                _model.uploadedFileUrl2 =
                                                    downloadUrls.first;
                                              });
                                              showUploadMessage(
                                                  context, 'Success!');
                                            } else {
                                              safeSetState(() {});
                                              showUploadMessage(context,
                                                  'Failed to upload data');
                                              return;
                                            }
                                          }
                                        },
                                        text: 'Subir Video',
                                        options: FFButtonOptions(
                                          width: 447.0,
                                          height: 54.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 2.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(40.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'FORM_ANSWER_COPY_COMP_FOTO_SUBIR_ON_TAP');
                                        logFirebaseEvent(
                                            'FOTO_SUBIR_upload_media_to_firebase');
                                        final selectedMedia =
                                            await selectMediaWithSourceBottomSheet(
                                          context: context,
                                          allowPhoto: true,
                                        );
                                        if (selectedMedia != null &&
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          safeSetState(() =>
                                              _model.isDataUploading3 = true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];

                                          var downloadUrls = <String>[];
                                          try {
                                            showUploadMessage(
                                              context,
                                              'Uploading file...',
                                              showLoading: true,
                                            );
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
                                                          blurHash: m.blurHash,
                                                        ))
                                                    .toList();

                                            downloadUrls = (await Future.wait(
                                              selectedMedia.map(
                                                (m) async => await uploadData(
                                                    m.storagePath, m.bytes),
                                              ),
                                            ))
                                                .where((u) => u != null)
                                                .map((u) => u!)
                                                .toList();
                                          } finally {
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            _model.isDataUploading3 = false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                                  selectedMedia.length &&
                                              downloadUrls.length ==
                                                  selectedMedia.length) {
                                            safeSetState(() {
                                              _model.uploadedLocalFile3 =
                                                  selectedUploadedFiles.first;
                                              _model.uploadedFileUrl3 =
                                                  downloadUrls.first;
                                            });
                                            showUploadMessage(
                                                context, 'Success!');
                                          } else {
                                            safeSetState(() {});
                                            showUploadMessage(context,
                                                'Failed to upload data');
                                            return;
                                          }
                                        }
                                      },
                                      text: 'Subir foto',
                                      options: FFButtonOptions(
                                        width: 447.0,
                                        height: 54.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 2.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 27.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if ((_model.dropDownValue == 'Verdadero_o_falso') &&
                        (_model.dropDownValue == 'Verdadero_o_falso') &&
                        (_model.dropDownValue ==
                            'Seleccion_simple_con_imagenes'))
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 34.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Opciones',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                final simpleSelection =
                                    widget.answerList!.toList();
                                if (simpleSelection.isEmpty) {
                                  return const NohayvarWidget();
                                }

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: simpleSelection.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 10.0),
                                  itemBuilder: (context, simpleSelectionIndex) {
                                    final simpleSelectionItem =
                                        simpleSelection[simpleSelectionIndex];
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'FORM_ANSWER_COPY_Row_jpip8z9y_ON_TAP');
                                              logFirebaseEvent(
                                                  'Row_execute_callback');
                                              await widget.onSelectAnswerCorrect
                                                  ?.call(
                                                simpleSelectionIndex,
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                if (simpleSelectionIndex ==
                                                    widget.answerCorrectIndex)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .check_circle_outline,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                Text(
                                                  simpleSelectionItem.text,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        if (_model.dropDownValue !=
                                            'Verdadero_o_falso')
                                          Builder(
                                            builder: (context) =>
                                                FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              icon: Icon(
                                                Icons.edit,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'FORM_ANSWER_COPY_COMP_edit_ICN_ON_TAP');
                                                logFirebaseEvent(
                                                    'IconButton_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child:
                                                          FormAnswerEditTextWidget(
                                                        answer:
                                                            simpleSelectionItem,
                                                        onSave: (answer) async {
                                                          logFirebaseEvent(
                                                              '_update_app_state');
                                                          FFAppState()
                                                                  .answerTestEdited =
                                                              answer;
                                                          safeSetState(() {});
                                                        },
                                                      ),
                                                    );
                                                  },
                                                );

                                                logFirebaseEvent(
                                                    'IconButton_execute_callback');
                                                await widget.onChangeAnswer
                                                    ?.call(
                                                  FFAppState().answerTestEdited,
                                                  simpleSelectionIndex,
                                                );
                                              },
                                            ),
                                          ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    if (_model.dropDownValue ==
                        'Seleccion_multiple_con_imagenes')
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 34.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'Seleccionar Opciones',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Builder(
                                builder: (context) {
                                  final imageSelection =
                                      _model.componentAnswerList.toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: imageSelection.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 10.0),
                                    itemBuilder:
                                        (context, imageSelectionIndex) {
                                      final imageSelectionItem =
                                          imageSelection[imageSelectionIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'FORM_ANSWER_COPY_Container_wxsy112e_ON_T');
                                          logFirebaseEvent(
                                              'Container_execute_callback');
                                          await widget.onSelectAnswerCorrect
                                              ?.call(
                                            imageSelectionIndex,
                                          );
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            if (imageSelectionIndex ==
                                                                widget
                                                                    .answerCorrectIndex)
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .check_circle_outline,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Builder(
                                                            builder: (context) =>
                                                                FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  20.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              icon: Icon(
                                                                Icons.edit,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                                size: 24.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'FORM_ANSWER_COPY_COMP_edit_ICN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'IconButton_alert_dialog');
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          FormAnswerEditImageWidget(
                                                                        answer:
                                                                            imageSelectionItem,
                                                                        onSave:
                                                                            (answer) async {
                                                                          logFirebaseEvent(
                                                                              '_update_component_state');
                                                                          _model
                                                                              .updateComponentAnswerListAtIndex(
                                                                            imageSelectionIndex,
                                                                            (_) =>
                                                                                answer,
                                                                          );
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                    );
                                                                  },
                                                                );

                                                                logFirebaseEvent(
                                                                    'IconButton_execute_callback');
                                                                await widget
                                                                    .onChangeAnswerList
                                                                    ?.call(
                                                                  _model
                                                                      .componentAnswerList,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      imageSelectionItem
                                                          .imageUrl,
                                                      width: 300.0,
                                                      height: 300.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            Builder(
                              builder: (context) {
                                final imageSelection =
                                    _model.componentAnswerList.toList();

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: imageSelection.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 10.0),
                                  itemBuilder: (context, imageSelectionIndex) {
                                    final imageSelectionItem =
                                        imageSelection[imageSelectionIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'FORM_ANSWER_COPY_Container_92iylyxu_ON_T');
                                        logFirebaseEvent(
                                            'Container_execute_callback');
                                        await widget.onSelectAnswerCorrect
                                            ?.call(
                                          imageSelectionIndex,
                                        );
                                      },
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          if (imageSelectionIndex ==
                                                              widget
                                                                  .answerCorrectIndex)
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .check_circle_outline,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Builder(
                                                          builder: (context) =>
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 20.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons.edit,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .success,
                                                              size: 24.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'FORM_ANSWER_COPY_COMP_edit_ICN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'IconButton_alert_dialog');
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (dialogContext) {
                                                                  return Dialog(
                                                                    elevation:
                                                                        0,
                                                                    insetPadding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .transparent,
                                                                    alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0)
                                                                        .resolve(
                                                                            Directionality.of(context)),
                                                                    child:
                                                                        FormAnswerEditImageWidget(
                                                                      answer:
                                                                          imageSelectionItem,
                                                                      onSave:
                                                                          (answer) async {
                                                                        logFirebaseEvent(
                                                                            '_update_component_state');
                                                                        _model
                                                                            .updateComponentAnswerListAtIndex(
                                                                          imageSelectionIndex,
                                                                          (_) =>
                                                                              answer,
                                                                        );
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  );
                                                                },
                                                              );

                                                              logFirebaseEvent(
                                                                  'IconButton_execute_callback');
                                                              await widget
                                                                  .onChangeAnswerList
                                                                  ?.call(
                                                                _model
                                                                    .componentAnswerList,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    imageSelectionItem.imageUrl,
                                                    width: 300.0,
                                                    height: 300.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    if (_model.dropDownValue ==
                        QuestionType.TRUE_FALSE.name)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 34.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Builder(
                              builder: (context) {
                                final trueFalse =
                                    _model.componentAnswerList.toList();

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: trueFalse.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 10.0),
                                  itemBuilder: (context, trueFalseIndex) {
                                    final trueFalseItem =
                                        trueFalse[trueFalseIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'FORM_ANSWER_COPY_Row_ljg3b7kf_ON_TAP');
                                        logFirebaseEvent(
                                            'Row_execute_callback');
                                        await widget.onSelectAnswerCorrect
                                            ?.call(
                                          trueFalseIndex,
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (trueFalseIndex ==
                                              widget.answerCorrectIndex)
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.check_circle_outline,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                size: 24.0,
                                              ),
                                            ),
                                          Text(
                                            trueFalseItem.text,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 11.0),
                    child: Text(
                      'Respuesta correcta',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.info_outline,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'FORM_ANSWER_COPY_info_outline_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_alert_dialog');
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Respuesta correcta'),
                            content: const Text(
                                'Cuando el jugador seleccione esta respuesta se le sumara la puntuación de esta pregunta a su cuenta total.'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 11.0),
                      child: Text(
                        'La respuesta correcta es la  que esta marcada con un  check verde en las opciones de respuesta',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
