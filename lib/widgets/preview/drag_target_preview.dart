import 'package:flutter/material.dart';

class DragTargetPreview extends StatefulWidget {
  const DragTargetPreview({super.key});

  @override
  State<DragTargetPreview> createState() => _DragTargetPreviewState();
}

class _DragTargetPreviewState extends State<DragTargetPreview> {
  List<String> _acceptedItems = [];
  List<Color> _itemColors = [Colors.red, Colors.green, Colors.blue];
  List<bool> _itemsAccepted = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < _itemColors.length; i++)
              Draggable<int>(
                data: i,
                feedback: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: _itemColors[i].withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),
                childWhenDragging: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
                child: _itemsAccepted[i]
                    ? const SizedBox(width: 50, height: 50)
                    : Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: _itemColors[i],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
              ),
          ],
        ),
        const SizedBox(height: 40),
        DragTarget<int>(
          onWillAccept: (data) => data != null && !_itemsAccepted[data],
          onAccept: (data) {
            setState(() {
              _acceptedItems.add('Item ${data + 1}');
              _itemsAccepted[data] = true;
            });
          },
          builder: (context, candidateData, rejectedData) {
            return Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: candidateData.isEmpty
                    ? Colors.grey.shade200
                    : Colors.amber.shade100,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: candidateData.isEmpty ? Colors.grey : Colors.amber,
                  width: candidateData.isEmpty ? 1 : 2,
                ),
              ),
              child: Center(
                child: _acceptedItems.isEmpty
                    ? const Text('Drop items here')
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Accepted:'),
                          const SizedBox(height: 8),
                          Text(_acceptedItems.join(', '),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _acceptedItems = [];
              _itemsAccepted = [false, false, false];
            });
          },
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
