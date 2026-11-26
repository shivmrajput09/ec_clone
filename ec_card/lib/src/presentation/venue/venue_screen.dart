import 'package:ec_card_app/src/presentation/venue/map_controller_handle.dart';
import 'dart:async';

import 'package:ec_card_app/src/application/venue/venue_cubit.dart';
import 'package:ec_card_app/src/presentation/core/locale_provider.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/venue/pages/product_page.dart';
import 'package:ec_card_app/src/presentation/venue/widgets/map_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/venue/pages/vending_machine_page.dart';
import 'package:ec_card_app/src/presentation/venue/pages/venue_page.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class VenueScreen extends StatefulWidget {
  const VenueScreen(
      {Key? key, required this.initialCameraPosition, required this.completer})
      : super(key: const Key("venue-screen"));

  static const routeName = "/venue";

  final LatLng initialCameraPosition;
  final MapControllerHandle completer;

  @override
  State<VenueScreen> createState() => _VenueScreenState();
}

class _VenueScreenState extends State<VenueScreen> {
  // Collapsed when a store card is tapped so the camera move is
  // visible: the panel can cover half the screen, including the
  // point being focused.
  final PanelController _panelController = PanelController();

  GoogleMapController? _controller;
  final Set<Marker> _markers = {};
  // final Completer<GoogleMapController> _completer = Completer();

  CameraPosition? _cameraPosition;
  String? _lastLoadedLanguageCode;

  @override
  void initState() {
    super.initState();
    started();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final languageCode = context.watch<LocaleProvider>().locale.languageCode;
    if (_lastLoadedLanguageCode == languageCode) {
      return;
    }

    _lastLoadedLanguageCode = languageCode;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _setCurrentLocationMarker();
      _fetchVenueContent();
    });
  }

  started() async {
    setState(() {
      _cameraPosition =
          CameraPosition(target: widget.initialCameraPosition, zoom: 17.0);
      _markers
        ..clear()
        ..add(_currentLocationMarker());
      if (_controller != null) {
        _controller
            ?.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition!));
      }
    });

    final c = await widget.completer.controller;
    if (!mounted) return;
    c.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition!));
  }

  void _setCurrentLocationMarker() {
    setState(() {
      _markers
        ..clear()
        ..add(_currentLocationMarker());
    });
  }

  Marker _currentLocationMarker() {
    return Marker(
      markerId: const MarkerId("Current Location"),
      position: widget.initialCameraPosition,
      infoWindow:
          InfoWindow(title: AppLocalizations.of(context)!.current_location),
      onDragEnd: (_currentlatLng) {
        // latLng = _currentlatLng;
      },
    );
  }

  void _fetchVenueContent() {
    context.read<VenueCubit>().getVenuesList(
          widget.initialCameraPosition.latitude,
          widget.initialCameraPosition.longitude,
        );
    context.read<VenueCubit>().getProductsList();
  }

  Future<Position> determinePosition() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      appLog("Location services are disabled");
    }
    final LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        appLog("Location Services denied");
      }
    }

    final currentPosition = await Geolocator.getCurrentPosition();

    return currentPosition;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          appBar: AppBar(), title: AppLocalizations.of(context)!.ecCard),
      body: BlocBuilder<VenueCubit, VenueState>(
        builder: (context, state) {
          return SlidingUpPanel(
            controller: _panelController,
            parallaxEnabled: true,
            body: Column(
              children: [
                Expanded(
                  child: state.isVenueLoading || state.isIVTSLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : MapView(
                          mapCompleter: widget.completer,
                          latlng: widget.initialCameraPosition,
                          venueList: state.venuesList,
                          ivtsList: state.ivtsList,
                          cameraPosition: _cameraPosition!,
                          locationMarker: _markers,
                        ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2 - 150.h,
                )
              ],
            ),
            minHeight: 160.h,
            maxHeight: MediaQuery.of(context).size.height / 2,
            panel: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 6,
                        width: double.infinity,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Container(
                          height: 3,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                      Container(
                        height: 6,
                        width: double.infinity,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Container(
                          height: 3,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                      Container(
                        height: 6,
                        width: double.infinity,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Container(
                          height: 3,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                      Expanded(
                        child: DefaultTabController(
                          length: 3,
                          child: Scaffold(
                            appBar: PreferredSize(
                              preferredSize: const Size.fromHeight(80),
                              child: Container(
                                // margin: EdgeInsets.only(top: 10.h),
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[400]!,
                                            width: 0.5))),
                                child: TabBar(
                                  onTap: (val) {
                                    context
                                        .read<VenueCubit>()
                                        .setSelectedTabIndex(val);
                                  },
                                  labelColor: primaryColorLight,
                                  isScrollable: false,
                                  labelStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: primaryColorLight),
                                  indicatorPadding: EdgeInsets.zero,
                                  labelPadding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  unselectedLabelColor: Colors.grey[500],
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  indicator: UnderlineTabIndicator(
                                    borderSide: BorderSide(
                                        color: state.selectedTabIndex == 0
                                            ? Colors.cyan
                                            : state.selectedTabIndex == 1
                                                ? kioskUnderline
                                                : Colors.red,
                                        width: 2),
                                  ),
                                  tabs: [
                                    TabTitleWidget(
                                      iconPath: 'assets/images/store.png',
                                      title:
                                          AppLocalizations.of(context)!.stores,
                                      selectedTab: state.selectedTabIndex == 0,
                                    ),
                                    TabTitleWidget(
                                      iconPath:
                                          'assets/images/vendingMachine.png',
                                      title:
                                          AppLocalizations.of(context)!.kiosk,
                                      selectedTab: state.selectedTabIndex == 1,
                                    ),
                                    TabTitleWidget(
                                      iconPath: 'assets/images/search.png',
                                      title:
                                          AppLocalizations.of(context)!.online,
                                      selectedTab: state.selectedTabIndex == 2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            body: TabBarView(children: [
                              VenuePageWidget(
                                completer: widget.completer,
                                panelController: _panelController,
                              ),
                              VendingMachinePageWidget(
                                completer: widget.completer,
                                panelController: _panelController,
                              ),
                              const SearchProductScreen(),
                            ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TabTitleWidget extends StatelessWidget {
  const TabTitleWidget({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.selectedTab,
  }) : super(key: key);

  final String iconPath;
  final String title;
  final bool selectedTab;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image.asset(iconPath, height: 36, width: 36),
        // const SizedBox(height: 5),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 13,
              color: selectedTab ? primaryColorLight : Colors.grey[400]),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
