import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(171, 147, 112, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/applogo 2.png', // replace with your image path
              width: 350,
              height: 400,
            ),
            const SizedBox(height: 20),
            const Text(
              'CQUERE',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 248, 247, 247), //
              ),
            ),
            const Text(
              '\nCollege Quest Review',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text(
                'Let\'s Learn',
                style: TextStyle(
                  color: Color.fromARGB(212, 95, 83, 42),
                  fontWeight: FontWeight.bold, // Change text color here
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 255, 254, 0.801)),
            ),
          ],
        ),
      ),
    );
  }
}
