
import 'package:flutter/material.dart';
import 'package:scroll_videos_app/domain/entities/video_post.dart';
import 'package:scroll_videos_app/infraestructure/models/local_videos_models.dart';
import 'package:scroll_videos_app/infraestructure/repositories/video_post_repository_impl.dart';
import 'package:scroll_videos_app/shared/local_videos.dart';

class DiscoverProvider extends ChangeNotifier{

  final VideoPostRepositoryImpl videoPostRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];
  
  DiscoverProvider({required this.videoPostRepository});

  Future <void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    //creates an instance of the videoPost class, receives a map and returns another list with the information of the original
    /*final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();*/
        
      final newVideos = await videoPostRepository.getTrendingVideosByPage(1);  
    //Add videos to the new list 
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();

  } 
 }