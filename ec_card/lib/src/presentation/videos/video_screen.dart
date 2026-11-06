// lib/src/presentation/videos/video_screen.dart

import 'package:flutter/material.dart';
import 'widgets/video_player_screen.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  // Sample Training Videos List
  final List<Map<String, dynamic>> _videos = [
    {
      'id': '1',
      'title': '1. Introduction to EC Healthcare Guidelines',
      'url': 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      'watched': false,
    },
    {
      'id': '2',
      'title': '2. Emergency Contraception Protocol',
      'url': 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
      'watched': false,
    },
  ];

  bool get _allVideosWatched => _videos.every((v) => v['watched'] == true);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Training Videos'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: _videos.length,
              itemBuilder: (context, index) {
                final video = _videos[index];
                final isWatched = video['watched'] as bool;

                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: CircleAvatar(
                      backgroundColor: isWatched ? Colors.green[100] : Colors.indigo[50],
                      child: Icon(
                        isWatched ? Icons.check_circle : Icons.play_arrow,
                        color: isWatched ? Colors.green : primaryColor,
                      ),
                    ),
                    title: Text(
                      video['title'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      isWatched ? 'Status: Completed' : 'Status: Mandatory to watch',
                      style: TextStyle(color: isWatched ? Colors.green : Colors.orange),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoPlayerScreen(
                            videoTitle: video['title'],
                            videoUrl: video['url'],
                            onVideoCompleted: () {
                              setState(() {
                                video['watched'] = true;
                              });
                            },
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),

          // 🎯 TARGET BUTTON: Jab tak saari videos nahi dekhi jayengi, button disabled rahega
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: _allVideosWatched
                    ? () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Proceeding to Part 12: Quiz Engine!'),
                            backgroundColor: Colors.green,
                          ),
                        );
                      }
                    : null, // null hone par disabled rehta hai
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  disabledBackgroundColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: Text(
                  _allVideosWatched ? 'CONTINUE TO QUIZ (UNLOCKED)' : 'WATCH ALL VIDEOS TO UNLOCK',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: _allVideosWatched ? Colors.white : Colors.grey[600],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}