
import 'package:scroll_videos_app/domain/datasources/video_post_datasources.dart';
import 'package:scroll_videos_app/domain/entities/video_post.dart';
import 'package:scroll_videos_app/domain/repositories/video_posts_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {

final VideoPostDataSource videoPostDataSource;

  VideoPostRepositoryImpl(this.videoPostDataSource);

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int pageId) {
   return videoPostDataSource.getTrendingVideosByPage(pageId);
  }
  

}