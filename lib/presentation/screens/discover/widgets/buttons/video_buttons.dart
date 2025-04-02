import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:vertical_videos_app/domain/entities/video_entity.dart';
import 'package:vertical_videos_app/presentation/screens/discover/widgets/buttons/video_icon.dart';

/// A widget that displays a set of interactive video buttons, including
/// like, view, and play icons, positioned at the bottom right of the screen.
/// 
/// The `VideoButtons` widget takes a [VideoEntity] object as a parameter,
/// which provides the data for the like and view counts. The play icon
/// is animated with an infinite spinning effect.
/// 
/// This widget is typically used in a video discovery screen to allow
/// users to interact with video content.
class VideoButtons extends StatelessWidget {
  final VideoEntity video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      right: 10,
      child: Column(
        children: [
          VideoIcon(value: video.likes, icon: Icons.favorite),
          VideoIcon(value: video.views, icon: Icons.remove_red_eye),
          SpinPerfect(
            infinite: true,
            child: VideoIcon(value: 0, icon: Icons.play_circle_outlined),
          ),
        ],
      ),
    );
  }
}
