import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GreenWoodMapsPage extends StatelessWidget {
  const GreenWoodMapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GreenWood Maps'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Beneath the sun\'s warm gaze, a tapestry unfolds - life on land. Here, intricate ecosystems dance in a delicate ballet, each movement revealing hidden connections. By delving into this analysis, we become detectives of nature, deciphering the language of the land and unlocking the secrets to a flourishing future for all. Let curiosity be our compass, guiding us towards a deeper understanding and inspiring action to safeguard this irreplaceable wonder.\n',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              'GreenWood Maps empowers you to appreciate the beauty and complexity of our forests while fostering a deeper understanding of the need for conservation. Whether you\'re a researcher, conservationist, or nature enthusiast, embark on a journey of discovery with GreenWood Maps and join us in safeguarding our precious natural heritage.\n',
              style: TextStyle(fontSize: 16.0),
            ),
            GestureDetector(
              onTap: () {
                // ignore: deprecated_member_use
                launch('https://app.powerbi.com/reportEmbed?reportId=e1ffe478-5000-4a94-a406-b798400364c0&autoAuth=true&ctid=6097692a-0a7b-4e97-be15-92710bdb2994');
              },
              child: const Text(
                'View the land cover in the year 2010',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 10), // Adding some space between the links
            GestureDetector(
              onTap: () {
                // ignore: deprecated_member_use
                launch('https://app.powerbi.com/reportEmbed?reportId=e1ffe478-5000-4a94-a406-b798400364c0&autoAuth=true&ctid=6097692a-0a7b-4e97-be15-92710bdb2994');
              },
              child: const Text(
                'View the land cover in the year 2011',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
