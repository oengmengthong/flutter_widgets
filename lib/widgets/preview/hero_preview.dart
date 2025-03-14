import 'package:flutter/material.dart';

class HeroPreview extends StatelessWidget {
  const HeroPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ),
              );
            },
            child: Hero(
              tag: 'imageHero',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://picsum.photos/250/150',
                  width: 150,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Tap the image for Hero animation',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'imageHero',
              child: Image.network(
                'https://picsum.photos/250/150',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Go back'),
            ),
          ],
        ),
      ),
    );
  }
}
