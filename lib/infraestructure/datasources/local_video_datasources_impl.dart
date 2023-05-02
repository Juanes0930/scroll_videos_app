import 'package:scroll_videos_app/domain/datasources/video_post_datasources.dart';
import 'package:scroll_videos_app/domain/entities/video_post.dart';
import 'package:scroll_videos_app/infraestructure/models/local_videos_models.dart';
import 'package:scroll_videos_app/shared/local_videos.dart';

abstract class LocalVideoDatasourcesImpl implements VideoPostDataSource {

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId){
    throw UnimplementedError();
  }

 @override
 Future <List<VideoPost>> getTrendingVideosByPage(int pageId) async{
   await Future.delayed(const Duration(seconds: 2));

   final List<VideoPost> newVideos = videoPosts.map((video) =>
   LocalVideoModel.fromJsonMap(video).toVideoPostEntity()).toList();

   return newVideos;
 }
}