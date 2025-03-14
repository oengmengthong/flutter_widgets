import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformPreview extends StatefulWidget {
  const TransformPreview({super.key});

  @override
  State<TransformPreview> createState() => _TransformPreviewState();
}

class _TransformPreviewState extends State<TransformPreview>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TransformType _transformType = TransformType.rotation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 150,
          width: 200,
          child: Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform(
                  transform: _getTransformMatrix(),
                  alignment: Alignment.center,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Transform',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var type in TransformType.values)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: ChoiceChip(
                  label: Text(type.name),
                  selected: _transformType == type,
                  onSelected: (bool selected) {
                    if (selected) {
                      setState(() {
                        _transformType = type;
                      });
                    }
                  },
                ),
              ),
          ],
        ),
      ],
    );
  }

  Matrix4 _getTransformMatrix() {
    final value = _controller.value;

    switch (_transformType) {
      case TransformType.rotation:
        return Matrix4.rotationZ(value * 2 * math.pi);

      case TransformType.scale:
        final scale = 0.5 + math.sin(value * math.pi * 2) * 0.5;
        return Matrix4.diagonal3Values(scale, scale, 1.0);

      case TransformType.translation:
        final offset = math.sin(value * math.pi * 2) * 50;
        return Matrix4.translationValues(offset, 0, 0);

      case TransformType.skew:
        return Matrix4.skewX(math.sin(value * math.pi * 2) * 0.5);
    }
  }
}

enum TransformType {
  rotation,
  scale,
  translation,
  skew,
}
