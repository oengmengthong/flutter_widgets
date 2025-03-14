import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Network Image
          const Text('Network Image',
              style: TextStyle(fontWeight: FontWeight.bold)),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://images.unsplash.com/photo-1682687982501-1e58ab814714',
              width: 300,
              height: 150,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  width: 300,
                  height: 150,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 300,
                  height: 150,
                  alignment: Alignment.center,
                  color: Colors.grey.shade300,
                  child: const Text(
                    'Error loading image',
                    style: TextStyle(color: Colors.red),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          // Image with BoxFit demos
          const Text('Different BoxFit Values',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBoxFitExample('fill'),
              _buildBoxFitExample('cover'),
              _buildBoxFitExample('contain'),
            ],
          ),
          const SizedBox(height: 20),

          // Image with color blend
          const Text('Image with Color Blend',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Image.network(
            'https://images.unsplash.com/photo-1682687982501-1e58ab814714',
            width: 300,
            height: 100,
            fit: BoxFit.cover,
            color: Colors.blue,
            colorBlendMode: BlendMode.color,
          ),
          const SizedBox(height: 20),

          // Placeholder image (using container as placeholder)
          const Text('Placeholder Image Demo',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Icon(
                Icons.image,
                size: 50,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBoxFitExample(String fitType) {
    BoxFit fit;
    switch (fitType) {
      case 'fill':
        fit = BoxFit.fill;
        break;
      case 'cover':
        fit = BoxFit.cover;
        break;
      case 'contain':
        fit = BoxFit.contain;
        break;
      default:
        fit = BoxFit.none;
    }

    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Image.network(
            'https://images.unsplash.com/photo-1682687982501-1e58ab814714',
            fit: fit,
          ),
        ),
        const SizedBox(height: 5),
        Text('BoxFit.$fitType'),
      ],
    );
  }
}
