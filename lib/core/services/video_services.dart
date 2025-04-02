import 'package:vertical_videos_app/data/repository/videos_repository.dart';
import 'package:vertical_videos_app/domain/usecases/videos_usescases.dart';

/// A singleton class that provides video-related services.
///
/// This class manages instances of `VideoRepositoryImpl` and `VideoUsesCases`.
/// It uses a private constructor to ensure only one instance is created,
/// accessible via the factory constructor.
class VideoServices {
  // Private static instance
  static final VideoServices _instance = VideoServices._internal();

  // Instance of VideoRepository and VideoUseCases
  final VideoRepositoryImpl videoRepository = VideoRepositoryImpl();
  late final VideoUsesCases videoUseCases;

  // Private constructor
  VideoServices._internal() {
    videoUseCases = VideoUsesCases(videoRepository: videoRepository);
  }

  // Static method to access the single instance
  factory VideoServices() {
    return _instance;
  }
}
