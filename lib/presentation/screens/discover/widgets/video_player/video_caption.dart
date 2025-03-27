import 'package:flutter/material.dart';

/// A stateless widget that displays a video caption positioned at the bottom
/// of the screen. The caption is displayed in bold white text and can span
/// up to two lines. The widget takes a required `caption` parameter.
class VideoCaption extends StatelessWidget {
  final String caption;

  const VideoCaption({super.key, required this.caption});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 50,
      left: 20,
      child: SizedBox(
        width: size.width * 0.6,
        child: Text(
          caption,
          maxLines: 2,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
