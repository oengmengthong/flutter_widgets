import 'package:flutter/material.dart';

class SizedBoxPreview extends StatelessWidget {
  const SizedBoxPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: Colors.blue, height: 30, width: 200),
            const SizedBox(height: 20), // Space of 20px
            Container(color: Colors.blue, height: 30, width: 200),
            const SizedBox(
              height: 50,
              width: 200,
              child: Center(
                child: Text('SizedBox with child'),
              ),
            ),
            const SizedBox.expand(
              child: Card(
                margin: EdgeInsets.all(8),
                child: Center(
                  child: Text('SizedBox.expand'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
