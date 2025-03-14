import 'package:flutter/material.dart';

class InkWellPreview extends StatelessWidget {
  const InkWellPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('InkWell tapped!'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              splashColor: Colors.purple.withOpacity(0.5),
              highlightColor: Colors.yellow.withOpacity(0.3),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Tap me',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Material(
            color: Colors.transparent,
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                splashColor: Colors.white.withOpacity(0.3),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  child: const Text(
                    'Gradient InkWell',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
