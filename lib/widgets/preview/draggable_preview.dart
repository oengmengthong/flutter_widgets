import 'package:flutter/material.dart';

class DraggablePreview extends StatefulWidget {
  const DraggablePreview({super.key});

  @override
  State<DraggablePreview> createState() => _DraggablePreviewState();
}

class _DraggablePreviewState extends State<DraggablePreview> {
  Color _draggableColor = Colors.blue;
  String _dragStatus = 'Drag the blue box to the target';
  bool _wasAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          _dragStatus,
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Draggable<Color>(
              // The data being dragged
              data: Colors.blue,

              // Widget to show under the pointer during drag
              feedback: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(Icons.move_down, color: Colors.white),
                ),
              ),

              // Widget shown in place of child when dragging
              childWhenDragging: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: const Center(
                  child: Text(
                    'Dragging...',
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // Callbacks for drag events
              onDragStarted: () {
                setState(() {
                  _dragStatus = 'Dragging started';
                  _wasAccepted = false;
                });
              },
              onDraggableCanceled: (velocity, offset) {
                setState(() {
                  _dragStatus = 'Drag canceled';
                });
              },
              onDragEnd: (details) {
                if (!_wasAccepted) {
                  setState(() {
                    _dragStatus = 'Drop not accepted';
                  });
                }
              },

              // The widget that can be dragged
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: _draggableColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Drag Me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            DragTarget<Color>(
              onWillAccept: (data) => data != null,
              onAccept: (color) {
                setState(() {
                  _draggableColor = color.withOpacity(0.5);
                  _dragStatus = 'Drop accepted!';
                  _wasAccepted = true;
                });
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: candidateData.isNotEmpty
                        ? Colors.amber.shade200
                        : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:
                          candidateData.isNotEmpty ? Colors.amber : Colors.grey,
                      width: candidateData.isNotEmpty ? 2 : 1,
                    ),
                  ),
                  child: const Center(
                    child: Text('Drop Target'),
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _draggableColor = Colors.blue;
              _dragStatus = 'Drag the blue box to the target';
            });
          },
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
