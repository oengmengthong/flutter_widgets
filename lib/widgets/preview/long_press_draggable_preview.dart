import 'package:flutter/material.dart';

class LongPressDraggablePreview extends StatefulWidget {
  const LongPressDraggablePreview({super.key});

  @override
  State<LongPressDraggablePreview> createState() =>
      _LongPressDraggablePreviewState();
}

class _LongPressDraggablePreviewState extends State<LongPressDraggablePreview> {
  String _dragStatus = 'Long press and drag the blue box';
  Color _containerColor = Colors.blue;
  bool _isItemAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _dragStatus,
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            LongPressDraggable<String>(
              data: 'dragged-item',
              feedback: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Icon(Icons.drag_indicator, color: Colors.white),
                ),
              ),
              childWhenDragging: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: const Center(
                  child: Text(
                    'Long press to drag',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
              onDragStarted: () {
                setState(() {
                  _dragStatus = 'Dragging...';
                });
              },
              onDragEnd: (details) {
                setState(() {
                  if (!_isItemAccepted) {
                    _dragStatus = 'Drag canceled';
                  }
                });
              },
              onDraggableCanceled: (velocity, offset) {
                setState(() {
                  _dragStatus = 'Drag canceled';
                });
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: _containerColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Long press me',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            DragTarget<String>(
              onWillAccept: (data) => data == 'dragged-item',
              onAccept: (data) {
                setState(() {
                  _containerColor = Colors.green;
                  _dragStatus = 'Item dropped successfully!';
                  _isItemAccepted = true;
                });
              },
              onLeave: (data) {
                setState(() {
                  _dragStatus = 'Item left the target';
                  _isItemAccepted = false;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: candidateData.isEmpty
                        ? Colors.grey.shade300
                        : Colors.amber.shade100,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: candidateData.isEmpty ? Colors.grey : Colors.amber,
                      width: 2,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Drop Target',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _resetDemo,
          child: const Text('Reset'),
        ),
      ],
    );
  }

  void _resetDemo() {
    setState(() {
      _containerColor = Colors.blue;
      _dragStatus = 'Long press and drag the blue box';
      _isItemAccepted = false;
    });
  }
}
