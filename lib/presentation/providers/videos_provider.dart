import 'package:flutter/material.dart';
import 'package:vertical_videos_app/core/services/video_services.dart';
import 'package:vertical_videos_app/domain/entities/video_entity.dart';

/// A provider class for managing video data and notifying listeners of changes.
///
/// This class extends [ChangeNotifier] to allow UI components to listen for
/// updates. It maintains a list of [VideoEntity] objects and provides a method
/// to load additional videos asynchronously using [VideoServices].
///
/// Properties:
/// - [initialLoading]: A boolean indicating if the initial loading is in progress.
/// - [videos]: A list of [VideoEntity] objects representing the loaded videos.
///
/// Methods:
/// - [loadNextVideo]: Asynchronously loads the next set of videos and updates
///   the [videos] list, then notifies listeners of the change.
class VideoProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoEntity> videos = [];
  VideoServices services = VideoServices();

  Future<void> loadNextVideo() async {
    final List<VideoEntity> newVideos =
        await services.videoUseCases.getVideos();
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
