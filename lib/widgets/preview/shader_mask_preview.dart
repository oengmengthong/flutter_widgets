import 'package:flutter/material.dart';

class ShaderMaskPreview extends StatelessWidget {
  const ShaderMaskPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            colors: [Colors.blue, Colors.green, Colors.yellow, Colors.red],
            stops: [0.0, 0.3, 0.7, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds);
        },
        blendMode: BlendMode.srcATop,
        child: const SizedBox(
          width: 300,
          height: 150,
          child: Center(
            child: Text(
              'GRADIENT TEXT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
