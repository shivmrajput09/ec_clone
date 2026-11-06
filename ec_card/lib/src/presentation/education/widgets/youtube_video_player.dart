import 'package:flutter/material.dart';

class YouTubeVideoPlayerScreen extends StatelessWidget {
  final String title;
  final String videoUrl;

  const YouTubeVideoPlayerScreen({
    super.key,
    required this.title,
    required this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Educational Video Stream'),
      ),
    );
  }
}
