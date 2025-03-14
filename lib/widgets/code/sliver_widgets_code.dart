// This file is a composite that can refer to other sliver code examples
export 'sliver_list_code.dart';
export 'sliver_grid_code.dart';

// Additional combined examples can be included here
const String sliverWidgetsCode = '''
// Combined Sliver Widgets Example
CustomScrollView(
  slivers: <Widget>[
    // SliverAppBar at the top
    SliverAppBar(
      floating: true,
      pinned: true,
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Sliver Widgets'),
        background: Image.network(
          'https://picsum.photos/800/600',
          fit: BoxFit.cover,
        ),
      ),
    ),
    
    // SliverPadding for spacing
    SliverPadding(
      padding: EdgeInsets.all(16.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          'SliverList Example',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    
    // SliverList for scrollable list items
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('\${index + 1}')),
            title: Text('List Item \${index + 1}'),
            subtitle: Text('Tap for more information'),
          );
        },
        childCount: 5,
      ),
    ),
    
    // SliverPadding for spacing
    SliverPadding(
      padding: EdgeInsets.all(16.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          'SliverGrid Example',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ),
    
    // SliverGrid for grid layout
    SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, 
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            color: Colors.primaries[index % Colors.primaries.length],
            alignment: Alignment.center,
            child: Text('\${index + 1}', style: TextStyle(color: Colors.white)),
          );
        },
        childCount: 12,
      ),
    ),
    
    // SliverToBoxAdapter for fixed content
    SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'SliverToBoxAdapter lets you place regular box widgets in a sliver context.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    ),
  ],
)
''';
