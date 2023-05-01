
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll_videos_app/presentation/provider/discover_provider.dart';
import 'package:scroll_videos_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
         lazy: false,
         create: (_) => DiscoverProvider()..loadNextPage(),
      )
    ],
    child :const MaterialApp(
      title: 'ScrollVideos App',
      home: DiscoverScreen()
    ));
  }
}