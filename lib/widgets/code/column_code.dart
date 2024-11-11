const String columnCode = '''
Column(
  children: [
    Column(
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 100, height: 50, color: Colors.green),
        Container(width: 150, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 100, height: 50, color: Colors.green),
        Container(width: 150, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 100, height: 50, color: Colors.green),
        Container(width: 150, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
  ],
),
''';