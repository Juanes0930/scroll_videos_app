
///class video post
class VideoPost {
   
   /// Parameters of the class
   final String caption;
   final String videoUrl;
   final int likes;
   final int views;

  /// Constructor of the class
  VideoPost({
    required this.caption, 
    required this.videoUrl, 
    this.likes = 0, 
    this.views = 0});
  }