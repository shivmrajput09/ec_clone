
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../education/education_screen.dart';
import '../account/account_screen.dart';
import '../venue/venue_screen.dart';
import '../venue/map_controller_handle.dart';
import 'scanner/scanner_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final int _unreadMessagesCount = 3;

  // Google Maps Location Variables
  LatLng _currentPosition = const LatLng(54.0934, -2.8948);

  final MapControllerHandle _mapHandle = MapControllerHandle();

  bool _isLoadingLocation = true;

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  // Determine Current GPS Location
  Future<void> _determinePosition() async {
    try {
      LocationPermission permission =
          await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        final pos = await Geolocator.getCurrentPosition();

        if (mounted) {
          setState(() {
            _currentPosition =
                LatLng(pos.latitude, pos.longitude);
            _isLoadingLocation = false;
          });
        }
        return;
      }
    } catch (_) {}

    if (mounted) {
      setState(() => _isLoadingLocation = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);
    const accentCyan = Color(0xFF00ADB5);

    return Scaffold(
      // IndexedStack: Maintains tab state
      body: IndexedStack(
        index: _currentIndex,
        children: [
          // Tab 0: Google Maps Venue Screen
          _isLoadingLocation
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : VenueScreen(
                  initialCameraPosition: _currentPosition,
                  completer: _mapHandle,
                ),

          // Tab 1: Education
          const EducationScreen(),

          // Tab 2: Messages
          _buildMessagesTab(primaryColor),

          // Tab 3: Account
          const AccountScreen(),
        ],
      ),

      // Center Docked FAB
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        elevation: 4,
        backgroundColor: accentCyan,
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ScannerPage(),
            ),
          );
        },
        child: const Icon(
          Icons.qr_code_scanner,
          color: Colors.white,
          size: 30,
        ),
      ),

      // Custom Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 10,
        color: Colors.white,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Venues
              _buildNavTabItem(
                icon: Icons.storefront_outlined,
                activeIcon: Icons.storefront,
                label: 'Venues',
                index: 0,
                primaryColor: primaryColor,
              ),

              // Education
              _buildNavTabItem(
                icon: Icons.menu_book_outlined,
                activeIcon: Icons.menu_book,
                label: 'Education',
                index: 1,
                primaryColor: primaryColor,
              ),

              // FAB Spacer
              const SizedBox(width: 48),

              // Messages
              _buildNavTabItem(
                icon: Icons.mail_outline,
                activeIcon: Icons.mail,
                label: 'Messages',
                index: 2,
                badgeCount: _unreadMessagesCount,
                primaryColor: primaryColor,
              ),

              // Account
              _buildNavTabItem(
                icon: Icons.person_outline,
                activeIcon: Icons.person,
                label: 'Account',
                index: 3,
                primaryColor: primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Bottom Navigation Tab Item
  Widget _buildNavTabItem({
    required IconData icon,
    required IconData activeIcon,
    required String label,
    required int index,
    required Color primaryColor,
    int badgeCount = 0,
  }) {
    final isSelected = _currentIndex == index;

    return InkWell(
      onTap: () => setState(() => _currentIndex = index),
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  isSelected ? activeIcon : icon,
                  color: isSelected ? primaryColor : Colors.grey,
                  size: 24,
                ),

                // Notification Badge
                if (badgeCount > 0)
                  Positioned(
                    right: -6,
                    top: -4,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.redAccent,
                        shape: BoxShape.circle,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        '$badgeCount',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(height: 2),

            Text(
              label,
              style: TextStyle(
                color: isSelected ? primaryColor : Colors.grey,
                fontSize: 11,
                fontWeight: isSelected
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Tab 2: Messages
  Widget _buildMessagesTab(Color primaryColor) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications & Messages'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _buildMessageItem(
            'Card Renewal Confirmed',
            'Your EC membership has been certified for 12 months.',
            '2 hrs ago',
          ),
          _buildMessageItem(
            'New Pharmacy Added',
            'A new participating venue is available in your area.',
            '1 day ago',
          ),
          _buildMessageItem(
            'Training Milestone Completed',
            'You have successfully unlocked the certification quiz.',
            '3 days ago',
          ),
        ],
      ),
    );
  }

  // Message Card
  Widget _buildMessageItem(
    String title,
    String desc,
    String time,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.indigoAccent,
          child: Icon(
            Icons.notifications,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          desc,
          style: const TextStyle(fontSize: 12),
        ),
        trailing: Text(
          time,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}
