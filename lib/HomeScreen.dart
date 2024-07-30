import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/screens/certifications/certificatescreen.dart';
import 'package:portfolio_app/screens/chat/ChatScreen.dart';
import 'package:portfolio_app/screens/project/projectScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio backend', style: TextStyle(
          fontSize: 18, // Font size
          color: Colors.black, // Font color
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Border radius
                ),
              ),
              onPressed: () {
                Get.to(()=>ProjectScreen());
              },
              child: const Text(
                'Project',
                style: TextStyle(
                  fontSize: 18, // Font size
                  color: Colors.white, // Font color
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Border radius
                ),
              ),
              onPressed: () {
                Get.to(()=>CertificateScreen());
              },
              child: const Text(
                'Certificate',
                style: TextStyle(
                  fontSize: 18, // Font size
                  color: Colors.white, // Font color
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Border radius
                ),
              ),
              onPressed: () {
               Get.to(()=>ChatScreen());
              },
              child: const Text(
                'Emails',
                style: TextStyle(
                  fontSize: 18, // Font size
                  color: Colors.white, // Font color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}