// lib/src/presentation/quiz/quiz_fail_screen.dart

import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import '../videos/video_screen.dart';

class QuizFailScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const QuizFailScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Fail Icon
              CircleAvatar(
                radius: 45,
                backgroundColor: Colors.red.shade50,
                child: const Icon(Icons.cancel, size: 55, color: Colors.red),
              ),
              const SizedBox(height: 20),

              const Text(
                'Assessment Incomplete',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              Text(
                'Your Score: $score% (Required: 75%)',
                style: const TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              Text(
                'You did not meet the mandatory passing criteria to grant your voucher card. Please review the training videos and try again.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
              ),
              const SizedBox(height: 35),

              // Button 1: Retry Quiz
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const QuizScreen()),
                    );
                  },
                  child: const Text('RETRY ASSESSMENT',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
              const SizedBox(height: 12),

              // Button 2: Back to Training Videos
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: primaryColor),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const VideosScreen()),
                    );
                  },
                  child: const Text('REVIEW TRAINING VIDEOS',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: primaryColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}