import 'package:flutter/material.dart';
import 'package:shidos_gbt/pages/my_home_page.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Your AI assistant',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Using this software,you can ask you questions and receive articles using artificial intelligence assistant',
                  style: TextStyle(fontSize: 15, color: Color(0xff757575)),

                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Text(
                  'Powered By GEMINI-PRO',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 32),
            Image.asset('assets/onboarding.png'),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                  (route) => false,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Get Started', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
