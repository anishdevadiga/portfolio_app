import 'package:flutter/material.dart';

class CertificateScreen extends StatelessWidget {
  // Controllers for text fields
  final TextEditingController _certificateNameController = TextEditingController();
  final TextEditingController _certificateLinkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Certificate Details',
          style: TextStyle(fontSize: 20), // Font size for AppBar title
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Image
                  Center(
                    child: Image.network(
                      'https://via.placeholder.com/150', // Replace with your image URL
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Certificate Name TextField
                  TextField(
                    controller: _certificateNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Certificate Name',
                      hintStyle: TextStyle(fontSize: 16), // Font size for hint text
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Certificate Link TextField
                  TextField(
                    controller: _certificateLinkController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Certificate Link',
                      hintStyle: TextStyle(fontSize: 16), // Font size for hint text
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Submit Button
                  ElevatedButton(
                    onPressed: () {
                      // No functionality for Submit button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 16), // Font size for button text
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
