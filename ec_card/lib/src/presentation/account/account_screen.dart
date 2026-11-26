import 'package:ec_card_app/src/application/core/application_bloc.dart';
import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/presentation/account/widgets/accessibility_statement.dart';
import 'package:ec_card_app/src/presentation/account/widgets/option_card.dart';
import 'package:ec_card_app/src/presentation/account/widgets/otp_delete_sheet.dart';
import 'package:ec_card_app/src/presentation/account/widgets/order_history_screen.dart';
import 'package:ec_card_app/src/presentation/account/widgets/privacy_policy.dart';
import 'package:ec_card_app/src/presentation/account/widgets/support_page.dart';
import 'package:ec_card_app/src/presentation/account/widgets/term_condition.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/res/app_languages.dart';
import 'package:ec_card_app/src/presentation/core/res/app_version.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/presentation/sign_up/widgets/language_selector_widget.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/locale_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: const Key("account-screen"));

  static const routeName = "/account";

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String _savedLanguage = 'en';
  String _appVersion = '';

  @override
  void initState() {
    super.initState();
    _loadSavedLanguage();
    _loadAppVersion();
    // Nothing else fetches the profile, and the Account screen shows the
    // signed-in mobile number, so request it here.
    context.read<LoadingStatusCubit>().fetchUserProfileData();
  }

  Future<void> _loadSavedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final lang = prefs.getString('userLanguage') ?? 'en';
    if (mounted) {
      setState(() => _savedLanguage = lang);
    }
  }

  // Shown from [kDisplayAppVersion] rather than PackageInfo so Android and iOS
  // display the same number, even though their store versions differ.
  void _loadAppVersion() {
    setState(() =>
        _appVersion = "$kDisplayAppVersion (${APIEndpoints.environmentLabel})");
  }

  showOTPSheet(context) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (builder) {
          return const OTPDeleteSheet();
        });
  }

  logoutUser(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: Text(
            AppLocalizations.of(context)!.logout,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          message: Text(
            AppLocalizations.of(context)!.are_you_sure_logout,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () {
                // Navigation is left to the unauthenticated state this event
                // produces. Pushing the login route here as well sent the user
                // to it twice, leaving a second copy behind the first.
                context
                    .read<ApplicationBloc>()
                    .add(const ApplicationEvent.logout());
              },
              child: Text(
                AppLocalizations.of(context)!.logout,
                style: const TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(AppLocalizations.of(context)!.cancel),
            isDefaultAction: true,
          ),
        );
      },
    );
  }

  /// Signed-in account header: shows the mobile number the session belongs to.
  Widget _buildAccountHeader(BuildContext context) {
    return BlocBuilder<LoadingStatusCubit, LoadingStatusState>(
      buildWhen: (previous, current) =>
          previous.userProfileData != current.userProfileData,
      builder: (context, state) {
        final mobile = state.userProfileData?.profile.mobile;
        if (mobile == null || mobile.isEmpty) {
          return const SizedBox.shrink();
        }
        return Container(
          margin: EdgeInsets.only(bottom: 18.h),
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [primaryBackgroundColor, primaryCyan],
            ),
            boxShadow: [
              BoxShadow(
                color: primaryBackgroundColor.withOpacity(0.28),
                blurRadius: 14,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 44.h,
                height: 44.h,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.18),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 24.h,
                ),
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.mobile_no,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.85),
                        fontSize: 12,
                        letterSpacing: 0.4,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      // Isolate the number so it is not reordered when the
                      // surrounding UI is right-to-left (Arabic, Urdu).
                      "\u{2066}$mobile\u{2069}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          appBar: AppBar(), title: AppLocalizations.of(context)!.account),
      body: BlocConsumer<ApplicationBloc, ApplicationState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView(
            padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 120.h),
            children: [
              _buildAccountHeader(context),
              if (kLanguageSelectionEnabled)
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 10.h),
                  child: LanguageSelectorWidget(
                    languages: kSupportedLanguages,
                    initialValue: _savedLanguage,
                    onChanged: (lang) {
                      setState(() => _savedLanguage = lang);
                      context.read<LocaleProvider>().setLocale(lang);
                    },
                  ),
                ),
              OptionCardWidget(
                imagePath: '',
                icon: Icons.history,
                onPress: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const OrderHistoryScreen(),
                    ),
                  );
                },
                title: AppLocalizations.of(context)!.orderHistory,
              ),
              OptionCardWidget(
                imagePath: "",
                onPress: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const SupportScreen(),
                    ),
                  );
                },
                title: AppLocalizations.of(context)!.support,
              ),
              OptionCardWidget(
                imagePath: 'assets/images/document.png',
                onPress: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const TermsConditionsScreen(),
                    ),
                  );
                },
                title: AppLocalizations.of(context)!.terms_condition,
              ),
              OptionCardWidget(
                imagePath: 'assets/images/document.png',
                onPress: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const PrivacyPolicyScreen(),
                    ),
                  );
                },
                title: AppLocalizations.of(context)!.privacy_policy,
              ),
              OptionCardWidget(
                imagePath: 'assets/images/document.png',
                onPress: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) =>
                          const AccessibilityStatementScreen(),
                    ),
                  );
                },
                title: AppLocalizations.of(context)!.accessibility_statement,
              ),
              OptionCardWidget(
                imagePath: 'assets/images/logout.png',
                onPress: () {
                  logoutUser(context);
                  // Navigator.pushNamedAndRemoveUntil(
                  //     context, LoginPage.routeName, (route) => false);
                  // context
                  //     .read<ApplicationBloc>()
                  //     .add(const ApplicationEvent.logout());
                },
                title: AppLocalizations.of(context)!.logout,
              ),
              OptionCardWidget(
                imagePath: 'assets/images/delete.png',
                onPress: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (ctx) {
                        return BlocBuilder<LoadingStatusCubit,
                            LoadingStatusState>(
                          builder: (context, state) {
                            return AlertDialog(
                              contentTextStyle:
                                  const TextStyle(fontSize: 14, color: black),
                              content: Text(AppLocalizations.of(ctx)!
                                  .delete_account_warning),
                              title: Text(
                                  AppLocalizations.of(ctx)!.delete_account),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(ctx);
                                    },
                                    child:
                                        Text(AppLocalizations.of(ctx)!.cancel)),
                                TextButton(
                                    onPressed: () {
                                      // context
                                      //     .read<LoadingStatusCubit>()
                                      //     .startDeletionProcess();
                                      Navigator.pop(ctx);
                                      showOTPSheet(context);

                                      // state.selfDeletionProcessStarted
                                      //     ? showOTPSheet(context)
                                      //     : null;
                                    },
                                    child:
                                        Text(AppLocalizations.of(ctx)!.delete)),
                              ],
                            );
                          },
                        );
                      });
                },
                title: AppLocalizations.of(context)!.delete_account,
              ),
              // OptionCardWidget(
              //     imagePath: 'assets/images/delete.png',
              //     onPress: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => const MapSample()));
              //     },
              //     title: "Map Cluster"),

              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: SizedBox(
                  width: double.infinity,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                        "${AppLocalizations.of(context)!.version_label}: $_appVersion"),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
