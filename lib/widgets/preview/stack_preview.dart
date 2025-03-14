import 'package:flutter/material.dart';

class StackPreview extends StatelessWidget {
  const StackPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.grey[200],
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 150,
              color: Colors.blue[200],
            ),
            Positioned(
              top: 30,
              left: 50,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.red.withOpacity(0.7),
                child: const Center(
                  child: Text(
                    'Positioned',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 30,
              child: Container(
                width: 120,
                height: 60,
                color: Colors.green.withOpacity(0.7),
                child: const Center(
                  child: Text(
                    'Positioned',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
