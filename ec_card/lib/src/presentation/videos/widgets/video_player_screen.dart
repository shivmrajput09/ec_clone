// lib/src/presentation/videos/widgets/video_player_screen.dart

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoTitle;
  final String videoUrl;
  final VoidCallback onVideoCompleted;

  const VideoPlayerScreen({
    super.key,
    required this.videoTitle,
    required this.videoUrl,
    required this.onVideoCompleted,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;
  bool _isCompleted = false;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    _videoController = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    await _videoController.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      autoPlay: true,
      looping: false,
      aspectRatio: 16 / 9,
      allowFullScreen: true,
    );

    // 🎯 TARGET: Video complete hone par Next Unlock trigger karega
    _videoController.addListener(() {
      final position = _videoController.value.position;
      final duration = _videoController.value.duration;

      if (duration > Duration.zero && position >= duration && !_isCompleted) {
        _isCompleted = true;
        widget.onVideoCompleted();
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('🎉 Video Completed! Next Button Unlocked.'),
              backgroundColor: Colors.green,
            ),
          );
        }
      }
    });

    setState(() {});
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.videoTitle),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: 16 / 9,
                child: Chewie(controller: _chewieController!),
              )
            : const CircularProgressIndicator(color: primaryColor),
      ),
    );
  }
}