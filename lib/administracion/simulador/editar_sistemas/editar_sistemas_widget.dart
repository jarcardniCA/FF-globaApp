import '/administracion/inicio/sidenav/sidenav_widget.dart';
import '/administracion/simulador/agregar_categoria/agregar_categoria_widget.dart';
import '/administracion/simulador/agregar_datos/agregar_datos_widget.dart';
import '/administracion/simulador/confirmacion_borrador_formacion/confirmacion_borrador_formacion_widget.dart';
import '/administracion/simulador/confirmacion_formacion/confirmacion_formacion_widget.dart';
import '/administracion/simulador/consulta_eliminacion_categorias_formaciones/consulta_eliminacion_categorias_formaciones_widget.dart';
import '/administracion/simulador/consulta_eliminacion_resultados_formaciones/consulta_eliminacion_resultados_formaciones_widget.dart';
import '/administracion/simulador/consulta_eliminacion_sistema/consulta_eliminacion_sistema_widget.dart';
import '/administracion/simulador/editar_categorias/editar_categorias_widget.dart';
import '/administracion/simulador/editar_datos/editar_datos_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'editar_sistemas_model.dart';
export 'editar_sistemas_model.dart';

class EditarSistemasWidget extends StatefulWidget {
  const EditarSistemasWidget({
    super.key,
    required this.formaciones,
  });

  final DocumentReference? formaciones;

  @override
  State<EditarSistemasWidget> createState() => _EditarSistemasWidgetState();
}

class _EditarSistemasWidgetState extends State<EditarSistemasWidget>
    with TickerProviderStateMixin {
  late EditarSistemasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarSistemasModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'editar_sistemas'});

    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'sidenavOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1100.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1110.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1130.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 540.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FormacionesRecord>(
      stream: FormacionesRecord.getDocument(widget.formaciones!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final editarSistemasFormacionesRecord = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF6F4FF),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 456.0,
                      height: double.infinity,
                      decoration: const BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.sidenavModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const SidenavWidget(
                          pagename: 'Simulador',
                        ),
                      ).animateOnPageLoad(
                          animationsMap['sidenavOnPageLoadAnimation']!),
                    ),
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 1920.0,
                          ),
                          decoration: const BoxDecoration(),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 40.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 8.0,
                                            borderWidth: 0.0,
                                            buttonSize: 33.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            icon: Icon(
                                              Icons.arrow_back_ios_new,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 14.0,
                                            ),
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'EDITAR_SISTEMAS_arrow_back_ios_new_ICN_O');
                                              logFirebaseEvent(
                                                  'IconButton_navigate_back');
                                              context.safePop();
                                            },
                                          ),
                                          Text(
                                            'Editar sistema de equipo',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 36.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ].divide(const SizedBox(width: 21.0)),
                                      ),
                                      Container(
                                        height: 34.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              AuthUserStreamWidget(
                                                builder: (context) => Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      currentUserPhoto,
                                                      'https://picsum.photos/seed/703/600',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              AuthUserStreamWidget(
                                                builder: (context) => Text(
                                                  currentUserDisplayName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ).animateOnPageLoad(
                                      animationsMap['rowOnPageLoadAnimation']!),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 60.0, 16.0, 60.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 6.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          offset: const Offset(
                                            2.0,
                                            2.0,
                                          ),
                                          spreadRadius: 2.0,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Información',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 24.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Título',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.textController ??=
                                                                            TextEditingController(
                                                                      text: editarSistemasFormacionesRecord
                                                                          .nombre,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.textController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () => safeSetState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          'TItulo',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    validator: _model
                                                                        .textControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 11.0)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Imagen del equipo propio',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      fontSize:
                                                                          18.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            logFirebaseEvent('EDITAR_SISTEMAS_SUBIR_IMAGEN_BTN_ON_TAP');
                                                                            logFirebaseEvent('Button_upload_media_to_firebase');
                                                                            final selectedMedia =
                                                                                await selectMedia(
                                                                              mediaSource: MediaSource.photoGallery,
                                                                              multiImage: false,
                                                                            );
                                                                            if (selectedMedia != null &&
                                                                                selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                              safeSetState(() => _model.isDataUploading1 = true);
                                                                              var selectedUploadedFiles = <FFUploadedFile>[];

                                                                              var downloadUrls = <String>[];
                                                                              try {
                                                                                selectedUploadedFiles = selectedMedia
                                                                                    .map((m) => FFUploadedFile(
                                                                                          name: m.storagePath.split('/').last,
                                                                                          bytes: m.bytes,
                                                                                          height: m.dimensions?.height,
                                                                                          width: m.dimensions?.width,
                                                                                          blurHash: m.blurHash,
                                                                                        ))
                                                                                    .toList();

                                                                                downloadUrls = (await Future.wait(
                                                                                  selectedMedia.map(
                                                                                    (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                  ),
                                                                                ))
                                                                                    .where((u) => u != null)
                                                                                    .map((u) => u!)
                                                                                    .toList();
                                                                              } finally {
                                                                                _model.isDataUploading1 = false;
                                                                              }
                                                                              if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                safeSetState(() {
                                                                                  _model.uploadedLocalFile1 = selectedUploadedFiles.first;
                                                                                  _model.uploadedFileUrl1 = downloadUrls.first;
                                                                                });
                                                                              } else {
                                                                                safeSetState(() {});
                                                                                return;
                                                                              }
                                                                            }
                                                                          },
                                                                          text:
                                                                              ' Subir imagen',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                40.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                0.0,
                                                                                15.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                            elevation:
                                                                                0.0,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(40.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  if (_model.uploadedFileUrl1 ==
                                                                          '')
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .network(
                                                                        editarSistemasFormacionesRecord
                                                                            .equipoPropio
                                                                            .image,
                                                                        width:
                                                                            300.0,
                                                                        height:
                                                                            300.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  if (_model.uploadedFileUrl1 !=
                                                                          '')
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .network(
                                                                        _model
                                                                            .uploadedFileUrl1,
                                                                        width:
                                                                            300.0,
                                                                        height:
                                                                            300.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        30.0)),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 11.0)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Imagen del equipo rival',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                  FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'EDITAR_SISTEMAS_SUBIR_IMAGEN_BTN_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Button_upload_media_to_firebase');
                                                                      final selectedMedia =
                                                                          await selectMedia(
                                                                        mediaSource:
                                                                            MediaSource.photoGallery,
                                                                        multiImage:
                                                                            false,
                                                                      );
                                                                      if (selectedMedia !=
                                                                              null &&
                                                                          selectedMedia.every((m) => validateFileFormat(
                                                                              m.storagePath,
                                                                              context))) {
                                                                        safeSetState(() =>
                                                                            _model.isDataUploading2 =
                                                                                true);
                                                                        var selectedUploadedFiles =
                                                                            <FFUploadedFile>[];

                                                                        var downloadUrls =
                                                                            <String>[];
                                                                        try {
                                                                          selectedUploadedFiles = selectedMedia
                                                                              .map((m) => FFUploadedFile(
                                                                                    name: m.storagePath.split('/').last,
                                                                                    bytes: m.bytes,
                                                                                    height: m.dimensions?.height,
                                                                                    width: m.dimensions?.width,
                                                                                    blurHash: m.blurHash,
                                                                                  ))
                                                                              .toList();

                                                                          downloadUrls = (await Future.wait(
                                                                            selectedMedia.map(
                                                                              (m) async => await uploadData(m.storagePath, m.bytes),
                                                                            ),
                                                                          ))
                                                                              .where((u) => u != null)
                                                                              .map((u) => u!)
                                                                              .toList();
                                                                        } finally {
                                                                          _model.isDataUploading2 =
                                                                              false;
                                                                        }
                                                                        if (selectedUploadedFiles.length == selectedMedia.length &&
                                                                            downloadUrls.length ==
                                                                                selectedMedia.length) {
                                                                          safeSetState(
                                                                              () {
                                                                            _model.uploadedLocalFile2 =
                                                                                selectedUploadedFiles.first;
                                                                            _model.uploadedFileUrl2 =
                                                                                downloadUrls.first;
                                                                          });
                                                                        } else {
                                                                          safeSetState(
                                                                              () {});
                                                                          return;
                                                                        }
                                                                      }
                                                                    },
                                                                    text:
                                                                        'Subir imagen',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              40.0),
                                                                    ),
                                                                  ),
                                                                  if (_model.uploadedFileUrl2 ==
                                                                          '')
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          editarSistemasFormacionesRecord
                                                                              .equipoRival
                                                                              .image,
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              300.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  if (_model.uploadedFileUrl2 !=
                                                                          '')
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          editarSistemasFormacionesRecord
                                                                              .equipoRival
                                                                              .image,
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              300.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        11.0)),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'EDITAR_SISTEMAS_GUARDAR_CAMBIOS_BTN_ON_T');
                                                                    logFirebaseEvent(
                                                                        'Button_backend_call');

                                                                    await widget
                                                                        .formaciones!
                                                                        .update(
                                                                            createFormacionesRecordData(
                                                                      nombre: _model
                                                                          .textController
                                                                          .text,
                                                                      equipoPropio:
                                                                          createFormacionesStruct(
                                                                        image: _model.uploadedFileUrl1 != ''
                                                                            ? _model.uploadedFileUrl1
                                                                            : editarSistemasFormacionesRecord.equipoPropio.image,
                                                                        equipoPropio:
                                                                            true,
                                                                        titulo: _model
                                                                            .textController
                                                                            .text,
                                                                        clearUnsetFields:
                                                                            true,
                                                                      ),
                                                                      equipoRival:
                                                                          createFormacionesRivalesStruct(
                                                                        image: _model.uploadedFileUrl2 != ''
                                                                            ? _model.uploadedFileUrl2
                                                                            : editarSistemasFormacionesRecord.equipoRival.image,
                                                                        equipoRival:
                                                                            true,
                                                                        titulo: _model
                                                                            .textController
                                                                            .text,
                                                                        clearUnsetFields:
                                                                            true,
                                                                      ),
                                                                      imagenPropio:
                                                                          _model
                                                                              .uploadedFileUrl1,
                                                                      imagenRival: _model.uploadedFileUrl1 !=
                                                                                  ''
                                                                          ? _model
                                                                              .uploadedFileUrl1
                                                                          : editarSistemasFormacionesRecord
                                                                              .imagenRival,
                                                                    ));
                                                                    logFirebaseEvent(
                                                                        'Button_wait__delay');
                                                                    await Future.delayed(const Duration(
                                                                        milliseconds:
                                                                            400));
                                                                  },
                                                                  text:
                                                                      'Guardar cambios',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Montserrat',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            40.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 24.0)),
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 55.0)),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(height: 28.0)),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 15.0)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<CategoriasRecord>>(
                                              stream: queryCategoriasRecord(
                                                queryBuilder:
                                                    (categoriasRecord) =>
                                                        categoriasRecord
                                                            .where(
                                                              'formarciones_ref',
                                                              isEqualTo:
                                                                  editarSistemasFormacionesRecord
                                                                      .reference,
                                                            )
                                                            .orderBy('Order'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CategoriasRecord>
                                                    containerCategoriasRecordList =
                                                    snapshot.data!;

                                                return Container(
                                                  width: double.infinity,
                                                  decoration: const BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              width: 0.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        30.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          23.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        'Categorías',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Montserrat',
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                      ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        tablet:
                                                                            false,
                                                                        tabletLandscape:
                                                                            false,
                                                                        desktop:
                                                                            false,
                                                                      ))
                                                                        FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button pressed ...');
                                                                          },
                                                                          text:
                                                                              'Agregar tema',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                24.0,
                                                                                0.0,
                                                                                24.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            elevation:
                                                                                2.0,
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(40.0),
                                                                          ),
                                                                          showLoadingIndicator:
                                                                              false,
                                                                        ),
                                                                      Builder(
                                                                        builder:
                                                                            (context) =>
                                                                                FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            logFirebaseEvent('EDITAR_SISTEMAS_AGREGAR_CATEGORIA_BTN_ON');
                                                                            logFirebaseEvent('Button_alert_dialog');
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (dialogContext) {
                                                                                return Dialog(
                                                                                  elevation: 0,
                                                                                  insetPadding: EdgeInsets.zero,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                  child: GestureDetector(
                                                                                    onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                    child: AgregarCategoriaWidget(
                                                                                      formaciones: editarSistemasFormacionesRecord,
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                            );
                                                                          },
                                                                          text:
                                                                              'Agregar categoria',
                                                                          options:
                                                                              FFButtonOptions(
                                                                            height:
                                                                                40.0,
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                24.0,
                                                                                0.0,
                                                                                24.0,
                                                                                0.0),
                                                                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Montserrat',
                                                                                  color: Colors.white,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            elevation:
                                                                                2.0,
                                                                            borderSide:
                                                                                const BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(40.0),
                                                                          ),
                                                                          showLoadingIndicator:
                                                                              false,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final categorias =
                                                                        containerCategoriasRecordList
                                                                            .toList();

                                                                    return ReorderableListView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          categorias
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              categoriasIndex) {
                                                                        final categoriasItem =
                                                                            categorias[categoriasIndex];
                                                                        return Container(
                                                                          key: ValueKey("ListView_5z2ee5mx" '_' +
                                                                              categoriasIndex.toString()),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              logFirebaseEvent('EDITAR_SISTEMAS_Container_paqkmsfw_ON_TA');
                                                                              logFirebaseEvent('Container_update_page_state');
                                                                              _model.categSelect = categoriasItem;
                                                                              safeSetState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                border: Border.all(
                                                                                  width: 1.0,
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Text(
                                                                                        categoriasItem.nombre,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Montserrat',
                                                                                              fontSize: (MediaQuery.sizeOf(context).width <= 1280.0 ? 14 : 18).toDouble(),
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          if (responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                            tablet: false,
                                                                                            tabletLandscape: false,
                                                                                            desktop: false,
                                                                                          ))
                                                                                            Container(
                                                                                              width: 40.0,
                                                                                              height: 40.0,
                                                                                              clipBehavior: Clip.antiAlias,
                                                                                              decoration: const BoxDecoration(
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: Image.network(
                                                                                                'https://picsum.photos/seed/517/600',
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Builder(
                                                                                                  builder: (context) => Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                    child: FlutterFlowIconButton(
                                                                                                      borderColor: Colors.transparent,
                                                                                                      borderRadius: 30.0,
                                                                                                      borderWidth: 0.0,
                                                                                                      buttonSize: 40.0,
                                                                                                      icon: Icon(
                                                                                                        Icons.edit,
                                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                                        size: 24.0,
                                                                                                      ),
                                                                                                      onPressed: () async {
                                                                                                        logFirebaseEvent('EDITAR_SISTEMAS_PAGE_edit_ICN_ON_TAP');
                                                                                                        logFirebaseEvent('IconButton_alert_dialog');
                                                                                                        await showDialog(
                                                                                                          context: context,
                                                                                                          builder: (dialogContext) {
                                                                                                            return Dialog(
                                                                                                              elevation: 0,
                                                                                                              insetPadding: EdgeInsets.zero,
                                                                                                              backgroundColor: Colors.transparent,
                                                                                                              alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                              child: GestureDetector(
                                                                                                                onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                                child: EditarCategoriasWidget(
                                                                                                                  form1: editarSistemasFormacionesRecord.reference,
                                                                                                                  categoForm: categoriasItem.reference,
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                        );
                                                                                                      },
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Builder(
                                                                                                  builder: (context) => FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 8.0,
                                                                                                    borderWidth: 0.0,
                                                                                                    buttonSize: 40.0,
                                                                                                    icon: Icon(
                                                                                                      Icons.delete_sharp,
                                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      logFirebaseEvent('EDITAR_SISTEMAS_delete_sharp_ICN_ON_TAP');
                                                                                                      logFirebaseEvent('IconButton_alert_dialog');
                                                                                                      await showDialog(
                                                                                                        context: context,
                                                                                                        builder: (dialogContext) {
                                                                                                          return Dialog(
                                                                                                            elevation: 0,
                                                                                                            insetPadding: EdgeInsets.zero,
                                                                                                            backgroundColor: Colors.transparent,
                                                                                                            alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                            child: GestureDetector(
                                                                                                              onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                              child: ConsultaEliminacionCategoriasFormacionesWidget(
                                                                                                                refCategorias: categoriasItem.reference,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                  child: FlutterFlowIconButton(
                                                                                                    borderColor: Colors.transparent,
                                                                                                    borderRadius: 8.0,
                                                                                                    borderWidth: 0.0,
                                                                                                    buttonSize: 33.0,
                                                                                                    fillColor: FlutterFlowTheme.of(context).secondary,
                                                                                                    icon: Icon(
                                                                                                      Icons.arrow_forward_ios_sharp,
                                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                                      size: 14.0,
                                                                                                    ),
                                                                                                    onPressed: () async {
                                                                                                      logFirebaseEvent('EDITAR_SISTEMAS_arrow_forward_ios_sharp_');
                                                                                                      logFirebaseEvent('IconButton_update_page_state');
                                                                                                      _model.categSelect = categoriasItem;
                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation3']!),
                                                                        );
                                                                      },
                                                                      onReorder:
                                                                          (int reorderableOldIndex,
                                                                              int reorderableNewIndex) async {
                                                                        logFirebaseEvent(
                                                                            'EDITAR_SISTEMAS_ListView_5z2ee5mx_ON_REO');
                                                                        logFirebaseEvent(
                                                                            'ListView_custom_action');
                                                                        await actions
                                                                            .reorderCategoriasRecord(
                                                                          containerCategoriasRecordList
                                                                              .toList(),
                                                                          reorderableOldIndex,
                                                                          reorderableNewIndex,
                                                                        );

                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (_model.categSelect !=
                                                          null)
                                                        Expanded(
                                                          child: StreamBuilder<
                                                              List<
                                                                  InformacionCategoriaRecord>>(
                                                            stream:
                                                                queryInformacionCategoriaRecord(
                                                              queryBuilder: (informacionCategoriaRecord) =>
                                                                  informacionCategoriaRecord
                                                                      .where(
                                                                        'categoriaRef',
                                                                        isEqualTo: _model
                                                                            .categSelect
                                                                            ?.reference,
                                                                      )
                                                                      .orderBy(
                                                                          'Order'),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<InformacionCategoriaRecord>
                                                                  containerInformacionCategoriaRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    width: 0.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          30.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            16.0,
                                                                            16.0,
                                                                            23.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text(
                                                                              'Datos: ${_model.categSelect?.nombre}',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Montserrat',
                                                                                    fontSize: 18.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Builder(
                                                                                builder: (context) => FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('EDITAR_SISTEMAS_AGREGAR_DATOS_BTN_ON_TAP');
                                                                                    logFirebaseEvent('Button_alert_dialog');
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: GestureDetector(
                                                                                            onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                            child: AgregarDatosWidget(
                                                                                              form1: _model.categSelect!,
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                  text: 'Agregar Datos',
                                                                                  options: FFButtonOptions(
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          fontFamily: 'Montserrat',
                                                                                          color: Colors.white,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    elevation: 2.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(40.0),
                                                                                  ),
                                                                                  showLoadingIndicator: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Builder(
                                                                        builder:
                                                                            (context) {
                                                                          final datos =
                                                                              containerInformacionCategoriaRecordList.toList();

                                                                          return ReorderableListView
                                                                              .builder(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            shrinkWrap:
                                                                                true,
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            itemCount:
                                                                                datos.length,
                                                                            itemBuilder:
                                                                                (context, datosIndex) {
                                                                              final datosItem = datos[datosIndex];
                                                                              return Container(
                                                                                key: ValueKey("ListView_hissi9h9" '_' + datosIndex.toString()),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  child: Container(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      borderRadius: BorderRadius.circular(5.0),
                                                                                      border: Border.all(
                                                                                        width: 1.0,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Text(
                                                                                              datosItem.titulo,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Montserrat',
                                                                                                    fontSize: (MediaQuery.sizeOf(context).width <= 1280.0 ? 14 : 18).toDouble(),
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                if (responsiveVisibility(
                                                                                                  context: context,
                                                                                                  tablet: false,
                                                                                                  tabletLandscape: false,
                                                                                                  desktop: false,
                                                                                                ))
                                                                                                  Container(
                                                                                                    width: 40.0,
                                                                                                    height: 40.0,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: const BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      'https://picsum.photos/seed/517/600',
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Builder(
                                                                                                      builder: (context) => Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                        child: FlutterFlowIconButton(
                                                                                                          borderColor: Colors.transparent,
                                                                                                          borderRadius: 30.0,
                                                                                                          borderWidth: 0.0,
                                                                                                          buttonSize: 40.0,
                                                                                                          icon: Icon(
                                                                                                            Icons.edit,
                                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                                            size: 24.0,
                                                                                                          ),
                                                                                                          onPressed: () async {
                                                                                                            logFirebaseEvent('EDITAR_SISTEMAS_PAGE_edit_ICN_ON_TAP');
                                                                                                            logFirebaseEvent('IconButton_alert_dialog');
                                                                                                            await showDialog(
                                                                                                              context: context,
                                                                                                              builder: (dialogContext) {
                                                                                                                return Dialog(
                                                                                                                  elevation: 0,
                                                                                                                  insetPadding: EdgeInsets.zero,
                                                                                                                  backgroundColor: Colors.transparent,
                                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                  child: GestureDetector(
                                                                                                                    onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                                    child: EditarDatosWidget(
                                                                                                                      datosRef: datosItem.reference,
                                                                                                                      categ: _model.categSelect!,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            );
                                                                                                          },
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Builder(
                                                                                                      builder: (context) => FlutterFlowIconButton(
                                                                                                        borderColor: Colors.transparent,
                                                                                                        borderRadius: 8.0,
                                                                                                        borderWidth: 0.0,
                                                                                                        buttonSize: 40.0,
                                                                                                        icon: Icon(
                                                                                                          Icons.delete_sharp,
                                                                                                          color: FlutterFlowTheme.of(context).secondary,
                                                                                                          size: 24.0,
                                                                                                        ),
                                                                                                        onPressed: () async {
                                                                                                          logFirebaseEvent('EDITAR_SISTEMAS_delete_sharp_ICN_ON_TAP');
                                                                                                          logFirebaseEvent('IconButton_alert_dialog');
                                                                                                          await showDialog(
                                                                                                            context: context,
                                                                                                            builder: (dialogContext) {
                                                                                                              return Dialog(
                                                                                                                elevation: 0,
                                                                                                                insetPadding: EdgeInsets.zero,
                                                                                                                backgroundColor: Colors.transparent,
                                                                                                                alignment: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () => FocusScope.of(dialogContext).unfocus(),
                                                                                                                  child: ConsultaEliminacionResultadosFormacionesWidget(
                                                                                                                    refInformacion: datosItem.reference,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                          );
                                                                                                        },
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation4']!),
                                                                                ),
                                                                              );
                                                                            },
                                                                            onReorder:
                                                                                (int reorderableOldIndex, int reorderableNewIndex) async {
                                                                              logFirebaseEvent('EDITAR_SISTEMAS_ListView_hissi9h9_ON_REO');
                                                                              logFirebaseEvent('ListView_custom_action');
                                                                              await actions.reorderCategoriasRecord(
                                                                                containerCategoriasRecordList.toList(),
                                                                                reorderableOldIndex,
                                                                                reorderableNewIndex,
                                                                              );

                                                                              safeSetState(() {});
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                    ].divide(
                                                        const SizedBox(width: 20.0)),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation2']!);
                                              },
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Builder(
                                                  builder: (context) =>
                                                      FFButtonWidget(
                                                    onPressed: () async {
                                                      logFirebaseEvent(
                                                          'EDITAR_SISTEMAS_PAGE_ELIMINAR_BTN_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: const AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () =>
                                                                  FocusScope.of(
                                                                          dialogContext)
                                                                      .unfocus(),
                                                              child:
                                                                  ConsultaEliminacionSistemaWidget(
                                                                sistemas: widget
                                                                    .formaciones,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                    text: 'Eliminar',
                                                    options: FFButtonOptions(
                                                      width: 227.0,
                                                      height: 50.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  15.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Flexible(
                                                      child: Builder(
                                                        builder: (context) =>
                                                            FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'EDITAR_SISTEMAS_GUARDAR_COMO_BORRADOR_BT');
                                                            logFirebaseEvent(
                                                                'Button_backend_call');

                                                            await widget
                                                                .formaciones!
                                                                .update(
                                                                    createFormacionesRecordData(
                                                              estado: false,
                                                            ));
                                                            logFirebaseEvent(
                                                                'Button_alert_dialog');
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (dialogContext) {
                                                                return Dialog(
                                                                  elevation: 0,
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
                                                                          Directionality.of(
                                                                              context)),
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () =>
                                                                        FocusScope.of(dialogContext)
                                                                            .unfocus(),
                                                                    child:
                                                                        const ConfirmacionBorradorFormacionWidget(),
                                                                  ),
                                                                );
                                                              },
                                                            );

                                                            logFirebaseEvent(
                                                                'Button_navigate_to');

                                                            context.pushNamed(
                                                                'Simulador');
                                                          },
                                                          text:
                                                              'Guardar como borrador',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 227.0,
                                                            height: 50.0,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            iconPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Builder(
                                                        builder: (context) =>
                                                            FFButtonWidget(
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'EDITAR_SISTEMAS_PAGE_PUBLICAR_BTN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Button_backend_call');

                                                            await widget
                                                                .formaciones!
                                                                .update(
                                                                    createFormacionesRecordData(
                                                              estado: true,
                                                            ));
                                                            logFirebaseEvent(
                                                                'Button_alert_dialog');
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (dialogContext) {
                                                                return Dialog(
                                                                  elevation: 0,
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
                                                                          Directionality.of(
                                                                              context)),
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () =>
                                                                        FocusScope.of(dialogContext)
                                                                            .unfocus(),
                                                                    child:
                                                                        const ConfirmacionFormacionWidget(),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                          text: 'Publicar',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 227.0,
                                                            height: 50.0,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Montserrat',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 2.0,
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 22.0)),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 20.0)),
                                          ),
                                        ].divide(const SizedBox(height: 30.0)),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation1']!),
                                ),
                              ],
                            ),
                          ),
                        ),
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
  }
}
