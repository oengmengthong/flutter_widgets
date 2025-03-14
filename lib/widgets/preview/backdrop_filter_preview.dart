import 'dart:ui';
import 'package:flutter/material.dart';

class BackdropFilterPreview extends StatelessWidget {
  const BackdropFilterPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // Background Image or Content
          Container(
            width: 250,
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/250/150'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Frosted Glass Effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.1),
                child: const Center(
                  child: Text(
                    'Backdrop Filter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
