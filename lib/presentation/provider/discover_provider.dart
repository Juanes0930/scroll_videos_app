
import 'package:flutter/material.dart';
import 'package:scroll_videos_app/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier{

  bool initialLoading = true;
  
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videos});

  Future <void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    //creates an instance of the videoPost class, receives a map and returns another list with the information of the original
    /*
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();*/
  } 

  }