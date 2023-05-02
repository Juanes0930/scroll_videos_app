
import 'package:scroll_videos_app/domain/entities/video_post.dart';

abstract class VideoPostRepository{

Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
Future<List<VideoPost>> getTrendingVideosByPage(int pageId);
}