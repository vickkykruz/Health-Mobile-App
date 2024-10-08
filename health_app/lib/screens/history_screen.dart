import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';
import 'plan_screen.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24.0),
                
                  // History Section
                  const Text(
                    'History',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    child: Padding(
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                ),
                              ),

                            ],
                          ),
                            
                        ],
                      ),
                        
                    ),
                  ),
                  // continue

                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    child: Padding(
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                  
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Group 1
                              Row(
                                children: [
                                  //Image.asset('assets/images/meal1.jpeg', width: 113, height: 100),
                                 // const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      const Text('Wake me up 5:00am', style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.bold)),
                                      // const SizedBox(height: 20),
                                      //Row(
                                      //  children: [
                                      //    FaIcon(FontAwesomeIcons.fire, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('-2563 cal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //    const SizedBox(width: 30),
                                      //    FaIcon(FontAwesomeIcons.bell, size: 20.0, color: Colors.black54),
                                      //    const SizedBox(width: 10),
                                      //    const Text('200g', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black54)),
                                      //  ],
                                     // ),
                                    ],
                                  ),
                                ],
                              ),
                              // Group 2
                              //Card(
                              //  shape: RoundedRectangleBorder(
                              //    borderRadius: BorderRadius.circular(10),
                              //  ),
                              //  elevation: 5,
                              //  child: Padding(
                              //    padding: const EdgeInsets.all(10),  // Padding of 20px
                              //    child: FaIcon(
                              //      FontAwesomeIcons.fire, 
                              //      size: 20.0, 
                              //      color: Colors.black54,
                              //    ),
                              //  ),
                             // ),

                              ElevatedButton.icon(
                                onPressed: () {
                                  // Handle voice recording
                                },
                                icon: Icon(Icons.visibility, size: 20, color: Colors.white,),
                                label: Text(
                                  'View',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
          ],
        ),
      ),
    );
  }
}
