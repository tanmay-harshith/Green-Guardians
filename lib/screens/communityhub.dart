import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CommunityHubPage extends StatelessWidget {
  const CommunityHubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Hub'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'A community hub is a central location where people can come together to participate in activities and events. They often have a variety of amenities, such as meeting rooms, classrooms, and recreational facilities. Community hubs can be a great way to connect with others, learn new skills, and get involved in your community.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 20),
            _buildLinkWithDescription(
              title: 'Volunteer World',
              description: 'Volunteer World is a comprehensive platform designed to connect individuals with meaningful volunteering opportunities across the globe. With a user-friendly interface and advanced search filters, volunteers can easily discover projects that align with their interests, skills, and availability. Transparency is at the core of Volunteer World, as detailed project information, including organization profiles, project goals, accommodation details, and reviews from past volunteers, is readily available. This transparency empowers volunteers to make informed decisions about their volunteering experiences. Moreover, Volunteer World emphasizes the importance of impact measurement, allowing volunteers to see the tangible outcomes of their contributions. By facilitating the booking process and offering ongoing support, Volunteer World ensures that volunteers have a seamless and fulfilling experience from start to finish. Joining Volunteer World means becoming part of a global community dedicated to making a positive difference in the world, one volunteer project at a time.',
              url: 'https://www.volunteerworld.com/en/volunteer-abroad/environment',
            ),
            _buildLinkWithDescription(
              title: 'India Environment Portal',
              description: 'The India Environment Portal (IEP) stands as a comprehensive online platform dedicated to environmental information and resources within India. Serving as a vital hub for environmentalists, policymakers, researchers, and the general public alike, the portal offers a wealth of data, research articles, news updates, and policy documents pertaining to India\'s environment and sustainable development. With a user-friendly interface, the IEP facilitates easy navigation through a vast repository of information covering diverse topics such as biodiversity, climate change, pollution, conservation efforts, and environmental legislation. Moreover, the portal serves as a catalyst for informed decision-making and advocacy, empowering stakeholders to address pressing environmental challenges effectively. Through its collaborative approach, the India Environment Portal fosters knowledge sharing, dialogue, and action towards fostering a greener, more sustainable future for India and beyond.',
              url: 'https://indiaenvironment.org/volunteer/',
            ),
            _buildLinkWithDescription(
              title: 'Working Abroad',
              description: 'This blog from WorkingAbroad lists the top 13 wildlife and environmental conservation volunteer and internship projects for 2024. These projects span across various locations worldwide, including Peru, Canada, Grenada, the Galapagos Islands, Costa Rica, South Africa, Greece, Portugal, the Maldives, New Zealand, Ecuador, and Thailand. Each project is selected based on its impact on wildlife conservation, biodiversity, and community education. They offer opportunities in areas like wildlife rehabilitation, sea turtle monitoring, conservation research, and community outreach, aiming to protect endangered species and habitats while providing valuable learning experiences for volunteers.',
              url: 'https://www.workingabroad.com/blog/top-13-wildlife-environmental-conservation-volunteer-projects-in-2024/',
            ),
            _buildLinkWithDescription(
              title: 'Go Overseas',
              description: 'The blog on Go Overseas outlines the 8 best volunteer programs in India for 2024, focusing on various causes such as women\'s empowerment, animal care, medical volunteering, and more. Each program is designed to cater to different interests and goals, including budget-friendly options, opportunities for professional experience in healthcare, and adventures in rural and urban settings. These programs offer a blend of cultural immersion, impactful work, and the chance to explore India\'s diversity.',
              url: 'https://www.gooverseas.com/blog/best-volunteer-programs-india',
            ),
            _buildLinkWithDescription(
              title: 'The Nature Conservancy',
              description: 'The Nature Conservancy\'s Earth Day 2024 webpage encourages people to celebrate and protect the planet every day, not just on Earth Day, April 22nd. It offers a variety of actions individuals can take immediately, including volunteering, attending events, planting trees, and supporting wildlife conservation efforts. The page emphasizes the importance of a healthy planet for human thriving and showcases success stories of conservation and species recovery. It also highlights natural climate solutions and ways to engage with environmental education and advocacy.',
              url: 'https://www.nature.org/en-us/get-involved/how-to-help/earth-day/',
            ),
            _buildLinkWithDescription(
              title: 'Volunteer HQ',
              description: 'The IVHQ blog lists the 25 best volunteer abroad programs for 2024, detailing various opportunities across Africa, the Americas, Asia, Europe, and more. It highlights popular destinations, programs based on travel style (such as for students, adults, and families), and top volunteer opportunities focusing on sustainability and meaningful travel. Programs range from wildlife conservation in Tanzania and South Africa to healthcare in Peru and marine conservation in Belize, offering diverse experiences for volunteers of all ages. ',
              url: 'https://www.volunteerhq.org/blog/best-volunteer-abroad-programs/',
            ),
            _buildLinkWithDescription(
              title: 'National Environmental Education Foundation (NEEF)',
              description: 'The webpage provides detailed information on the 2024 Biodiversity Conservation Grant by the National Environmental Education Foundation (NEEF), focusing on enhancing pollinator habitats with significant support from Toyota Motor North America. It outlines eligibility, funding priorities, project metrics, application process, and timeline for grant funding aimed at pollinator habitat enhancement projects on America’s public lands.',
              url: 'https://neefusa.org/2024-biodiversity-conservation-grant',
            ),
            _buildLinkWithDescription(
              title: 'Earth Reminder',
              description: 'The Earth Reminder website offers a comprehensive guide on the best Earth Day 2024 activities suitable for schools, kids, and adults. It includes a variety of activities such as essay and drawing competitions, tree planting, science experiments, crafting with recycled materials, organizing clean-up drives, and engaging in educational games. These activities aim to promote environmental awareness and conservation, encouraging participation in meaningful projects to protect the planet.',
              url: 'https://www.earthreminder.com/earth-day-activities/',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLinkWithDescription({
    required String title,
    required String description,
    required String url,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
          const SizedBox(height: 4),
          Text(
            description,
            softWrap: true,
            overflow: TextOverflow.fade, // Changed overflow to fade
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 4),
          InkWell(
            onTap: () async {
              // ignore: deprecated_member_use
              if (await canLaunch(url)) {
                // ignore: deprecated_member_use
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Row(
              children: [
                const Icon(Icons.link, color: Colors.blue),
                const SizedBox(width: 8),
                Flexible( // Added Flexible widget to handle long URLs
                  child: Text(
                    url,
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    overflow: TextOverflow.fade, // Changed overflow to fade
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
