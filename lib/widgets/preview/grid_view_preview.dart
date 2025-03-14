import 'package:flutter/material.dart';

class GridViewPreview extends StatelessWidget {
  const GridViewPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        ),
        itemCount: 12,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.primaries[index % Colors.primaries.length],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
