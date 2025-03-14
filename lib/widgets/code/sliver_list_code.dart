const String sliverListCode = '''
CustomScrollView(
  slivers: <Widget>[
    SliverAppBar(
      pinned: true,
      expandedHeight: 150.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('SliverList Example'),
        background: Image.network(
          'https://picsum.photos/500/500',
          fit: BoxFit.cover,
        ),
      ),
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('\${index + 1}'),
              backgroundColor: Colors.primaries[index % Colors.primaries.length],
            ),
            title: Text('Item \${index + 1}'),
            subtitle: Text('Tap for more details'),
            onTap: () {
              // Handle item tap
              print('Tapped item \${index + 1}');
            },
          );
        },
        // Builds 30 ListTiles
        childCount: 30,
      ),
    ),
  ],
)
''';
