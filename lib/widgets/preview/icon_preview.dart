import 'package:flutter/material.dart';

class IconPreview extends StatelessWidget {
  const IconPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Basic Icons
          const Text('Basic Icons:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: const [
              Icon(Icons.home),
              Icon(Icons.favorite),
              Icon(Icons.star),
              Icon(Icons.access_alarm),
              Icon(Icons.settings),
              Icon(Icons.person),
            ],
          ),

          const SizedBox(height: 24),

          // Sized Icons
          const Text('Icons with Different Sizes:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.account_circle, size: 16),
              Icon(Icons.account_circle, size: 24),
              Icon(Icons.account_circle, size: 36),
              Icon(Icons.account_circle, size: 48),
            ],
          ),

          const SizedBox(height: 24),

          // Colored Icons
          const Text('Colored Icons:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.favorite, color: Colors.red),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.thumb_up, color: Colors.blue),
              Icon(Icons.warning, color: Colors.orange),
            ],
          ),

          const SizedBox(height: 24),

          // Icons with backgrounds
          const Text('Icons with Backgrounds:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconWithBackground(Icons.fingerprint, Colors.blue),
              _buildIconWithBackground(Icons.lock, Colors.green),
              _buildIconWithBackground(Icons.accessibility, Colors.purple),
            ],
          ),

          const SizedBox(height: 24),

          // Material Icon Categories
          const Text('Material Icon Categories:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: const [
              // Action Icons
              Icon(Icons.search),
              Icon(Icons.info),
              Icon(Icons.delete),
              // Navigation Icons
              Icon(Icons.arrow_back),
              Icon(Icons.menu),
              Icon(Icons.close),
              // Alert Icons
              Icon(Icons.error),
              Icon(Icons.notification_important),
              Icon(Icons.new_releases),
              // AV Icons
              Icon(Icons.play_arrow),
              Icon(Icons.pause),
              Icon(Icons.volume_up),
              // Communication Icons
              Icon(Icons.email),
              Icon(Icons.phone),
              Icon(Icons.chat),
              // Maps and Location Icons
              Icon(Icons.location_on),
              Icon(Icons.map),
              Icon(Icons.directions),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconWithBackground(IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        icon,
        color: color,
        size: 32,
      ),
    );
  }
}
