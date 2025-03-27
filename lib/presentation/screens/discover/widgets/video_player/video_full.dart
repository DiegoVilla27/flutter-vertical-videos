import 'package:flutter/material.dart';
import 'package:vertical_videos_app/presentation/screens/discover/widgets/video_player/video_caption.dart';
import 'package:vertical_videos_app/presentation/screens/discover/widgets/video_player/video_gradient.dart';
import 'package:video_player/video_player.dart';

/// A widget that displays a full-screen video player with a caption.
///
/// The [VideoFull] widget requires a [url] for the video source and a [caption]
/// to display alongside the video. It creates a stateful widget that manages
/// the video playback and UI updates.
class VideoFull extends StatefulWidget {
  final String url;
  final String caption;

  const VideoFull({super.key, required this.url, required this.caption});

  @override
  State<VideoFull> createState() => _VideoFullState();
}

/// Manages the state for the [VideoFull] widget, handling video playback.
///
/// This state class initializes the [VideoPlayerController] with the provided
/// video URL, sets the video to loop and play automatically, and manages the
/// widget's lifecycle. It builds a UI that includes a video player, gradient
/// overlay, and caption, with tap functionality to toggle playback.
class _VideoFullState extends State<VideoFull> {
  late VideoPlayerController videoPlayerController;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset(widget.url)
          ..setVolume(0)
          ..setLooping(true)
          ..play();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: videoPlayerController.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GestureDetector(
            onTap: () {
              if (videoPlayerController.value.isPlaying) {
                videoPlayerController.pause();
              } else {
                videoPlayerController.play();
              }
            },
            child: AspectRatio(
              aspectRatio: videoPlayerController.value.aspectRatio,
              child: Stack(
                children: [
                  VideoPlayer(videoPlayerController),
                  VideoGradient(),
                  VideoCaption(caption: widget.caption),
                ],
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
