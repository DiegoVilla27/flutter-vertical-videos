import 'package:vertical_videos_app/domain/entities/video.dart';

/// A model class representing a video with properties such as name, URL, likes, and views.
/// 
/// Provides a factory constructor to create an instance from a JSON map and a method to convert
/// the model to a `VideoEntity`.
class VideoModel {
  String name;
  String videoUrl;
  int likes;
  int views;

  VideoModel({
    required this.name,
    required this.videoUrl,
    required this.likes,
    required this.views,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
    name: json['name'] ?? '',
    videoUrl: json['videoUrl'],
    likes: json['likes'] ?? 0,
    views: json['views'] ?? 0,
  );

  VideoEntity toVideoEntity() {
    return VideoEntity(
      caption: name,
      url: videoUrl,
      likes: likes,
      views: views,
    );
  }
}
