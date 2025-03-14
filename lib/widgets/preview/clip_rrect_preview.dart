import 'package:flutter/material.dart';

class ClipRRectPreview extends StatelessWidget {
  const ClipRRectPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          width: 200,
          height: 100,
          color: Colors.blue,
          child: const Center(
            child: Text(
              'Rounded Corners',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
