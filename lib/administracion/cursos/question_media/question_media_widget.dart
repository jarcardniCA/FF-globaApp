import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'question_media_model.dart';
export 'question_media_model.dart';

class QuestionMediaWidget extends StatefulWidget {
  const QuestionMediaWidget({
    super.key,
    this.imageUrl,
    this.videoUrl,
  });

  final String? imageUrl;
  final String? videoUrl;

  @override
  State<QuestionMediaWidget> createState() => _QuestionMediaWidgetState();
}

class _QuestionMediaWidgetState extends State<QuestionMediaWidget> {
  late QuestionMediaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionMediaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.imageUrl != null && widget.imageUrl != '')
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('QUESTION_MEDIA_Image_paq9tfsi_ON_TAP');
              logFirebaseEvent('Image_expand_image');
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: FlutterFlowExpandedImageView(
                    image: Image.network(
                      widget.imageUrl!,
                      fit: BoxFit.contain,
                    ),
                    allowRotation: false,
                    tag: widget.imageUrl!,
                    useHeroAnimation: true,
                  ),
                ),
              );
            },
            child: Hero(
              tag: widget.imageUrl!,
              transitionOnUserGestures: true,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.imageUrl!,
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        if (widget.videoUrl != null && widget.videoUrl != '')
          FlutterFlowVideoPlayer(
            path: widget.videoUrl!,
            videoType: VideoType.network,
            width: double.infinity,
            height: 200.0,
            autoPlay: true,
            looping: true,
            showControls: false,
            allowFullScreen: true,
            allowPlaybackSpeedMenu: false,
            lazyLoad: false,
          ),
      ].divide(const SizedBox(height: 10.0)),
    );
  }
}
