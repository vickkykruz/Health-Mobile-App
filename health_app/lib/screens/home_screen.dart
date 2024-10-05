import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
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

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // elevation: 0,
        // title: Text('Health Dashboard', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.mail, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),


      body:SafeArea(
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

                              // ElevatedButton.icon(
                              //  onPressed: () {
                                  // Handle health input
                              //  },
                              //  icon: const Icon(Icons.mic, color: Colors.blue),
                              //  label: const Text('Tell me about your health'),
                              //  style: ElevatedButton.styleFrom(
                              //    backgroundColor: Colors.white,  // Button background color
                              //    foregroundColor: Colors.blue,  // Button text/icon color
                              //    padding: const EdgeInsets.all(18.0),
                              //  ),
                             //  ),

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
                       padding: const EdgeInsets.all(20),
                       child: Column(
                         children: [
                           // const Text('Calorie Counting', style: TextStyle(fontSize: 16)),
                           // const SizedBox(height: 10),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: const [
                               Text(
                                 '+1523 Eaten',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                               ),
                               Text(
                                 '-7534 Burned',
                                 style: TextStyle(
                                   color: Colors.red,
                                   fontSize: 16,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                             ],
                           ),
                           // Add any chart or progress bar if needed

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
                       padding: const EdgeInsets.all(20),

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
                                     Icon(Icons.calendar_today, color: Colors.black54),
                                     const SizedBox(width: 10),
                                     const Text('12/02/24', style: TextStyle(color: Colors.black54)), 
                                   ],
                                 ),
                                 const SizedBox(width: 20),
                                 Row(
                                   children: [
                                     Icon(Icons.timer, color: Colors.black54),
                                     const SizedBox(width: 10),
                                     const Text('90 mins', style: TextStyle(color: Colors.black54)),
                                   ],
                                 ),
                                 const SizedBox(width: 20),
                                 Row(
                                   children: [
                                     FaIcon(FontAwesomeIcons.fire, color: Colors.black54),
                                     const SizedBox(width: 10),
                                     const Text('-2563 cal', style: TextStyle(color: Colors.black54)),
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
                                 const SizedBox(width: 70),
                                 Column(
                                   children: [
                                     // const SizedBox(height: 10),
                                     const Text('• Legs\n• Bisceps', style: TextStyle(fontSize: 14)),
                                   ],
                                 ),
                                 const SizedBox(width: 70),
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

                              // mainAxisAlignment: MainAxisAlignment.spaceAround,

                              children: [
                                Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                const SizedBox(width: 10),
                                Column(
                                  children: [
                                    const Text('Gilly Chicken', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 20),
                                    Row(
                                      children: [
                                        FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                        const SizedBox(width: 10),
                                        const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                        const SizedBox(width: 30),
                                        FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                        const SizedBox(width: 10),
                                        const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      ],
                                    ),
                                  ],
                                ),
                                FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                              ],
                            ),
                          ],
                        ),
                        
                      ),
                    ),
                 ],
               ),
             ),
             const SizedBox(height: 50)

             

            ],
          ),
        ), // SingleChildScrollView
      ), // SafeArea
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Plans'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: 'Scan'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    ); // Scaffold


  }
}
