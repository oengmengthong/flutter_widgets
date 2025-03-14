const String singleChildScrollViewCode = '''
// Basic vertical SingleChildScrollView
SingleChildScrollView(
  child: Column(
    children: <Widget>[
      Container(height: 100, color: Colors.red),
      Container(height: 100, color: Colors.blue),
      Container(height: 100, color: Colors.green),
      Container(height: 100, color: Colors.yellow),
      Container(height: 100, color: Colors.orange),
      // More children...
    ],
  ),
)

// SingleChildScrollView with padding
SingleChildScrollView(
  padding: EdgeInsets.all(16.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,