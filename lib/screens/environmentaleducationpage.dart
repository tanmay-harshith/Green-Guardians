import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EnvironmentalEducationPage extends StatelessWidget {
  const EnvironmentalEducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Environmental Education Programs'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildProgramCard(
            title: "UNESCO's Education for Sustainable Development (ESD) program",
            goal: "The aim is to equip learners of all ages with the knowledge, skills, and values to address global challenges like climate change and resource depletion.",
            activities: "UNESCO develops curricula, trains teachers, supports community programs, and advocates for policy changes to integrate sustainable development principles into education systems worldwide.",
            resources: "They offer resources such as the ESD for 2030 website, the Global Action Programme (GAP) report, and online teaching materials.",
            website: "https://en.unesco.org/themes/education-sustainable-development",
          ),
          const SizedBox(height: 16.0),
           const SizedBox(height: 16.0),
          _buildProgramCard(
            title: "Ecovillage Sustainability Education",
            goal: "Ecovillage offers sustainability education programs aimed at promoting sustainable living practices and community building.",
            activities: "Their programs include workshops, seminars, and hands-on experiences in sustainable agriculture, renewable energy, and eco-friendly housing.",
            resources: "Participants can access online resources, join community projects, and network with like-minded individuals.",
            website: "https://ecovillage.org/sustainability-education/?gad_source=1&gclid=CjwKCAiAuNGuBhAkEiwAGId4avqjAH23ab50v6g1XE6nFAwOro2mZMRih_sYB04C59psg0OcD2QOSxoCHsQQAvD_BwE",
          ),
          const SizedBox(height: 16.0),
          _buildProgramCard(
            title: "Coursera - Environmental Courses",
            goal: "Coursera offers a variety of online courses related to environmental science and sustainability.",
            activities: "Courses cover topics such as climate change, conservation biology, sustainable development, and environmental policy.",
            resources: "Students can access lectures, readings, quizzes, and assignments, and earn certificates upon completion.",
            website: "https://www.coursera.org/courses?query=environmental",
          ),
          const SizedBox(height: 16.0),
          _buildProgramCard(
            title: "OpenLearn - Free Environmental Courses",
            goal: "OpenLearn provides free online courses on various environmental topics.",
            activities: "Courses include introductory lessons, multimedia content, and self-assessment quizzes.",
            resources: "Participants can learn at their own pace and explore a wide range of subjects within environmental science.",
            website: "https://www.open.edu/openlearn/nature-environment/free-courses",
          ),
          const SizedBox(height: 16.0),
          _buildProgramCard(
            title: "Class Central - Environmental Science Courses",
            goal: "Class Central offers a collection of online courses in environmental science.",
            activities: "Courses are provided by universities and institutions worldwide and cover diverse topics in environmental studies.",
            resources: "Enrolled students gain access to course materials, discussions, and sometimes certificates of completion.",
            website: "https://www.classcentral.com/subject/environmental-science",
          ),
          const SizedBox(height: 16.0),
          _buildProgramCard(
            title: "NPTEL - Online Environmental Courses",
            goal: "NPTEL offers online courses in environmental science and engineering.",
            activities: "Courses are designed by experts in the field and cover fundamental and advanced topics in environmental studies.",
            resources: "Participants can access video lectures, course materials, assignments, and exams.",
            website: "https://onlinecourses.nptel.ac.in/noc23_hs155/preview",
          ),
          const SizedBox(height: 16.0),
          _buildProgramCard(
            title: "Harvard Law School - Environmental Science Program",
            goal: "Harvard Law School offers environmental science courses and programs.",
            activities: "Their programs cover various aspects of environmental law, policy, and regulation.",
            resources: "Participants can access lectures, seminars, and research materials from renowned environmental scholars.",
            website: "https://pll.harvard.edu/subject/environmental-science",
            ),// Add other program cards
        ],
      ),
    );
  }

  Widget _buildProgramCard({
    required String title,
    required String goal,
    required String activities,
    required String resources,
    required String website,
  }) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Goal: $goal',
            ),
            const SizedBox(height: 8.0),
            Text(
              'Activities: $activities',
            ),
            const SizedBox(height: 8.0),
            Text(
              'Resources: $resources',
            ),
            const SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                // ignore: deprecated_member_use
                launch(website);
              },
              child: const Text(
                'Website',
                style: TextStyle(
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
