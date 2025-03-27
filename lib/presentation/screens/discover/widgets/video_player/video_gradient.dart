import 'package:flutter/material.dart';

/// A widget that overlays a vertical gradient on a video, transitioning from
/// transparent at the top to black at the bottom.
class VideoGradient extends StatelessWidget {
  const VideoGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 1.0],
            colors: [Colors.transparent, Colors.black],
          ),
        ),
      ),
    );
  }
}
