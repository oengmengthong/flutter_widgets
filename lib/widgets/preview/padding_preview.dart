import 'package:flutter/material.dart';

class PaddingPreview extends StatelessWidget {
  const PaddingPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.grey[200],
        width: 300,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue[100],
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Padding.all(16.0)'),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.green[100],
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                child:
                    Text('Padding.symmetric(vertical: 8.0, horizontal: 24.0)'),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.orange[100],
              child: const Padding(
                padding: EdgeInsets.only(left: 32.0, top: 8.0),
                child: Text('Padding.only(left: 32.0, top: 8.0)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
