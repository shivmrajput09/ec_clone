import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportHeaderWidget extends StatelessWidget {
  const SupportHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingStatusCubit, LoadingStatusState>(
      builder: (context, state) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 14.sp,
                        ),
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.name_label,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade800),
                      ),
                      TextSpan(
                        text: state.userDashboardData?.support['name'] ?? "",
                      ),
                    ],
                  )),

                  //Email
                  RichText(
                      text: TextSpan(
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 14.sp,
                        ),
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.email_label,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade800),
                      ),
                      TextSpan(
                        text: state.userDashboardData?.support['email'] ?? "",
                      ),
                    ],
                  )),

                  //Contact Number
                  RichText(
                      text: TextSpan(
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 14.sp,
                        ),
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.contact_number_label,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade800),
                      ),
                      TextSpan(
                        text: state.userDashboardData?.support['number'] ?? "",
                      ),
                    ],
                  )),

                  //Notes
                  RichText(
                      text: TextSpan(
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 14.sp,
                        ),
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.notesLabel,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey.shade800),
                      ),
                      TextSpan(
                        text: state.userDashboardData?.support['notes'] ?? "",
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
