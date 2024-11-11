const String rowCode = '''
Column(
  children: [
    Row(
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.green),
        Container(width: 50, height: 50, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 100, color: Colors.green),
        Container(width: 50, height: 150, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 100, color: Colors.green),
        Container(width: 50, height: 150, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 100, color: Colors.green),
        Container(width: 50, height: 150, color: Colors.blue),
      ],
    ),
    SizedBox(height: 10),
    Row(
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
