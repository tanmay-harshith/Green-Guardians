import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class EvergreenCanavasPage extends StatefulWidget {
  const EvergreenCanavasPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EvergreenCanvasPageState createState() => _EvergreenCanvasPageState();
}

class _EvergreenCanvasPageState extends State<EvergreenCanavasPage> {
  final List<String> imageUrls = [
    'https://i.imgur.com/mrpoRAM.jpeg',
    "https://i.imgur.com/u4iql0n.jpeg",
    "https://i.imgur.com/CpMBYMv.jpeg",
    "https://i.imgur.com/hJwiv5P.jpeg",
    "https://i.imgur.com/6J8kF9c.jpeg",
    "https://i.imgur.com/mbQOPs6.jpeg",
    "https://i.imgur.com/3w1jZHZ.jpeg",
    "https://i.imgur.com/eYJjMaZ.jpeg",
    "https://i.imgur.com/yspJayM.jpeg",
    "https://i.imgur.com/vok6aEb.jpeg",
    // Add more image URLs here if needed
  ];

  final List<String> captions = [
    "Anna's hummingbird (Calypte anna)",
    "red fox (Vulpes vulpes)",
    "A dense Forest with a pathway",
    "A forest in the mountains",
    "Snowy mountain",
    "Scarlet Macaw (Ara macao) ",
    "Silver maple (Acer saccharinum)",
    "Sparrow",
    "A waterfall cascading down rocks in a lush green forest",
    "A dense Forest ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evergreen Canvas'),
        actions: [
          IconButton(
            onPressed: () {
              _showUploadDialog(context);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: PageView.builder(
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            if (index >= 0 && index < imageUrls.length) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  // Use CachedNetworkImage for network images
                  CachedNetworkImage(
                    imageUrl: imageUrls[index],
                    placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        captions[index],
                        style: const TextStyle(color: Color.fromARGB(255, 244, 247, 244), fontSize: 16),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return Container(); // Placeholder, you might want to handle this case differently
            }
          },
        ),
      ),
    );
  }

  void _showUploadDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Upload Canvas"),
          content: const Text("You can upload your canvas here!"),
          actions: [
            TextButton(
              onPressed: () {
                // Implement upload functionality here
                Navigator.of(context).pop();
              },
              child: const Text("Upload"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }
}
