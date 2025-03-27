import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_videos_app/config/theme/theme.dart';
import 'package:vertical_videos_app/presentation/providers/videos.dart';
import 'package:vertical_videos_app/presentation/screens/discover/discover.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => VideoProvider()..loadNextVideo()
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vertical Videos App',
        theme: ThemeCustom(selectedColor: 0).theme(),
        home: DiscoverScreen(),
      ),
    );
  }
}
