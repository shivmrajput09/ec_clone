import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/education/pages/documents_page.dart';
import 'package:ec_card_app/src/presentation/education/pages/weblinks_page.dart';
import 'package:ec_card_app/src/presentation/education/pages/video_page.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({Key? key, this.initialTabIndex = 0})
      : super(key: const Key("eduaction-screen"));

  static const routeName = "/education";

  /// Which tab to open on: 0 Videos, 1 Documents, 2 Weblinks. A notification
  /// about a weblink opens this screen on the Weblinks tab.
  final int initialTabIndex;

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(), title: AppLocalizations.of(context)!.education),
      body: DefaultTabController(
        length: 3,
        initialIndex: widget.initialTabIndex,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              // margin: EdgeInsets.only(top: 10.h),
              height: 50,
              color: Colors.white,
              child: TabBar(
                onTap: (val) {},
                // isScrollable: true,
                labelColor: primaryBackgroundColor,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 15),
                unselectedLabelColor: Colors.grey[500],
                indicatorSize: TabBarIndicatorSize.label,
                indicator: UnderlineTabIndicator(
                  borderSide:
                      BorderSide(color: primaryBackgroundColor, width: 5),
                ),
                tabs: [
                  TabHeadingWidget(title: AppLocalizations.of(context)!.videos),
                  TabHeadingWidget(title: AppLocalizations.of(context)!.documents),
                  TabHeadingWidget(title: AppLocalizations.of(context)!.weblinks),
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            VideoPage(),
            DocumentsPage(),
            WeblinksPage(),
          ]),
        ),
      ),
    );
  }
}

class TabHeadingWidget extends StatelessWidget {
  const TabHeadingWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Align(
        alignment: Alignment.center,
        // Three tabs leave each one a third of the width, and at a large
        // system font size "Documents" broke across two lines. Shrinking the
        // label to fit keeps every tab on one line, in every language.
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            maxLines: 1,
            softWrap: false,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
