import 'package:vertical_videos_app/domain/entities/video_entity.dart';
import 'package:vertical_videos_app/domain/repository/videos_repository.dart';

/// A use case class for handling video-related operations.
///
/// This class provides methods to interact with the video repository,
/// allowing retrieval of video data through the `getVideos` method.
///
/// The `VideoUsesCases` class requires a `VideoRepository` instance
/// to function, which is injected via the constructor.
class VideoUsesCases {
  final VideoRepository videoRepository;

  VideoUsesCases(this.videoRepository);

  Future<List<VideoEntity>> getVideos() async {
    return await videoRepository.getVideos();
  }
}
