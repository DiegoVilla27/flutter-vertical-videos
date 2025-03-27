import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_videos_app/presentation/providers/videos.dart';
import 'package:vertical_videos_app/presentation/screens/discover/widgets/video_view.dart';

/// A stateless widget that represents the Discover screen in the application.
/// 
/// This screen displays a loading indicator while the video data is being
/// fetched. Once the data is available, it shows a list of videos using the
/// `VideoView` widget. The video data is provided by the `VideoProvider`
/// through the `Provider` package.
class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final videoProvider = context.watch<VideoProvider>();

    return Scaffold(
      body:
          videoProvider.initialLoading
              ? Center(child: CircularProgressIndicator())
              : VideoView(videos: videoProvider.videos),
    );
  }
}
