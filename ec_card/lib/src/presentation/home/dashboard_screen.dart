// lib/src/presentation/home/dashboard_screen.dart

import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  final String userIdentifier;
  const DashboardScreen({super.key, required this.userIdentifier});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);
    const accentCyan = Colors.cyan;

    return Scaffold(
      appBar: AppBar(
        title: const Text('EC Card Dashboard'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Header
            Text(
              'Welcome,',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            Text(
              widget.userIdentifier.isNotEmpty ? widget.userIdentifier : 'EC Member',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // 💳 DIGITAL EC CARD WIDGET
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [primaryColor, Color(0xFF1A237E)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'EC DIGITAL CARD',
                        style: TextStyle(
                          color: accentCyan,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                      ),
                      Icon(Icons.contactless, color: Colors.white70, size: 28),
                    ],
                  ),
                  const Text(
                    '**** **** **** 8421',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      letterSpacing: 3,
                      fontFamily: 'monospace',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('CARD HOLDER',
                              style: TextStyle(color: Colors.white54, fontSize: 10)),
                          Text(
                            widget.userIdentifier.split('@').first.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Icon(Icons.qr_code, color: Colors.white, size: 36),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // Quick Actions Title
            const Text(
              'Quick Actions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            // Action Buttons Grid
            Row(
              children: [
                _buildActionCard(Icons.qr_code_scanner, 'Scan QR', primaryColor),
                const SizedBox(width: 12),
                _buildActionCard(Icons.location_on, 'Venues', Colors.teal),
                const SizedBox(width: 12),
                _buildActionCard(Icons.card_giftcard, 'Offers', Colors.orange),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Card'),
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: 'Venues'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }

  Widget _buildActionCard(IconData icon, String label, Color color) {
    return Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: color.withOpacity(0.08),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color.withOpacity(0.2)),
        ),
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('$label feature clicked!')),
            );
          },
          borderRadius: BorderRadius.circular(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 32),
              const SizedBox(height: 8),
              Text(
                label,
                style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}