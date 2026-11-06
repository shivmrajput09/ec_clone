// lib/src/presentation/quiz/quiz_complete.dart

import 'package:flutter/material.dart';
import '../home/dashboard_screen.dart';

class QuizCompleteScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const QuizCompleteScreen({
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
              // Celebration Icon
              const CircleAvatar(
                radius: 45,
                backgroundColor: Color(0xFFE8F5E9),
                child: Icon(Icons.verified, size: 55, color: Colors.green),
              ),
              const SizedBox(height: 20),

              const Text(
                'Assessment Passed!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 8),

              Text(
                'Score: $score% (Qualified)',
                style: const TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),

              // Active Membership Card Grant Box
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [primaryColor, Color(0xFF1A237E)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(color: Colors.indigo.withOpacity(0.3), blurRadius: 12, offset: const Offset(0, 6)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('ACTIVE MEMBERSHIP GRANTED',
                            style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                        Icon(Icons.check_circle_outline, color: Colors.white, size: 24),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text('CERTIFIED EC PATIENT',
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    const Text('Status: Qualified for Free Pharmacy Vouchers',
                        style: TextStyle(color: Colors.white70, fontSize: 13)),
                  ],
                ),
              ),
              const SizedBox(height: 35),

              // Button to Dashboard
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardScreen(userIdentifier: 'Certified Member'),
                      ),
                      (route) => false,
                    );
                  },
                  child: const Text('GO TO DASHBOARD',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}