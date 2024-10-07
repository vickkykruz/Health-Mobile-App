import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';
import 'plan_screen.dart';

class AiConsultationScreen extends StatefulWidget {
  const AiConsultationScreen({super.key});

  @override
  _AiConsultationScreenState createState() => _AiConsultationScreenState();
}


class _AiConsultationScreenState extends State<AiConsultationScreen> {

  int _selectedIndex = 0;

  // List of pages corresponding to each BottomNavigationBar item
  final List<Widget> _pages = [
    HomeScreen(),     // Index 0 - Home
    PlanScreen(),     // Index 1 - Plans
    //ScanScreen(),     // Index 2 - Scan
    //HistoryScreen(),  // Index 3 - History
   // AccountScreen(),  // Index 4 - Account
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
        title: const Text('AI Consultation'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        //leading: IconButton(
        //  icon: const Icon(Icons.arrow_back, color: Colors.black),
        //  onPressed: () {
        //    Navigator.pop(context);
        //  }
       // ),
       actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings action
            },
          ),
        ],
      ),


      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 80),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                children: [
                  TextSpan(
                    text: "Recently I Have Had Headache, High Fever, Shortness Of Breath, Cough, ",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  TextSpan(
                    text: "Weakness, Nausea",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(text: " ..."),
                ],
              ),
            ),

            const SizedBox(height: 100),

            // Waveform Placeholder
            Center(
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CustomPaint(
                  painter: WaveformPainter(),
                ),
              ),
            ),

            const SizedBox(height: 80),

            // Record Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
		ElevatedButton.icon(
                  onPressed: () {
                    // Handle voice recording
                  },
                  icon: Icon(Icons.close, color: Colors.white,),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  ),
                ),
		ElevatedButton.icon(
                  onPressed: () {
                    // Handle voice recording
                  },
                  icon: Icon(Icons.mic, size: 30.0, color: Colors.white,),
                  label: Text(
                    'Record',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  ),
                ),
		ElevatedButton.icon(
                  onPressed: () {
                    // Handle voice recording
                  },
                  icon: Icon(Icons.check, color: Colors.white,),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  ),
                ),

              ],
            ),
            
          ],
        ),
      ), // Padding

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


// A placeholder custom painter for the waveform
class WaveformPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    // Draw some random waveform (you'll replace this with real data)
    double height = size.height;
    double width = size.width;
    double centerY = height / 2;

    List<double> waveform = [20, 40, 60, 80, 60, 40, 20]; // Example wave values
    double spaceBetween = width / (waveform.length * 2);

    for (int i = 0; i < waveform.length; i++) {
      canvas.drawLine(
        Offset(spaceBetween * (2 * i + 1), centerY - waveform[i] / 2),
        Offset(spaceBetween * (2 * i + 1), centerY + waveform[i] / 2),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;  // Repaint continuously for now
  }
}
