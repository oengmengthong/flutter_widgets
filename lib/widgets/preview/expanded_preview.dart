import 'package:flutter/material.dart';

class ExpandedPreview extends StatelessWidget {
  const ExpandedPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[200],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[100],
              child: const Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Card(
                      color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Flex: 2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Card(
                      color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Flex: 1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Flex: 1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('The red box takes up twice as much space'),
          ],
        ),
      ),
    );
  }
}
