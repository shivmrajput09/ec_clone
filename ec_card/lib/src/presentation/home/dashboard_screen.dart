// lib/src/presentation/home/dashboard_screen.dart

import 'package:flutter/material.dart';
import '../videos/video_screen.dart';
import '../education/education_screen.dart';

class DashboardScreen extends StatefulWidget {
  final String userIdentifier;
  const DashboardScreen({super.key, required this.userIdentifier});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);

    return Scaffold(
      appBar: AppBar(
        title: const Text('EC Card Hub'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome,',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            Text(
              widget.userIdentifier.isNotEmpty ? widget.userIdentifier : 'EC Member',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // 📚 PART 11: MEDIA HUB SECTION
            const Text(
              'Part 11: Educational Media Hub',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: primaryColor),
            ),
            const SizedBox(height: 12),

            // 1. VIDEO PLAYER BUTTON
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFFE8EAF6),
                  child: Icon(Icons.play_circle_fill, color: primaryColor, size: 30),
                ),
                title: const Text('Training Videos Player', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text('Chewie Video Player with Completion Unlock'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  // ✅ Navigates to Video Streaming Screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VideosScreen()),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),

            // 2. EDUCATION & PDF VIEWER BUTTON
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFFE0F2F1),
                  child: Icon(Icons.picture_as_pdf, color: Colors.teal, size: 28),
                ),
                title: const Text('Guideline Documents (PDF)', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text('Syncfusion In-App PDF Reader & Weblinks'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  // ✅ Navigates to Education & PDF Hub
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EducationScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const EducationScreen()));
          }
        },
        selectedItemColor: primaryColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Education'),
        ],
      ),
    );
  }
}