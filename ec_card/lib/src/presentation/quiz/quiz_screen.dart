// lib/src/presentation/quiz/quiz_screen.dart

import 'package:flutter/material.dart';
import 'quiz_complete.dart';
import 'quiz_fail_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // Sample EC-Card Clinical & Protocol Questions
  final List<Map<String, dynamic>> _questions = [
    {
      'question': '1. Within how many hours should Emergency Contraception be taken for maximum efficacy?',
      'options': [
        'Within 24 to 72 hours',
        'Within 7 days',
        'Within 2 weeks',
        'Anytime in the month'
      ],
      'correctIndex': 0,
    },
    {
      'question': '2. Who is eligible to receive free EC Card services at participating UK pharmacies?',
      'options': [
        'Registered patients within authorized age guidelines',
        'Only private insurance holders',
        'Non-residents without NHS verification',
        'None of the above'
      ],
      'correctIndex': 0,
    },
    {
      'question': '3. What must the patient do at the pharmacy to claim the emergency voucher?',
      'options': [
        'Scan the pharmacy QR code via EC Card app',
        'Bring a paper letter from the council',
        'Pay standard prescription charge',
        'Call the helpline only'
      ],
      'correctIndex': 0,
    },
    {
      'question': '4. Is patient confidentiality maintained during the EC consultation?',
      'options': [
        'Yes, consultations are strictly confidential',
        'No, details are made public',
        'Only if requested in advance',
        'Depends on the pharmacy'
      ],
      'correctIndex': 0,
    },
  ];

  final Map<int, int> _selectedAnswers = {};
  bool _isSubmitting = false;

  void _submitQuiz() async {
    setState(() => _isSubmitting = true);
    await Future.delayed(const Duration(milliseconds: 800)); // Calculation delay
    setState(() => _isSubmitting = false);

    // Score Calculation
    int correctCount = 0;
    for (int i = 0; i < _questions.length; i++) {
      if (_selectedAnswers[i] == _questions[i]['correctIndex']) {
        correctCount++;
      }
    }

    final double scorePercentage = (correctCount / _questions.length) * 100;
    final bool isPassed = scorePercentage >= 75; // 75% Passing Criteria

    if (!mounted) return;

    // 🎯 PASS / FAIL BRANCHING
    if (isPassed) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => QuizCompleteScreen(
            score: scorePercentage.toInt(),
            totalQuestions: _questions.length,
          ),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => QuizFailScreen(
            score: scorePercentage.toInt(),
            totalQuestions: _questions.length,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);
    final allAnswered = _selectedAnswers.length == _questions.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Assessment Quiz'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Progress Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            color: Colors.indigo.shade50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Answered: ${_selectedAnswers.length} / ${_questions.length}',
                  style: const TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
                ),
                Text(
                  'Passing: 75%',
                  style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[700]),
                ),
              ],
            ),
          ),

          // Questions List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _questions.length,
              itemBuilder: (context, qIndex) {
                final q = _questions[qIndex];
                return Card(
                  margin: const EdgeInsets.only(bottom: 20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          q['question'],
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 12),
                        ...List.generate(q['options'].length, (oIndex) {
                          final isSelected = _selectedAnswers[qIndex] == oIndex;
                          return InkWell(
                            onTap: () {
                              setState(() {
                                _selectedAnswers[qIndex] = oIndex;
                              });
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                              decoration: BoxDecoration(
                                color: isSelected ? Colors.indigo.shade50 : Colors.grey.shade50,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: isSelected ? primaryColor : Colors.grey.shade300,
                                  width: isSelected ? 2 : 1,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
                                    color: isSelected ? primaryColor : Colors.grey,
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      q['options'][oIndex],
                                      style: TextStyle(
                                        color: isSelected ? primaryColor : Colors.black87,
                                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          // Submit Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: (allAnswered && !_isSubmitting) ? _submitQuiz : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: _isSubmitting
                    ? const CircularProgressIndicator(color: Colors.white)
                    : Text(
                        allAnswered ? 'SUBMIT ASSESSMENT' : 'ANSWER ALL TO SUBMIT',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}