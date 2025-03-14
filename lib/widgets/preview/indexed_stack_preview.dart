import 'package:flutter/material.dart';

class IndexedStackPreview extends StatefulWidget {
  const IndexedStackPreview({super.key});

  @override
  State<IndexedStackPreview> createState() => _IndexedStackPreviewState();
}

class _IndexedStackPreviewState extends State<IndexedStackPreview> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IndexedStack(
            index: _index,
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Page 1',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Page 2',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Page 3',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _index > 0
                  ? () => setState(() {
                        _index--;
                      })
                  : null,
              child: const Text('Previous'),
            ),
            const SizedBox(width: 20),
            Text('Page ${_index + 1} of 3'),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: _index < 2
                  ? () => setState(() {
                        _index++;
                      })
                  : null,
              child: const Text('Next'),
            ),
          ],
        ),
      ],
    );
  }
}
