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
                    'Plans',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
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

                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
