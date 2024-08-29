import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: unused_import
import 'package:webview_flutter/webview_flutter.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analysis'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200, // Set the height according to your requirement
              child: Image.network(
                'https://i.postimg.cc/Pq55p1dL/Screenshot-2024-02-20-184239.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'The Invisible Lifeblood: How Groundwater Shapes Karnataka\'s Land',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Beneath the bustling cities and fertile fields of Karnataka lies a hidden treasure – groundwater. This unseen resource plays a critical and multifaceted role in shaping the land and its people. But what exactly is groundwater, and how does it influence the very ground we stand on?',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              'Imagine a vast underground network of interconnected spaces, filled with water that seeps down from rain and rivers. This is the realm of groundwater, a lifeline that nourishes and sustains life in countless ways. Its presence and quality directly impact:',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              'Landscapes: In coastal and hilly regions, abundant rainfall ensures higher water tables, nurturing lush vegetation and vibrant ecosystems. Conversely, eastern plains with limited rainfall and over-extraction often face water scarcity, impacting agricultural productivity and land use patterns.',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              'Seasons: Groundwater levels naturally fluctuate with the seasons. Monsoon rains replenish aquifers, leading to verdant landscapes, while the dry summer months witness a decline, sometimes exposing challenges like drought risk.',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              'Human activities: Over-pumping for agricultural irrigation and industrial use can deplete aquifers, altering land productivity and potentially leading to land degradation. Conversely, water conservation policies and recharge structures like tanks and bunds can help maintain healthy water tables, supporting sustainable land management.',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              'Unveiling the Mysteries: Questions and Answers about Karnataka\'s Groundwater',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const Text(
              'But what\'s the real story beneath the surface? Let\'s delve deeper with some intriguing questions:',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              '1. Is there an overall trend in groundwater levels across Karnataka?',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const Text(
              'The answer is a mixed bag. Recent reports show an upward trend in 2022 compared to 2021, with most regions experiencing a rise. However, long-term data reveals a complex picture with both increases and decreases depending on the region and specific years.',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text('2. Are groundwater levels stable, or do they fluctuate throughout the year?',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const Text('Get ready for a seasonal rollercoaster! Groundwater levels in Karnataka typically ebb and flow with the seasons. Monsoon rains bring welcome replenishment, while summer months see a natural decline. Understanding these fluctuations is crucial for water management strategies.',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text('3. Do some regions have naturally higher or lower water tables?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const Text('Absolutely! Coastal and hilly areas boast higher water tables thanks to abundant rainfall and natural recharge mechanisms. In contrast, eastern plains face scarcity due to lower rainfall and, sometimes, over-extraction. This regional disparity highlights the need for targeted water management approaches.',
            style: TextStyle(fontSize: 16.0),
            ),
            const Text('4. How do weather events like droughts and floods impact groundwater?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const Text('Droughts act like thirsty giants, sucking up groundwater reserves and leading to significant declines. On the other hand, heavy rainfall can be a double-edged sword. While it brings rapid recharge, it can also cause flooding and contamination if proper management isn\'t in place.',
            style: TextStyle(fontSize: 16.0),
            ),
            const Text('5. Can human activities influence groundwater levels?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const Text('Undoubtedly! Population growth and urbanization increase water demand, putting pressure on resources. Unsustainable agricultural practices that rely heavily on groundwater extraction can deplete aquifers. Conversely, water conservation efforts and smart management policies can play a vital role in preserving this precious resource.',
            style: TextStyle(fontSize: 16.0),
            ),
            const Text('6. Is the long-term sustainability of groundwater a concern in Karnataka?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const Text('While recent good rainfall offers a sigh of relief, concerns remain. Uneven distribution and unsustainable use in some regions pose challenges. Recognizing these issues and taking proactive measures are crucial for securing a water-secure future.',
            style: TextStyle(fontSize: 16.0),
            ),
            const Text('7. Are there alarming declines in groundwater levels in specific regions?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),   
           const Text('Unfortunately, yes. Areas like parts of Bengaluru and Chikkaballapur face critical situations with declining water tables. Addressing these hotspots through targeted interventions is essential.',
            style: TextStyle(fontSize: 16.0),
            ),
            const Text('8. What are the main factors driving changes in groundwater levels?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const Text('Climate change throws curveballs with erratic rainfall patterns and rising temperatures, impacting recharge and leading to fluctuations. Unsustainable extraction for agriculture and industries remains a major concern. Additionally, reduced recharge due to deforestation and concretization further complicates the issue.',
            style: TextStyle(fontSize: 16.0),
            ),
            const Text('9. How can we use data to manage groundwater resources effectively?',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const Text('Data is our compass! Conducting detailed studies at regional levels helps us understand specific challenges and plan targeted interventions. Additionally, promoting water conservation, implementing sustainable extraction policies, and building recharge structures are crucial steps guided by data-driven insights.',
            style: TextStyle(fontSize: 16.0),
            ),
            const Text('By understanding the intricate relationship between groundwater and our land, we can move towards a future where this invisible resource continues to nourish and sustain Karnataka\'s vibrant landscapes and communities. Remember, every drop counts, and responsible water management is key to unlocking a sustainable future for all.',
            style: TextStyle(fontSize: 16.0),
            ),
            // Rest of your text widgets
            // Omitted for brevity
            GestureDetector(
              onTap: () {
                // Replace 'YOUR_POWER_BI_DASHBOARD_URL' with your actual Power BI dashboard URL
                // ignore: deprecated_member_use
                launch('https://app.powerbi.com/reportEmbed?reportId=bc249cd8-4d4c-467c-87e9-980fe11815c2&autoAuth=true&ctid=6097692a-0a7b-4e97-be15-92710bdb2994');
              },
              child: const Text(
                'View the analysis of groundwater levels in districts and taluks of Karnataka',
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