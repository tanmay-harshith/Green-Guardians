import 'package:flutter/material.dart';
import 'package:green_guardians/screens/login.dart';
import 'package:green_guardians/screens/greenwoodmap.dart';
import 'package:green_guardians/screens/natureconnect.dart';
import 'package:green_guardians/screens/reportecocrime.dart';
import 'package:green_guardians/screens/evergreencanavas.dart';
import 'package:green_guardians/screens/communityhub.dart';
import 'package:green_guardians/screens/environmentaleducationpage.dart';
import 'package:green_guardians/screens/analysis.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emerald Atlas',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
       routes: {
        // Define your routes here
        '/greenwoodmap': (context) => const GreenWoodMapsPage(),
        '/natureconnect': (context) =>const NatureConnectPage(),
        '/reportecocrime': (context) => const ReportEcoCrimePage(),
        '/evergreencanavas': (context) => const EvergreenCanavasPage(), 
        '/communityhub': (context) => const CommunityHubPage(),
        '/environmentaleducationpage': (context) => const EnvironmentalEducationPage(),
        '/analysis': (context) => const AnalysisPage(),
      },
      home: const LoginPage() ,
      debugShowCheckedModeBanner: false ,
    );
  }
}

