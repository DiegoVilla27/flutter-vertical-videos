import 'package:vertical_videos_app/data/models/video_model.dart';
import 'package:vertical_videos_app/shared/data/videos.dart';

/// A data source class for retrieving video data.
///
/// The `VideoDataSource` class provides a method to fetch a list of
/// `VideoModel` objects by converting local video data from JSON format.
///
/// Methods:
/// - `getVideos`: Returns a `Future` containing a list of `VideoModel`
///   instances created from local video data.
class VideoDataSource {
  Future<List<VideoModel>> getVideos() {
    List<VideoModel> videos =
        videosLocal.map((video) => VideoModel.fromJson(video)).toList();
    return Future.value(videos);
  }
}
