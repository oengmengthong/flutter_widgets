// lib/widgets/code/container_code.dart
const String containerCode = '''
Container(
  width: 200,
  height: 200,
  decoration: BoxDecoration(
    color: Colors.blue,
    border: Border.all(color: Colors.black, width: 3),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
  ),
  child: Center(
    child: Text(
      'Container',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
)
''';
