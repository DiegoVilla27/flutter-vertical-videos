import 'package:vertical_videos_app/domain/entities/video_entity.dart';

/// An abstract class that defines a contract for a video repository.
/// 
/// This repository provides a method to asynchronously fetch a list of
/// video entities.
abstract class VideoRepository {
  Future<List<VideoEntity>> getVideos();
}