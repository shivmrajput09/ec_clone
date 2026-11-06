import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DocumentReaderPage extends StatelessWidget {
  final String title;
  final String pdfUrl;

  const DocumentReaderPage({
    super.key,
    required this.title,
    required this.pdfUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SfPdfViewer.network(
        pdfUrl,
        canShowPaginationDialog: true,
        pageLayoutMode: PdfPageLayoutMode.continuous,
      ),
    );
  }
}
