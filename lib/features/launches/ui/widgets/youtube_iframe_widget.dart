import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoFrame extends StatelessWidget {
  final YoutubePlayerController? youtubeController;
  const YoutubeVideoFrame({super.key, required this.youtubeController});

  @override
  Widget build(BuildContext context) {
    if (youtubeController != null) {
      return Padding(
        padding: EdgeInsets.only(bottom: 15.h),
        child: YoutubePlayer(
          controller: youtubeController!,
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
