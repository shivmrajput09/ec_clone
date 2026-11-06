// lib/src/presentation/education/education_screen.dart

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../videos/video_screen.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Educational Media Hub'),
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Colors.cyan,
            indicatorWeight: 3,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(icon: Icon(Icons.video_library), text: 'Videos'),
              Tab(icon: Icon(Icons.picture_as_pdf), text: 'Documents'),
              Tab(icon: Icon(Icons.link), text: 'Weblinks'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // TAB 1: Videos Hub
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.video_collection_outlined, size: 70, color: primaryColor),
                    const SizedBox(height: 16),
                    const Text('Mandatory Training Modules', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    const Text('Watch interactive video lectures to qualify for certification.', textAlign: TextAlign.center),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: primaryColor, foregroundColor: Colors.white),
                      icon: const Icon(Icons.play_circle_outline),
                      label: const Text('Open Training Videos'),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const VideosScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ),

            // TAB 2: Guideline PDF Documents Viewer
            SfPdfViewer.network(
              'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
              canShowPaginationDialog: true,
              pageLayoutMode: PdfPageLayoutMode.continuous,
            ),

            // TAB 3: Weblinks
            ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildWeblinkTile('NHS Healthcare Portal', 'Official UK Health Service guidelines'),
                _buildWeblinkTile('Emergency Contraception Guide', 'Clinical protocol and FAQ for patients'),
                _buildWeblinkTile('Pharmacy Locator Service', 'Find authorized distribution centers'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeblinkTile(String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.language, color: Color(0xFF3F51B5)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.open_in_new, size: 18),
        onTap: () {},
      ),
    );
  }
}