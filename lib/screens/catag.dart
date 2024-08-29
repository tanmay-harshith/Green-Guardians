import 'package:flutter/material.dart';

const categories = [
  {'title': 'Green Wood Map', 'icon': Icons.map, 'route': '/greenwoodmap'},
  {'title': 'Nature Connect', 'icon': Icons.nature_people, 'route': '/natureconnect'},
  {'title': 'Report Eco Crime', 'icon': Icons.warning, 'route': '/reportecocrime'},
  {'title': 'Evergreen Canavas', 'icon': Icons.brush, 'route': '/evergreencanavas'},
  {'title': 'Community Hub', 'icon': Icons.groups, 'route': '/communityhub'}, // Replaced URL with route
  {'title': 'Environment Education Programs', 'icon': Icons.school, 'route': '/environmentaleducationpage'},
  {'title': 'Analysis', 'icon': Icons.pie_chart, 'route': '/analysis'},
];

class Catag extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Catag({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Emerald Atlas',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0, // Remove default shadow
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.green, width: 2.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: ListView.builder(
              itemCount: categories.length,
           itemBuilder: (context, index) {
		  final category = categories[index];
		  return InkWell(
		    onTap: () {
		      Navigator.pushNamed(context, category['route'] as String);
		    },
		    child: Container(
		      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
		      padding: const EdgeInsets.all(15.0),
		      decoration: BoxDecoration(
			color: Colors.green.shade50,
			borderRadius: BorderRadius.circular(15.0),
			boxShadow: [
			  BoxShadow(
			    color: Colors.grey.withOpacity(0.3),
			    spreadRadius: 1,
			    blurRadius: 5,
			    offset: const Offset(0, 2), // changes position of shadow
			  ),
			],
		      ),
		      child: Row(
			children: [
			  Icon(
			    category['icon'] as IconData,
			    color: Colors.green,
			    size: 30.0,
			  ),
			  const SizedBox(width: 20.0),
			  Expanded( // Wrap with Expanded
			    child: Text(
			      category['title'] as String,
			      style: const TextStyle(fontSize: 18.0, color: Colors.black),
			      overflow: TextOverflow.ellipsis, // Add TextOverflow.ellipsis
			    ),
			  ),
			],
		      ),
		    ),
		  );
		},
            ),
          ),
        ],
      ),
    );
  }
}