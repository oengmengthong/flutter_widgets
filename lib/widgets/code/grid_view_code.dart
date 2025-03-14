const String gridViewCode = '''
// Basic GridView with fixed cross axis count
GridView.count(
  crossAxisCount: 3,
  crossAxisSpacing: 10.0,
  mainAxisSpacing: 10.0,
  padding: EdgeInsets.all(10.0),
  children: List.generate(12, (index) {
    return Container(
      color: Colors.primaries[index % Colors.primaries.length],
      child: Center(
        child: Text(
          '\${index + 1}',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }),
)

// GridView.builder for efficient scrolling
GridView.builder(
  padding: EdgeInsets.all(8.0),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    childAspectRatio: 1.0,
  ),
  itemCount: 100,
  itemBuilder: (context, index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.primaries[index % Colors.primaries.length],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          '\${index + 1}',
          style: TextStyle(
            color: Colors.white,
            fontWeight: Font.bold,
          ),
        ),
      ),
    );
  },
)

// GridView with max cross axis extent
GridView.extent(
  maxCrossAxisExtent: 150,
  padding: EdgeInsets.all(10),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  children: <Widget>[
    for (int i = 0; i < 20; i++)
      Container(
        color: Colors.blueAccent,
        child: Center(child: Text('\${i + 1}')),
      ),
  ],
)

// GridView with custom delegate
GridView.custom(
  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 200.0,
    crossAxisSpacing: 10.0,
    mainAxisSpacing: 10.0,
  ),
  childrenDelegate: SliverChildBuilderDelegate(
    (BuildContext context, int index) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.teal[100 * (index % 9 + 1)],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text('Custom Grid Item \${index + 1}'),
        ),
      );
    },
    childCount: 15,
  ),
)

// GridView for photo gallery
GridView.builder(
  padding: EdgeInsets.all(8),
  itemCount: imageUrls.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 8,
    crossAxisSpacing: 8,
  ),
  itemBuilder: (context, index) {
    return InkWell(
      onTap: () {
        // Handle image tap
      },
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.network(
          imageUrls[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  },
)
''';
