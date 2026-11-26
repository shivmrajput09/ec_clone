import 'package:ec_card_app/src/presentation/venue/map_controller_handle.dart';
import 'dart:async';

import 'package:badges/badges.dart' as badge;
import 'package:ec_card_app/src/application/loading_status/loading_status_cubit.dart';

import 'package:ec_card_app/src/presentation/account/account_screen.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/education/education_screen.dart';
import 'package:ec_card_app/src/presentation/home/scanner/eligibility_checker.dart';
import 'package:ec_card_app/src/presentation/message/message_screen.dart';
import 'package:ec_card_app/src/presentation/venue/venue_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  bool locationFetched = false;
  late LatLng initialCameraPosition;
  final MapControllerHandle _completer = MapControllerHandle();

  @override
  void initState() {
    super.initState();
    locationFetched = true;
    getLocation();
    // Fetched once here rather than from build(). Calling it during build
    // re-emits state, which rebuilds and calls it again until the data
    // arrives - firing repeated requests and, because the tree swaps between
    // the spinner and the IndexedStack on every emission, tearing down and
    // recreating the map each time.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final cubit = context.read<LoadingStatusCubit>();
      if (cubit.state.userDashboardData == null) {
        cubit.fetchUserDashboardData();
      }
    });
  }

  /// Centre of the UK, used when the device location cannot be read (denied
  /// permission, location services off, or a timeout). Without a fallback the
  /// screen stayed on its placeholder indefinitely.
  static const LatLng _fallbackCameraPosition = LatLng(54.0934, -2.8948);

  getLocation() async {
    LatLng resolved = _fallbackCameraPosition;
    try {
      final Position position = await determinePosition();
      resolved = LatLng(position.latitude, position.longitude);
    } catch (e) {
      appLog("Could not determine location, using fallback: $e");
    }

    if (!mounted) return;
    initialCameraPosition = resolved;
    setState(() {
      locationFetched = false;
    });
  }

  Future<Position> determinePosition() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      appLog("Location services are disabled");
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // Re-read the result: the original code checked the stale value, so a
      // denial fell through to getCurrentPosition() and threw.
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      appLog("Location Services denied");
      throw Exception("Location permission denied");
    }

    final currentPosition = await Geolocator.getCurrentPosition();

    return currentPosition;
  }

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return BlocBuilder<LoadingStatusCubit, LoadingStatusState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: state.dashboardLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : locationFetched
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : IndexedStack(
                      children: [
                        VenueScreen(
                          initialCameraPosition: initialCameraPosition,
                          completer: _completer,
                        ),
                        const EducationScreen(),
                        // BlocProvider(
                        //   create: (context) => getIt<MessageCubit>(),
                        //   child: const MessageScreen(),
                        // ),
                        const MessageScreen(),
                        const AccountScreen(),
                      ],
                      index: index,
                    ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Visibility(
            visible: !keyboardIsOpen,
            child: FloatingActionButton(
              backgroundColor: primaryColorLight,
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const EligibilityCheckerScreen()));
              },
              child: ImageIcon(
                const AssetImage('assets/images/qr-code-scan.png'),
                // The button shows only an image, so without this a screen
                // reader announces it with no name at all.
                semanticLabel: AppLocalizations.of(context)!.scanQrCode,
                size: 32.sp,
                color: Colors.white,
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Colors.white,
            // shape: const CircularNotchedRectangle(),
            notchMargin: 0,
            clipBehavior: Clip.none,
            child: BottomNavigationBar(
              selectedFontSize: 11,
              unselectedFontSize: 11,
              backgroundColor: Colors.white,
              elevation: 0,
              currentIndex: index,
              onTap: (index) => setState(() {
                this.index = index;
              }),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: primaryColorLight,
              selectedLabelStyle: TextStyle(
                  color: primaryColorLight, fontWeight: FontWeight.w500),
              selectedIconTheme: IconThemeData(
                color: primaryColorLight,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    index == 0
                        ? FluentIcons.home_24_filled
                        : FluentIcons.home_24_regular,
                    size: 28,
                  ),
                  label: AppLocalizations.of(context)!.venues,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    index == 1
                        ? FluentIcons.learning_app_24_filled
                        : FluentIcons.learning_app_24_regular,
                    size: 28,
                  ),
                  /*ImageIcon(
                    AssetImage('assets/images/educationUnSelected.png'),
                    size: 23,
                  ),*/
                  label: AppLocalizations.of(context)!.education,
                ),
                // const BottomNavigationBarItem(
                //   icon: SizedBox(),
                //   label: "",
                // ),
                BottomNavigationBarItem(
                  icon: state.userDashboardData?.unReadNotifications != null &&
                          state.userDashboardData!.unReadNotifications > 0
                      ? badge.Badge(
                          badgeColor: primaryCyan,
                          // The badge count is decoration on top of the tab
                          // icon. Left in the semantics tree it is announced
                          // as a bare digit ahead of the tab's own name —
                          // "4, Message, tab 3 of 4" — so keep it visual only.
                          badgeContent: ExcludeSemantics(
                            child: Text(
                              "${state.userDashboardData?.unReadNotifications}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontSize: 10,
                                      color: white,
                                      fontWeight: FontWeight.w600),
                            ),
                          ),
                          child: Icon(
                            index == 2
                                ? FluentIcons.mail_24_filled
                                : FluentIcons.mail_24_regular,
                            size: 28,
                          ))
                      : Icon(
                          index == 2
                              ? FluentIcons.mail_24_filled
                              : FluentIcons.mail_24_regular,
                          size: 28,
                        ),
                  label: AppLocalizations.of(context)!.message,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    index == 3
                        ? FluentIcons.person_24_filled
                        : FluentIcons.person_24_regular,
                    size: 28,
                  ),
                  label: AppLocalizations.of(context)!.account,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
