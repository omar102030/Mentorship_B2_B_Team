import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoFrame extends StatefulWidget {
  final String? youtubeId;
  const YoutubeVideoFrame({super.key, required this.youtubeId});

  @override
  State<YoutubeVideoFrame> createState() => _YoutubeVideoFrameState();
}

class _YoutubeVideoFrameState extends State<YoutubeVideoFrame> {
  late YoutubePlayerController _youtubeController;
  @override
  void initState() {
    super.initState();
    if (widget.youtubeId != null) {
      _youtubeController = YoutubePlayerController(
        initialVideoId: widget.youtubeId!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
          hideControls: false,
          loop: false,
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _youtubeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.youtubeId != null) {
      return Padding(
        padding: EdgeInsets.only(bottom: 15.h),
        child: YoutubePlayer(
          controller: _youtubeController,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.amber,
          progressColors: const ProgressBarColors(
            playedColor: Colors.amber,
            handleColor: Colors.amberAccent,
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
