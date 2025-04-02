import 'package:vertical_videos_app/data/repository/videos_repository.dart';
import 'package:vertical_videos_app/domain/usecases/videos_usescases.dart';

/// A singleton class that provides video-related services.
///
/// This class manages instances of `VideoRepositoryImpl` and `VideoUsesCases`.
/// It uses a private constructor to ensure only one instance is created,
/// accessible via the factory constructor.
class VideoServices {
  // Instancia estática privada
  static final VideoServices _instance = VideoServices._internal();

  // Instancia de VideoRepository y VideoUseCases
  final VideoRepositoryImpl videoRepository = VideoRepositoryImpl();
  late final VideoUsesCases videoUseCases;

  // Constructor privado
  VideoServices._internal() {
    videoUseCases = VideoUsesCases(videoRepository);
  }

  // Método estático para acceder a la instancia única
  factory VideoServices() {
    return _instance;
  }
}
