


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll_videos_app/presentation/provider/discover_provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final discoverProvider = context.watch<DiscoverProvider>();
    return Scaffold();
  }
}