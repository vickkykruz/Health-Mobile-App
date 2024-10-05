import 'package:flutter/material.dart';
import 'signin_screen.dart';
import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //leading: IconButton(
        //  icon: const Icon(Icons.arrow_back, color: Colors.black),
        //  onPressed: () {
        //    Navigator.pop(context);
        //  }
       // ),
      ),


      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
	         const SizedBox(height: 20),
                 const Text(
                   'Hi!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                 const SizedBox(height: 5),
                 const Text(
                   'Create a new account',
                   style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                     color: Colors.blue,
                   ),
                   // textAlign: TextAlign.center,
                 ),
                 const SizedBox(height: 60),
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'Enter full name',
                     border: OutlineInputBorder(),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border when focused
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border when not focused
                     ),
                   ),
                 ),
                 const SizedBox(height: 25),
                 // Email TextField
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'Enter email address',
                     border: OutlineInputBorder(),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border when focused
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border when not focused
                     ),
                   ),
                 ),

                 const SizedBox(height: 25),
                 // Password TextField
                 TextField(
                   decoration: InputDecoration(
                     labelText: 'Enter password',
                     border: OutlineInputBorder(),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border when focused
                     ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue, width: 2.0), // Border when not focused
                     ),
                   ),
                   obscureText: true, // To hide password
                 ),
	         const SizedBox(height: 20),
                 // Login Button
                 ElevatedButton(
                   onPressed: () {
                     // Add your login logic here
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => HomeScreen()),
                     );
                   },
                   style: ElevatedButton.styleFrom(
                     padding: const EdgeInsets.symmetric(vertical: 20),
                     backgroundColor: Colors.blue, // Use a custom color if needed
                   ),
                   child: const Text(
                     'REGISTER',
                     style: TextStyle(
                       fontSize: 18,
                       color: Colors.white)),
                  ),
 
		  const SizedBox(height: 20),
                  // Divider with "or"
                  Row(
                    children: const [
                      Expanded(child: Divider(thickness: 1)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('or'),
                      ),
                      Expanded(child: Divider(thickness: 1)),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  // Social Media Icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: IconButton(
                          onPressed: () {
                            // Google sign in logic
                          },
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset('assets/images/social_icons/google.png'),
                          ),
                        ),
                      ),
                      Flexible(
                        child: IconButton(
                          onPressed: () {
                            // Facebook sign in logic
                          },
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset('assets/images/social_icons/facebook.png'),
                          ),
                        ),
                      ),
                      Flexible(
                        child: IconButton(
                          onPressed: () {
                            // Twitter sign in logic
                          },
                          icon: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset('assets/images/social_icons/x.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignInScreen()),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

               ],
	     ),
           ),
        ),
      ), // SafeArea

    ); // Scaffold


  }
}
