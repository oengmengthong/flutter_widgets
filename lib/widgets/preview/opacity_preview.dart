import 'package:flutter/material.dart';

class OpacityPreview extends StatefulWidget {
  const OpacityPreview({Key? key}) : super(key: key);

  @override
  State<OpacityPreview> createState() => _OpacityPreviewState();
}

class _OpacityPreviewState extends State<OpacityPreview> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: _opacity,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Fade Me',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Slider(
            value: _opacity,
            min: 0.0,
            max: 1.0,
            onChanged: (value) {
              setState(() {
                _opacity = value;
              });
            },
          ),
          Text('Opacity: ${(_opacity * 100).toStringAsFixed(0)}%'),
        ],
      ),
    );
  }
}
