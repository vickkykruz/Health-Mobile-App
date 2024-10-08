import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'dart:math';
import 'ai_consultant_screen.dart';
import 'scan_screen.dart';
import 'plan_screen.dart';
import 'history_screen.dart';
import 'account_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of pages corresponding to each BottomNavigationBar item
  final List<Widget> _pages = [
    HomeContent(),    // Replace with your actual Home widget
    PlanScreen(),    // Navigate to the PlanScreen
    ScanScreen(),     // Add your ScanScreen here
    HistoryScreen(),  // Add your HistoryScreen here
    AccountScreen(),  // Add your AccountScreen here
  ];

  // This function will update the selectedIndex when an item is tapped
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

     //body: _pages[_selectedIndex],
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Plans'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: 'Scan'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    ); // Scaffold


  }
}


class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  _HomeContentState createState() => _HomeContentState();
}

// Custom HomeContent widget for the Home screen
class _HomeContentState extends State<HomeContent> {
 
  final TextEditingController _controller = TextEditingController();
  bool _hasTyped = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _hasTyped = _controller.text.isNotEmpty;  // Check if the user has typed anything
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue],
                  //  colors: [Colors.blue, Colors.blue.withOpacity(0)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 1],
                ),
                 
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),  // Bottom-left corner
                  bottomRight: Radius.circular(15.0), // Bottom-right corner
                ), 
              ),
                 
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Profile Section
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/face.jpeg'), // Add profile image
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Good Morning',
                            style: TextStyle(fontSize: 16, color: Colors.white54),
                          ),
                          Text(
                            'Edward Victor',
                             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ), // Profile Section

                  const SizedBox(height: 40),

                  // AI Assistance
                  Container(
                    // padding: const EdgeInsets.all(20),
                    // decoration: BoxDecoration(
                      //  color: Colors.blueAccent,
                      //  borderRadius: BorderRadius.circular(10),
                    //),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      //children: [
                        // Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'How Are You Feeling\nOn This Day?',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 15),

                            // Padding(
                              // padding: const EdgeInsets.all(16.0),
                              Row(
                                children: [
                                  // Expanded to take all available width except for the button
                                  Expanded(
                                    child: TextField(
                                      controller: _controller,
                                      decoration: InputDecoration(
                                        labelText: 'Tell me about your health',
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12.0)
                                        ),
                                        // focusedBorder: OutlineInputBorder(
                                          //  borderSide: const BorderSide(color: Colors.white, width: 2.0), // Border when focused
                                        // ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.white, width: 2.0), // Border when not focused
                                        ),
                                      ),
                                    ),
                                  ),
                                  // const SizedBox(width: 10),
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      // Handle input or send message
                                      if (_hasTyped) {
                                        // Handle sending the message
                                      } else {
                                        // Handle microphone input
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => AiConsultationScreen()),
                                        );
                                      }
                                    },
                                    icon: Icon(
                                      _hasTyped ? Icons.send : Icons.mic,  // Change icon based on input
                                      color: Colors.white,
                                    ),
                                    label: const Text(''),  // No label needed, just the icon
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,  // Button background color
                                      // foregroundColor: Colors.white,  // Icon color
                                      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                                    ),

                                  ),
                                ],
                              ),
                            // ),
                           
                          ],
                        // ),
                      // ],
                    ),
                  ), // Container
                    
                ],
                // const SizedBox(height: 30),
                //const Text('Calorie Counting', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                //const SizedBox(height: 10),
              ),
               
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Text('Calorie Counting', style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),

                  // Calorie Counting Section
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    child: Padding(
                      //padding: const EdgeInsets.all(5),
                      padding: const EdgeInsets.only(
                        left: 5.0,
                        top: 30.0,
                        right: 5.0,
                        bottom: 5.0,
                      ),
                      child: Column(
                        children: [
                          // const Text('Calorie Counting', style: TextStyle(fontSize: 16)),
                          // const SizedBox(height: 10),
                          Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 '+1523 Eaten',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                               ),

                               
                               // Add the chart or progress bar
                               Container(
                                 width: 100,
                                 height: 50,
                                 child: CustomPaint( // Stop Here
                                   painter: GaugePainter(percentage: 50),
                                   child: Center(
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Text(
                                           '1354',
                                           style: TextStyle(
                                             fontSize: 12,
                                             fontWeight: FontWeight.bold,
                                             color: Colors.black,
                                           ),
                                         ),
                                         Text(
                                           'Calories left',
                                           style: TextStyle(
                                             fontSize: 8,
                                             color: Colors.black54,
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                               ),

                               Text(
                                 '-7534 Burned',
                                 style: TextStyle(
                                   color: Colors.red,
                                   fontSize: 12,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                             ],
                           ),

                         ],
                       ),
                     ),
                   ),

                  ],
                ),
              ),

             Container(
               padding: const EdgeInsets.all(16.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const SizedBox(height: 30),
                   const Text('Workout Plan', style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold)),
                   const SizedBox(height: 10),

                   // Workout Plan Section
                   Card(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                     elevation: 5,
                     child: Padding(
                       padding: const EdgeInsets.all(5),

                       child: Column(
                         //const Text('Workout Plan', style: TextStyle(fontSize: 16)),
                         //const SizedBox(height: 10),

                         children: [
                           // First
                           Padding(
                             padding: const EdgeInsets.all(10),
                             child: Row(
                               // crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Row(
                                   children: [
                                     Icon(Icons.calendar_today, size: 20.0, color: Colors.black54),
                                     const SizedBox(width: 10),
                                     const Text('12/02/24', style: TextStyle(fontSize: 12, color: Colors.black54)), 
                                   ],
                                 ),
                                 const SizedBox(width: 5),
                                 Row(
                                   children: [
                                     Icon(Icons.timer, size: 20.0, color: Colors.black54),
                                     const SizedBox(width: 10),
                                     const Text('90 mins', style: TextStyle(fontSize: 12, color: Colors.black54)),
                                   ],
                                 ),
                                 const SizedBox(width: 5),
                                 Row(
                                   children: [
                                     FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                     const SizedBox(width: 10),
                                     const Text('-2563 cal', style: TextStyle(fontSize: 12, color: Colors.black54)),
                                   ],
                                 ),
                               ],

                             ),
                           ),

                           // Second 
                           Padding(
                             padding: const EdgeInsets.all(10),
                             child: Row(
                               //crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   children: [
                                     // const SizedBox(height: 10),
                                     const Text('• Chest\n• Heart', style: TextStyle(fontSize: 14)),
                                   ],
                                 ),
                                 const SizedBox(width: 10),
                                 Column(
                                   children: [
                                     // const SizedBox(height: 10),
                                     const Text('• Legs\n• Bisceps', style: TextStyle(fontSize: 14)),
                                   ],
                                 ),
                                 const SizedBox(width: 10),
                                 Column(
                                   children: [
                                     // const SizedBox(height: 10),
                                     const Text('• Chest\n• Heart', style: TextStyle(fontSize: 14)),
                                   ],
                                 ),

                               ],
                             ),
                           ),
                         ],                    
                   
                       ),

                     ), // Padding 
                   ),

                 ]
               ),
             ),


             Container(
               padding: const EdgeInsets.all(16.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const SizedBox(height: 30),
                   const Text('Meal Plans', style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold)),
                   const SizedBox(height: 10),

                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      child: Padding(
                  
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Group 1
                                Row(
                                  children: [
                                    Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                    const SizedBox(width: 5),
                                    Column(
                                      children: [
                                        const Text('Gilly Chicken', style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 15),
                                        Row(
                                          children: [
                                            FaIcon(FontAwesomeIcons.fire, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('-2563 cal', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                            const SizedBox(width: 10),
                                            FaIcon(FontAwesomeIcons.bell, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('200g', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // Group 2
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),  // Padding of 20px
                                    child: FaIcon(
                                      FontAwesomeIcons.fire, 
                                      size: 13.0, 
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                        
                      ),
                    ),

                   Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      child: Padding(
                  
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Group 1
                                Row(
                                  children: [
                                    Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                    const SizedBox(width: 5),
                                    Column(
                                      children: [
                                        const Text('Gilly Chicken', style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 15),
                                        Row(
                                          children: [
                                            FaIcon(FontAwesomeIcons.fire, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('-2563 cal', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                            const SizedBox(width: 10),
                                            FaIcon(FontAwesomeIcons.bell, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('200g', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // Group 2
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),  // Padding of 20px
                                    child: FaIcon(
                                      FontAwesomeIcons.fire, 
                                      size: 13.0, 
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                        
                      ),
                    ),

                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      child: Padding(
                  
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Group 1
                                Row(
                                  children: [
                                    Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                    const SizedBox(width: 5),
                                    Column(
                                      children: [
                                        const Text('Gilly Chicken', style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 15),
                                        Row(
                                          children: [
                                            FaIcon(FontAwesomeIcons.fire, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('-2563 cal', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                            const SizedBox(width: 10),
                                            FaIcon(FontAwesomeIcons.bell, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('200g', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // Group 2
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),  // Padding of 20px
                                    child: FaIcon(
                                      FontAwesomeIcons.fire, 
                                      size: 13.0, 
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                        
                      ),
                    ),

                   Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      child: Padding(
                  
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Group 1
                                Row(
                                  children: [
                                    Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                    const SizedBox(width: 5),
                                    Column(
                                      children: [
                                        const Text('Gilly Chicken', style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 15),
                                        Row(
                                          children: [
                                            FaIcon(FontAwesomeIcons.fire, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('-2563 cal', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                            const SizedBox(width: 10),
                                            FaIcon(FontAwesomeIcons.bell, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('200g', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // Group 2
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),  // Padding of 20px
                                    child: FaIcon(
                                      FontAwesomeIcons.fire, 
                                      size: 13.0, 
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                        
                      ),
                    ),

                   Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      child: Padding(
                  
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Group 1
                                Row(
                                  children: [
                                    Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                    const SizedBox(width: 5),
                                    Column(
                                      children: [
                                        const Text('Gilly Chicken', style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 15),
                                        Row(
                                          children: [
                                            FaIcon(FontAwesomeIcons.fire, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('-2563 cal', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                            const SizedBox(width: 10),
                                            FaIcon(FontAwesomeIcons.bell, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('200g', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // Group 2
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),  // Padding of 20px
                                    child: FaIcon(
                                      FontAwesomeIcons.fire, 
                                      size: 13.0, 
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                        
                      ),
                    ),

                   Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      child: Padding(
                  
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Group 1
                                Row(
                                  children: [
                                    Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                    const SizedBox(width: 5),
                                    Column(
                                      children: [
                                        const Text('Gilly Chicken', style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 15),
                                        Row(
                                          children: [
                                            FaIcon(FontAwesomeIcons.fire, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('-2563 cal', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                            const SizedBox(width: 10),
                                            FaIcon(FontAwesomeIcons.bell, size: 15.0, color: Colors.black54),
                                            const SizedBox(width: 2),
                                            const Text('200g', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // Group 2
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),  // Padding of 20px
                                    child: FaIcon(
                                      FontAwesomeIcons.fire, 
                                      size: 13.0, 
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                        
                      ),
                    ),
    
                 ],
               ),
             ),
             const SizedBox(height: 0)

             

            ],
          ),
        ),
    );
  } 
}

class GaugePainter extends CustomPainter {
  final double percentage;
  GaugePainter({required this.percentage});

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 10;
    double radius = (size.width / 2) - strokeWidth;

    Offset center = Offset(size.width / 2, size.height / 2);

    // Background arc (light grey)
    Paint backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi, // Start at the leftmost point of the semi-circle
      pi, // Draw a half-circle (pi radians)
      false,
      backgroundPaint,
    );

    // Foreground arc (active part)
    Paint foregroundPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double sweepAngle = (pi * percentage) / 100; // How much of the arc to fill

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi, // Start at the leftmost point
      sweepAngle, // Draw the active arc (dynamic based on percentage)
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Redraw whenever needed
  }
}
