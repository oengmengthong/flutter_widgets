const String futureBuilderCode = '''
// Basic FutureBuilder example
FutureBuilder<String>(
  // The Future to be resolved
  future: fetchData(),
  
  // Builder that handles different states of the future
  builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
    // Check the state of the future
    if (snapshot.connectionState == ConnectionState.waiting) {
      // Future is still loading
      return Center(child: CircularProgressIndicator());
    } else if (snapshot.hasError) {
      // Future completed with an error
      return Center(
        child: Text('Error: \${snapshot.error}'),
      );
    } else {
      // Future completed successfully
      return Center(
        child: Text('Data: \${snapshot.data}'),
      );
    }
  },
)

// The future function that returns data
Future<String> fetchData() async {
  // Simulate a network request delay
  await Future.delayed(Duration(seconds: 2));
  
  // Return some data or throw an error
  if (DateTime.now().second % 2 == 0) {
    return 'Successfully loaded data!';
  } else {
    throw Exception('Failed to load data');
  }
}

// FutureBuilder with a list of data
FutureBuilder<List<String>>(
  future: fetchItems(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return Center(child: CircularProgressIndicator());
    } else if (snapshot.hasError) {
      return Center(child: Text('Error: \${snapshot.error}'));
    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
      return Center(child: Text('No data available'));
    } else {
      // Build a list from the data
      return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(snapshot.data![index]),
          );
        },
      );
    }
  },
)

// The future function that returns a list
Future<List<String>> fetchItems() async {
  await Future.delayed(Duration(seconds: 2));
  return ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
}

// FutureBuilder with reload capability
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late Future<String> _dataFuture;

  @override
  void initState() {
    super.initState();
    _dataFuture = fetchData();
  }

  void _refreshData() {
    setState(() {
      _dataFuture = fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FutureBuilder<String>(
            future: _dataFuture,
            builder: (context, snapshot) {
              // Handle different states
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: \${snapshot.error}'));
              } else {
                return Center(child: Text(snapshot.data!));
              }
            },
          ),
        ),
        ElevatedButton(
          onPressed: _refreshData,
          child: Text('Refresh'),
        ),
      ],
    );
  }
}
''';
