import 'package:flutter/material.dart';
import 'package:vertical_videos_app/shared/helpers/number_format.dart';

/// A widget that displays an icon with an optional numeric value.
///
/// The [VideoIcon] widget consists of an [IconButton] and a [Text] widget
/// that shows a human-readable format of the provided [value] if it is greater
/// than zero. The [icon] parameter specifies the icon to be displayed.
///
/// The numeric value is formatted using the organization's custom
/// [NumberFormats.humanReadableNumber] method to ensure consistency
/// across the application.
class VideoIcon extends StatelessWidget {
  final int value;
  final IconData icon;

  const VideoIcon({super.key, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () => {}, icon: Icon(icon)),
        if (value > 0)
          Transform.translate(
            offset: Offset(0, -5),
            child: Text(NumberFormats.humanReadableNumber(value.toDouble())),
          ),
      ],
    );
  }
}
