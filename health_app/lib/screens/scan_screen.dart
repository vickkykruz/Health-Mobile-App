import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
             // Circular Progress Indicator with Icon in the Center
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 150, // Set the size of the circular progress indicator
                  height: 150,
                  child: CircularProgressIndicator(
                    strokeWidth: 8, // Adjust the thickness of the circular progress
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Color for the progress
                    backgroundColor: Colors.grey[300], // Background of the circular progress
                  ),
                ),
                // Icon in the middle of the circular progress
                Icon(
                  Icons.info_outline, // Info icon
                  size: 60, // Size of the icon
                  color: Colors.blue, // Color matching the progress indicator
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Connecting Device Text
            const Text(
              'Connecting Device ....', // Text content
              style: TextStyle(
                fontSize: 20, // Font size
                fontWeight: FontWeight.w500, // Medium weight font
                color: Colors.grey, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
