import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';

class DocumentReaderPage extends StatelessWidget {
  final EducationItem document;

  const DocumentReaderPage({Key? key, required this.document}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(document.documentTitle),
        centerTitle: true,
      ),
      body: SfPdfViewer.network(
        document.documentFile, // Remote URL of PDF
        canShowPaginationDialog: true,
        pageLayoutMode: PdfPageLayoutMode.continuous,
      ),
    );
  }
}