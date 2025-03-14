import 'package:flutter/material.dart';

class InteractiveViewerPreview extends StatelessWidget {
  const InteractiveViewerPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.5,
          maxScale: 4.0,
          child: Image.network(
            'https://picsum.photos/500/500',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
