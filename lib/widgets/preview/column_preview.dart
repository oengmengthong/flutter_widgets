// lib/widgets/preview/column_preview.dart
import 'package:flutter/material.dart';

class ColumnPreview extends StatelessWidget {
  const ColumnPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[200],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 40,
              color: Colors.red,
            ),
            const SizedBox(height: 10),
            Container(
              width: 150,
              height: 40,
              color: Colors.green,
            ),
            const SizedBox(height: 10),
            Container(
              width: 75,
              height: 40,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
