import 'package:flutter/material.dart';

class FlexiblePreview extends StatelessWidget {
  const FlexiblePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[100],
              child: const Row(
                children: [
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Card(
                      color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Flex: 2\nFit: tight',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Card(
                      color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Flex: 1\nFit: loose',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Flexible is similar to Expanded but can use loose fit'),
            const Text('tight = takes all available space'),
            const Text('loose = takes only needed space'),
          ],
        ),
      ),
    );
  }
}
