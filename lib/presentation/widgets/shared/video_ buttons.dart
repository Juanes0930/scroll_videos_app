import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:scroll_videos_app/domain/entities/video_post.dart';
import 'package:scroll_videos_app/presentation/widgets/shared/custom_buttons.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BounceInUp(
            duration: const Duration(seconds: 2),
            child: CustomButtons(
                value: video.likes,
                icon: Icons.favorite,
                iconColor: Colors.red)),
        const SizedBox(height: 20),
        BounceInUp(
            duration: const Duration(seconds: 2),
            child: CustomButtons(
                value: video.views, icon: Icons.remove_red_eye_outlined)),
        const SizedBox(height: 20),
        SpinPerfect(
            duration: const Duration(seconds: 5),
            infinite: true,
            child:
                const CustomButtons(value: 0, icon: Icons.play_circle_outline)),
      ],
    );
  }
}
