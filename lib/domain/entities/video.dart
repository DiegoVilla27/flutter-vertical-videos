/// A class representing a video entity with metadata.
///
/// This class encapsulates details about a video, including its caption,
/// URL, number of likes, and number of views. Defaults for likes and views
/// are set to zero if not provided.
///
/// Attributes:
///   caption: The caption of the video.
///   url: The URL of the video.
///   likes: The number of likes the video has received.
///   views: The number of times the video has been viewed.
class VideoEntity {
  final String caption;
  final String url;
  final int likes;
  final int views;

  VideoEntity({
    required this.caption,
    required this.url,
    this.likes = 0,
    this.views = 0,
  });
}
