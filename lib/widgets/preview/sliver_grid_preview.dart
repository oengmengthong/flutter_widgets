import 'package:flutter/material.dart';

class SliverGridPreview extends StatelessWidget {
  const SliverGridPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 80.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverGrid'),
              background: Container(color: Colors.orange),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Center(
                    child: Text(
                      '$index',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
