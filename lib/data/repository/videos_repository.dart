import 'package:vertical_videos_app/data/datasource/videos_datasources.dart';
import 'package:vertical_videos_app/data/models/video_model.dart';
import 'package:vertical_videos_app/domain/entities/video_entity.dart';
import 'package:vertical_videos_app/domain/repository/videos_repository.dart';

/// Implementation of the VideoRepository interface that provides
/// methods to fetch video data from a data source.
/// 
/// This class uses a VideoDataSource to retrieve a list of VideoModel
/// objects and converts them into a list of VideoEntity objects.
class VideoRepositoryImpl implements VideoRepository {
  final VideoDataSource videoDataSource = VideoDataSource();

  @override
  Future<List<VideoEntity>> getVideos() async {
    final List<VideoModel> videoModels = await videoDataSource.getVideos();
    return Future.value(
      videoModels.map((video) => video.toVideoEntity()).toList(),
    );
  }
}
