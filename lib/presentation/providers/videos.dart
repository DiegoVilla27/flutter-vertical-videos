import 'package:flutter/material.dart';
import 'package:vertical_videos_app/data/models/video.dart';
import 'package:vertical_videos_app/domain/entities/video.dart';
import 'package:vertical_videos_app/shared/data/videos.dart';

/// A provider class for managing video data and notifying listeners of changes.
///
/// This class extends [ChangeNotifier] to allow UI components to listen for
/// updates. It maintains a list of [VideoEntity] objects and a flag to indicate
/// if the initial loading is in progress. The [loadNextVideo] method fetches
/// additional videos from a local source, converts them to [VideoEntity] objects,
/// and updates the list, notifying listeners of any changes.
class VideoProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoEntity> videos = [];

  Future<void> loadNextVideo() async {
    final List<VideoEntity> newVideos =
        videosLocal
            .map((video) => VideoModel.fromJson(video).toVideoEntity())
            .toList();

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
