const String sliverGridCode = '''
CustomScrollView(
  slivers: <Widget>[
    SliverAppBar(
      floating: true,
      expandedHeight: 120.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('SliverGrid Example'),
        background: Container(
          color: Colors.orange,
        ),
      ),
    ),
    SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of columns
        mainAxisSpacing: 10.0, // Space between rows
        crossAxisSpacing: 10.0, // Space between columns
        childAspectRatio: 1.0, // Width to height ratio of each child
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            color: Colors.primaries[index % Colors.primaries.length],
            child: Center(
              child: Text(
                '\${index + 1}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
        childCount: 30, // Total number of items
      ),
    ),
    SliverPadding(
      padding: EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          'SliverGrid provides efficient grid layouts within a CustomScrollView',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  ],
)
''';
