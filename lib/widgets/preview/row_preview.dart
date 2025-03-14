// lib/widgets/preview/row_preview.dart
import 'package:flutter/material.dart';

class RowPreview extends StatelessWidget {
  const RowPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 50,
              height: 70,
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 90,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
