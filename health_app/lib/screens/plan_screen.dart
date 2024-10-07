import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';
import 'plan_screen.dart';


class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {

  int _selectedIndex = 0;

  // List of pages corresponding to each BottomNavigationBar item
  final List<Widget> _pages = [
    HomeScreen(),     // Index 0 - Home
    PlanScreen(),     // Index 1 - Plans
    //ScanScreen(),     // Index 2 - Scan
    //HistoryScreen(),  // Index 3 - History
    //AccountScreen(),  // Index 4 - Account
  ];

  // This function will update the selectedIndex
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // elevation: 0,
        // title: Text('Health Dashboard', style: TextStyle(color: Colors.white)),
        actions: [
          Container(
            padding: const EdgeInsets.all(2),  // Adds 5px padding around the IconButton
            decoration: BoxDecoration(
              color: Colors.transparent,       // Background color, if needed
              borderRadius: BorderRadius.circular(50),  // Circular border
              border: Border.all(color: Color(0xFFf3f3f3), width: 1),
            ),
            child: IconButton(
              icon: const Icon(Icons.mail, size: 20.0, color: Colors.white),
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 5),
          Container(
            padding: const EdgeInsets.all(2),  // Adds 5px padding around the IconButton
            decoration: BoxDecoration(
              color: Colors.transparent,       // Background color, if needed
              borderRadius: BorderRadius.circular(50),  // Circular border
              border: Border.all(color: Color(0xFFf3f3f3), width: 1),  // Border color and width
            ),
            child: IconButton(
              icon: const Icon(Icons.notifications, size: 20.0,  color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),

    ), // Scaffold
  };
}
