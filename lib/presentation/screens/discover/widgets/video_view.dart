import 'package:flutter/material.dart';
import 'package:vertical_videos_app/domain/entities/video_entity.dart';
import 'package:vertical_videos_app/presentation/screens/discover/widgets/video_player/video_full.dart';
import 'package:vertical_videos_app/presentation/screens/discover/widgets/buttons/video_buttons.dart';

/// A widget that displays a list of videos in a vertically scrollable page view.
///
/// The [VideoView] widget takes a list of [VideoEntity] objects and displays
/// each video using a [PageView.builder]. Each page contains a video player
/// and associated buttons for interaction.
///
/// The videos are displayed in a stack, with the video player occupying the
/// full size of the page and the buttons overlayed on top.
///
/// The [videos] parameter is required and specifies the list of videos to be
/// displayed.
class VideoView extends StatelessWidget {
  final List<VideoEntity> videos;

  const VideoView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
              child: VideoFull(url: video.url, caption: video.caption),
            ),
            VideoButtons(video: video),
          ],
        );
      },
    );
  }
}
