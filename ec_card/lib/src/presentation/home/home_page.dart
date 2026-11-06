// lib/src/presentation/home/home_page.dart

import 'package:flutter/material.dart';
import '../education/education_screen.dart';
import '../account/account_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final int _unreadMessagesCount = 3; // Dynamic Badge Count

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);
    const accentCyan = Colors.cyan;

    return Scaffold(
      // 🎯 TARGET 1: IndexedStack taaki Tab switch karne par page destroy/rebuild na ho
      body: IndexedStack(
        index: _currentIndex,
        children: [
          _buildVenuesTab(primaryColor),        // Tab 0: Venues / Map Hub
          const EducationScreen(),              // Tab 1: Part 11 Media Hub
          _buildMessagesTab(primaryColor),      // Tab 2: Messages / Notifications
          const AccountScreen(),                // Tab 3: Account & Profile
        ],
      ),

      // 🎯 TARGET 2: Center Docked FAB (QR Code Scanner)
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        backgroundColor: accentCyan,
        shape: const CircleBorder(),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Opening QR Scanner to claim pharmacy vouchers...'),
              backgroundColor: primaryColor,
            ),
          );
        },
        child: const Icon(Icons.qr_code_scanner, color: Colors.white, size: 28),
      ),

      // 🎯 TARGET 3: Custom Bottom Navigation Bar with Notched Dock & Badges
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
              // Left Group: Venues & Education
              _buildNavTabItem(
                icon: Icons.storefront_outlined,
                activeIcon: Icons.storefront,
                label: 'Venues',
                index: 0,
                primaryColor: primaryColor,
              ),
              _buildNavTabItem(
                icon: Icons.menu_book_outlined,
                activeIcon: Icons.menu_book,
                label: 'Education',
                index: 1,
                primaryColor: primaryColor,
              ),

              // Spacer for Center Docked FAB
              const SizedBox(width: 48),

              // Right Group: Messages & Account
              _buildNavTabItem(
                icon: Icons.mail_outline,
                activeIcon: Icons.mail,
                label: 'Messages',
                index: 2,
                badgeCount: _unreadMessagesCount, // 🔴 Badge
                primaryColor: primaryColor,
              ),
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
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                // 🔴 BADGE INTEGRATION
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
                      constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
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
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Tab 0: Venues Placeholder (Google Maps & Pharmacy Locator)
  Widget _buildVenuesTab(Color primaryColor) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Participating Venues'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.indigo.shade200),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.map_outlined, size: 50, color: primaryColor),
                  const SizedBox(height: 8),
                  Text('Interactive Pharmacy Map',
                      style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
                  const Text('GPS Location Active: Showing venues within 5 miles',
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Nearby Authorized Pharmacies', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _buildVenueCard('Boots Pharmacy - Central Plaza', '0.4 miles away • Open until 8:00 PM', true),
          _buildVenueCard('Well Pharmacy - High Street', '1.1 miles away • Open until 6:30 PM', true),
          _buildVenueCard('Superdrug Health Clinic', '2.5 miles away • Closed today', false),
        ],
      ),
    );
  }

  Widget _buildVenueCard(String name, String details, bool isOpen) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: isOpen ? Colors.green.shade50 : Colors.grey.shade100,
          child: Icon(Icons.local_pharmacy, color: isOpen ? Colors.green : Colors.grey),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(details),
        trailing: const Icon(Icons.directions, color: Colors.indigo),
      ),
    );
  }

  // Tab 2: Messages Tab
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
          _buildMessageItem('Card Renewal Confirmed', 'Your EC membership has been certified for 12 months.', '2 hrs ago'),
          _buildMessageItem('New Pharmacy Added', 'A new participating venue is available in your area.', '1 day ago'),
          _buildMessageItem('Training Milestone Completed', 'You have successfully unlocked the certification quiz.', '3 days ago'),
        ],
      ),
    );
  }

  Widget _buildMessageItem(String title, String desc, String time) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.indigoAccent,
          child: Icon(Icons.notifications, color: Colors.white, size: 20),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        subtitle: Text(desc, style: const TextStyle(fontSize: 12)),
        trailing: Text(time, style: TextStyle(color: Colors.grey[600], fontSize: 11)),
      ),
    );
  }
}