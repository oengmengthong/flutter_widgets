import 'package:flutter/material.dart';

class CardPreview extends StatelessWidget {
  const CardPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.album, size: 40),
              title: const Text('Card Title'),
              subtitle: const Text('Secondary text'),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
            Image.network(
              'https://picsum.photos/300/150',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 150,
                color: Colors.grey.shade200,
                alignment: Alignment.center,
                child: const Icon(Icons.broken_image, size: 50),
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  height: 150,
                  color: Colors.grey.shade200,
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('SHARE'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('EXPLORE'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
