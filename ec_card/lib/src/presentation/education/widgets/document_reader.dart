import 'package:ec_card_app/src/application/message/message_cubit.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DocumentReaderPage extends StatefulWidget {
  const DocumentReaderPage(
      {Key? key,
      required this.document,
      this.calledFrom,
      required this.afterMessageLoading})
      : super(key: key);

  final EducationItem document;
  final String? calledFrom;
  final Function afterMessageLoading;

  @override
  State<DocumentReaderPage> createState() => _DocumentReaderPageState();
}

class _DocumentReaderPageState extends State<DocumentReaderPage> {
  @override
  void initState() {
    super.initState();
    widget.afterMessageLoading();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (widget.calledFrom != null && widget.calledFrom == "messages") {
          Navigator.popUntil(context, (route) => route.isFirst);
        } else {
          Navigator.pop(context);
        }

        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                if (widget.calledFrom != null &&
                    widget.calledFrom == "messages") {
                  Navigator.popUntil(context, (route) => route.isFirst);
                } else {
                  Navigator.pop(context);
                }
              },
              icon: const BackIcon(variant: BackIconVariant.material)),
          title: Text(widget.document.documentTitle),
          centerTitle: true,
        ),
        body: SfPdfViewer.network(
          widget.document.documentFile,
          canShowPaginationDialog: true,
          pageLayoutMode: PdfPageLayoutMode.continuous,
        ),
      ),
    );
  }
}
