import 'package:flutter/material.dart';

class GestureDetectorPreview extends StatefulWidget {
  const GestureDetectorPreview({Key? key}) : super(key: key);

  @override
  State<GestureDetectorPreview> createState() => _GestureDetectorPreviewState();
}

class _GestureDetectorPreviewState extends State<GestureDetectorPreview> {
  Color _boxColor = Colors.blue;
  double _boxSize = 100.0;
  String _lastGesture = 'None';
  Offset _dragPosition = Offset.zero;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Try different gestures on the boxes below:'),
        const SizedBox(height: 16),
        
        // Display which gesture was last detected
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'Last gesture: $_lastGesture',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        
        const SizedBox(height: 24),
        
        // Tap, Double Tap, and Long Press gestures
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Tap detector
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _boxColor = Colors.green;
                      _lastGesture = 'Tap';
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    color: _boxColor,
                    child: const Center(
                      child: Text(
                        'Tap',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text('Tap'),
              ],
            ),
            
            // Double tap detector
            Column(
              children: [
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      _boxColor = Colors.red;
                      _lastGesture = 'Double Tap';
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        'Double Tap',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text('Double Tap'),
              ],
            ),
            
            // Long press detector
            Column(
              children: [
                GestureDetector(
                  onLongPress: () {
                    setState(() {
                      _boxColor = Colors.purple;
                      _lastGesture = 'Long Press';
                    });
                  },