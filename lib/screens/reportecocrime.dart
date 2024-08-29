import 'package:flutter/material.dart';

class ReportEcoCrimePage extends StatefulWidget {
  const ReportEcoCrimePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ReportEcoCrimePageState createState() => _ReportEcoCrimePageState();
}

class _ReportEcoCrimePageState extends State<ReportEcoCrimePage> {
  final TextEditingController _issueController = TextEditingController();

  Future<void> _showConfirmationDialog() async {
    await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Report Confirmation'),
          content: const Text('The issue has been reported to the higher authorities.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );

    // Clear the text field after confirmation dialog is dismissed
    _issueController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report Eco Crime'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Witnessing unlawful activity harming our precious nature? Green Guardian is here to help. Report environmental crimes effortlessly through our user-friendly app. Simply choose the relevant category, upload photos, videos, and your location to strengthen your report. You can even remain anonymous if you prefer. Your report acts as a direct alert to relevant authorities, prompting swift investigations. Track the progress, see your impact, and connect with a community of passionate nature defenders. Together, let\'s protect our planet. Download Nature Guardian today and become a champion for nature.\n',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black87, // Changed text color
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0), // Added padding
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green), // Added border
                borderRadius: BorderRadius.circular(10.0), // Added border radius
              ),
              child: TextField(
                controller: _issueController,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Report Issue',
                  border: InputBorder.none, // Removed border
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String issue = _issueController.text;
                if (issue.isNotEmpty) {
                  _showConfirmationDialog(); // Show confirmation dialog only if issue is not empty
                }
              },
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: Colors.green, // Changed button color
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0), // Added padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Added border radius
                ),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 18.0), // Increased font size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
