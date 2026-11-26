import 'package:cached_network_image/cached_network_image.dart';
import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.appBar,
    required this.title,
    this.showBackButton = false,
  }) : super(key: key);

  final AppBar appBar;
  final String title;
  final bool showBackButton;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingStatusCubit, LoadingStatusState>(
      builder: (context, state) {
        return AppBar(
          toolbarHeight: 48,
          centerTitle: true,
          title: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 16, color: Colors.black),
          ),
          elevation: 0,
          shadowColor: primaryCyan,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leadingWidth: 50,
          leading: showBackButton
              ? IconButton(
                  icon: const BackIcon(variant: BackIconVariant.iosNew),
                  onPressed: () => Navigator.maybePop(context),
                )
              : Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 16, top: 5, bottom: 5),
                  child: Container(
                    alignment: Alignment.center,
                    width: 36.h,
                    height: 36.h,
                    decoration: BoxDecoration(
                      color: primaryBackgroundColor,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  end: 16, top: 5, bottom: 5),
              child: Container(
                alignment: Alignment.center,
                width: 36.h,
                height: 36.h,
                decoration: BoxDecoration(
                  // color: primaryBackgroundColor,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: CachedNetworkImage(
                  imageUrl: state.userDashboardData?.brandLogo ??
                      "https://ec-cardapp.com/assets/icons/eC-Card-Logo.png",
                  fit: BoxFit.cover,
                  placeholder: (context, url) {
                    return Image.network(
                      'https://ec-cardapp.com/assets/icons/eC-Card-Logo.png',
                      fit: BoxFit.cover,
                    );
                  },
                  errorWidget: (context, url, error) {
                    return Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
