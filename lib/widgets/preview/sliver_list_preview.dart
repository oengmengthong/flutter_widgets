import 'package:flutter/material.dart';

class SliverListPreview extends StatelessWidget {
  const SliverListPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverList'),
              background: Container(color: Colors.blue),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text('$index'),
                    backgroundColor:
                        Colors.primaries[index % Colors.primaries.length],
                  ),
                  title: Text('Item $index'),
                  subtitle: Text('Sliver items scroll efficiently'),
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
