// lib/src/presentation/account/account_screen.dart

import 'package:flutter/material.dart';
import '../login/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF3F51B5);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column( // ✅ Fixed: Wrapped in Column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: primaryColor,
                    child: Icon(Icons.person, color: Colors.white, size: 36),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Certified EC Member',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                      SizedBox(height: 4),
                      Text('NHS Verified Patient • Active',
                          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 13)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),

            const Text('Settings & Preferences', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            _buildSettingsTile(Icons.security, 'Privacy & Security Guidelines'),
            _buildSettingsTile(Icons.language, 'App Language (English UK)'),
            _buildSettingsTile(Icons.help_outline, 'NHS EC Support & FAQ'),
            _buildSettingsTile(Icons.info_outline, 'About EC-Card Digital Service'),

            const SizedBox(height: 30),

            // Logout Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  side: const BorderSide(color: Colors.red),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                icon: const Icon(Icons.logout),
                label: const Text('LOG OUT', style: TextStyle(fontWeight: FontWeight.bold)),
                onPressed: () {
                  _showLogoutDialog(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsTile(IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF3F51B5)),
        title: Text(title, style: const TextStyle(fontSize: 14)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
        onTap: () {},
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Log Out'),
        content: const Text('Are you sure you want to end your session?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('CANCEL'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                (route) => false,
              );
            },
            child: const Text('LOG OUT', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}