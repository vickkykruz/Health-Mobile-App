import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';
import 'plan_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Light grey background
                  borderRadius: BorderRadius.circular(12.0),
                ),

                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type to search',
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              // Account Section
              const Text(
                'Account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Update your info to keep your account',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16.0),

              // Account Information Row
              buildOptionRow(Icons.person, 'Account Information'),
              buildOptionRow(Icons.people, 'Friends'),
              buildOptionRow(Icons.notifications, 'Notifications'),
              const SizedBox(height: 24.0),
             
              // Privacy Section
              const Text(
                'Privacy',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Customize your privacy to make experience better',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16.0),

              // Privacy Options
              buildOptionRow(Icons.lock, 'Security'),
              buildOptionRow(Icons.login, 'Login details'),
              buildOptionRow(Icons.payment, 'Billing'),
              buildOptionRow(Icons.privacy_tip, 'Privacy'),

            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build each option row
  Widget buildOptionRow(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 12.0),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}
