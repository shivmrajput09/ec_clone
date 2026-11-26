import 'package:ec_card_app/src/data/core/logging/app_log.dart';
//Home Page Alternative
// return Scaffold(
//       body: PageStorage(
//         child: currentScreen,
//         bucket: bucket,
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: primaryCyan,
//         onPressed: () {},
//         child: const ImageIcon(AssetImage('assets/images/scanner.png')),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.transparent,
//         notchMargin: 10.sp,
//         shape: const CircularNotchedRectangle(),
//         child: Container(
//           height: 70,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(10.r),
//                 topRight: Radius.circular(10.r),
//               ),
//               gradient: LinearGradient(
//                 colors: [Colors.black, primaryBackgroundColor],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               )),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               MaterialButton(
//                 onPressed: () {
//                   setState(() {
//                     currentScreen = const VenueScreen();
//                     index = 0;
//                   });
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ImageIcon(
//                       AssetImage(index == 0
//                           ? 'assets/images/venuesUnselected.png'
//                           : 'assets/images/venuesSelected.png'),
//                       color: index == 0 ? Colors.white : Colors.grey[600],
//                     ),
//                     Text(
//                       "Venues",
//                       style: TextStyle(
//                           color: index == 0 ? Colors.white : Colors.grey[600]),
//                     )
//                   ],
//                 ),
//               ),
//               MaterialButton(
//                 onPressed: () {
//                   setState(() {
//                     currentScreen = const EducationScreen();
//                     index = 1;
//                   });
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ImageIcon(
//                       AssetImage(index == 1
//                           ? 'assets/images/educationUnSelected.png'
//                           : 'assets/images/educationSelected.png'),
//                       color: index == 1 ? Colors.white : Colors.grey[600],
//                     ),
//                     Text(
//                       "Education",
//                       style: TextStyle(
//                           color: index == 1 ? Colors.white : Colors.grey[600]),
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox.shrink(),
//               MaterialButton(
//                 onPressed: () {
//                   setState(() {
//                     currentScreen = const MessageScreen();
//                     index = 2;
//                   });
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ImageIcon(
//                       AssetImage(index == 2
//                           ? 'assets/images/messageUnselected.png'
//                           : 'assets/images/messageSelected.png'),
//                       color: index == 2 ? Colors.white : Colors.grey[600],
//                     ),
//                     Text(
//                       "Venues",
//                       style: TextStyle(
//                           color: index == 2 ? Colors.white : Colors.grey[600]),
//                     )
//                   ],
//                 ),
//               ),
//               MaterialButton(
//                 onPressed: () {
//                   setState(() {
//                     currentScreen = const AccountScreen();
//                     index = 3;
//                   });
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ImageIcon(
//                       AssetImage(index == 3
//                           ? 'assets/images/accountUnselected.png'
//                           : 'assets/images/accountSelected.png'),
//                       color: index == 3 ? Colors.white : Colors.grey[600],
//                     ),
//                     Text(
//                       "Venues",
//                       style: TextStyle(
//                           color: index == 3 ? Colors.white : Colors.grey[600]),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );




//Venue Screen Alternative
// SingleChildScrollView(
//           child: SizedBox(
//             height: MediaQuery.of(context).size.height * 1.2,
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height / 2,
//                   width: double.infinity,
//                   // color: Colors.grey[200],
//                   child: const MapView(),
//                 ),
//                 Container(
//                   height: 25,
//                   width: double.infinity,
//                   color: Colors.white,
//                   alignment: Alignment.center,
//                   child: Container(
//                     height: 5,
//                     width: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.grey[200],
//                       borderRadius: BorderRadius.circular(10.r),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: DefaultTabController(
//                     length: 3,
//                     child: Scaffold(
//                       appBar: PreferredSize(
//                         preferredSize: const Size.fromHeight(80),
//                         child: Container(
//                           // margin: EdgeInsets.only(top: 10.h),
//                           height: 80,
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               border: Border(
//                                   bottom: BorderSide(
//                                       color: Colors.grey[400]!, width: 0.5))),
//                           child: TabBar(
//                             onTap: (val) {},
//                             labelColor: primaryBackgroundColor,
//                             isScrollable: false,
//                             indicatorPadding: EdgeInsets.zero,
//                             labelPadding:
//                                 const EdgeInsets.symmetric(horizontal: 5),
//                             unselectedLabelColor: Colors.grey[500],
//                             indicatorSize: TabBarIndicatorSize.label,
//                             indicator: const UnderlineTabIndicator(
//                               borderSide:
//                                   BorderSide(color: Colors.red, width: 3),
//                             ),
//                             tabs: const [
//                               TabTitleWidget(
//                                   iconPath: 'assets/images/store.png',
//                                   title: "Venues"),
//                               TabTitleWidget(
//                                   iconPath: 'assets/images/vendingMachine.png',
//                                   title: "Vending Machine"),
//                               TabTitleWidget(
//                                   iconPath: 'assets/images/search.png',
//                                   title: "Search"),
//                             ],
//                           ),
//                         ),
//                       ),
//                       body: TabBarView(children: [
//                         const VenuePageWidget(),
//                         const VendingMachinePageWidget(),
//                         SearchPageWidget(),
//                       ]),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),


//Get location using location dependency
  // void getLocation() async {
  //   var location = await currentLocation.getLocation();
  //   currentLocation.onLocationChanged.listen((LocationData loc) {
  //     _controller?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
  //       target: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0),
  //       zoom: 15.0,
  //     )));
  //     appLog(loc.latitude);
  //     appLog(loc.longitude);
  //     setState(() {
  //       _markers.add(Marker(
  //           markerId: const MarkerId('Home'),
  //           position: LatLng(loc.latitude ?? 0.0, loc.longitude ?? 0.0)));
  //     });
  //   });
  // }


    //MapView.dart
    // getLocation() async {
  //   Position position = await Geolocator.getCurrentPosition();

  //   setState(() {
  //     latLng = LatLng(position.latitude, position.longitude);
  //     _cameraPosition = CameraPosition(target: latLng!, zoom: 17.0);
  //     if (_controller != null) {
  //       _controller
  //           ?.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition!));
  //     }

  //     _markers.add(Marker(
  //       markerId: const MarkerId("Current Location"),
  //       position: latLng!,
  //       infoWindow: const InfoWindow(title: "Current Location"),
  //       onDragEnd: (_currentlatLng) {
  //         latLng = _currentlatLng;
  //       },
  //     ));
  //   });
  // }

  //Scanner Error Dialog
  // showDialog(
                          //     barrierDismissible: false,
                          //     context: context,
                          //     builder: (ctx) {
                          //       return BackdropFilter(
                          //         filter:
                          //             ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          //         child: AlertDialog(
                          //           title: Column(
                          //             children: [
                          //               Text(code),
                          //             ],
                          //           ),
                          //           actions: [
                          //             TextButton(
                          //                 onPressed: () {
                          //                   Navigator.push(
                          //                       context,
                          //                       MaterialPageRoute(
                          //                           builder: (context) =>
                          //                               const ScannerPage()));
                          //                 },
                          //                 child: const Text("Cancel")),
                          //             TextButton(
                          //                 onPressed: () {
                          //                   Navigator.popAndPushNamed(
                          //                       context, HomePage.routeName);
                          //                 },
                          //                 child: const Text("Ok"))
                          //           ],
                          //         ),
                          //       );
                          //     });