import 'package:flutter/material.dart';
import 'dart:math' as math;

class FlowPreview extends StatefulWidget {
  const FlowPreview({super.key});

  @override
  State<FlowPreview> createState() => _FlowPreviewState();
}

class _FlowPreviewState extends State<FlowPreview>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flow(
        delegate: FlowMenuDelegate(animation: _controller),
        children: List<IconData>.generate(
          5,
          (int index) => [
            Icons.menu,
            Icons.home,
            Icons.search,
            Icons.settings,
            Icons.notifications
          ][index],
        ).map<Widget>((IconData icon) {
          return Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.shade200,
            ),
            child: Icon(icon, color: Colors.white),
          );
        }).toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  final Animation<double> animation;

  FlowMenuDelegate({required this.animation}) : super(repaint: animation);

  @override
  void paintChildren(FlowPaintingContext context) {
    final size = context.size;
    final xCenter = size.width / 2;
    final yCenter = size.height / 2;
    final radius = math.min(xCenter, yCenter);

    for (int i = 0; i < context.childCount; i++) {
      final angle = (i * math.pi * 2 / context.childCount) +
          (animation.value * math.pi * 2);

      final x = xCenter + radius * math.cos(angle);
      final y = yCenter + radius * math.sin(angle);

      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          x - context.getChildSize(i)!.width / 2,
          y - context.getChildSize(i)!.height / 2,
          0.0,
        ),
      );
    }
  }

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) =>
      animation != oldDelegate.animation;
}
