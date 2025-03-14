import 'package:flutter/material.dart';

class CenterPreview extends StatelessWidget {
  const CenterPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: 300,
      height: 200,
      child:  Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Centered',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
