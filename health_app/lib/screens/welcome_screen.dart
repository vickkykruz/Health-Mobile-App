import 'package:flutter/material.dart';
import 'signin_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

   @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void initState() {
    super.initState();

    // Delay of 45 seconds before redirecting to the SignInScreen
    Future.delayed(const Duration(seconds: 25), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignInScreen()),
      );
    });
  }


  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // extendBodyBehindAppBar: true,
      body: Stack(
        children: [

          // Set the logo Image and the Brand Name
          SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Center the content vertically
		children: [
		  Image.asset(
		    'assets/images/energy_oracle.png',
		    width: 200,
		    height: 200,
		  ),
                  const SizedBox(height: 5), // Adds space between image and text
                  const Text(
                    'Energy Oracle',
                     style: TextStyle(
                       fontSize: 28,
                       fontWeight: FontWeight.bold,
                       color: Colors.blue,
                     ),
                  ),
		],
              ),
            ),
          ), // SafeArea

        ]
      ) // Stack
    ); // Scaffold
  }
}
