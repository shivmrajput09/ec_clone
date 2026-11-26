import 'package:ec_card_app/src/application/education/education_cubit.dart';
import 'package:ec_card_app/src/data/education/model/education_item/education_item.dart';
import 'package:ec_card_app/src/presentation/education/widgets/document_reader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/utils/extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DocumentCardWidget extends StatelessWidget {
  const DocumentCardWidget({
    Key? key,
    required this.doc,
  }) : super(key: key);

  final EducationItem doc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationCubit, EducationState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
          child: InkWell(
            onTap: () {
              context
                  .read<EducationCubit>()
                  .updateEducationViews('document', doc.educationId);
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => DocumentReaderPage(
                    document: doc,
                    afterMessageLoading: () {},
                  ),
                ),
              );
              context.read<EducationCubit>().getDocumentList();
            },
            child: SizedBox(
              height: 90,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  // side: BorderSide(width: 1, color: Colors.grey[300]!),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  title: Text(doc.documentTitle),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text("Total pages: ${doc.documentPages}"),
                        Text(AppLocalizations.of(context)!
                            .sizeLabel(doc.documentSize)),
                        Text(DateFormat(
                                DateFormat.YEAR_ABBR_MONTH_DAY,
                                safeDateFormatLocale(
                                    Localizations.localeOf(context)
                                        .languageCode))
                            .format(DateTime.parse(
                          doc.created,
                        )))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
