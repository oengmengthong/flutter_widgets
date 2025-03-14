const String debugPrintCode = '''
// Basic usage of debugPrint
void logBasicInfo() {
  debugPrint('This is a debug message');
  debugPrint('Current time: \${DateTime.now()}');
}

// Logging structured data
void logStructuredData() {
  final user = {
    'id': 1,
    'name': 'John Doe',
    'email': 'john@example.com',
  };
  
  debugPrint('User info: \$user');
  
  // For more complex objects, you can format the output
  debugPrint('User details:');
  debugPrint('  ID: \${user['id']}');
  debugPrint('  Name: \${user['name']}');
  debugPrint('  Email: \${user['email']}');
}

// Using debugPrint in a lifecycle method
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    debugPrint('MyWidget initialized');
  }
  
  @override
  void dispose() {
    debugPrint('MyWidget disposed');
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    debugPrint('MyWidget building');
    return Container();
  }
}

// Conditional debugging
void conditionalDebug(bool condition, String message) {
  if (condition) {
    debugPrint('CONDITION MET: \$message');
  }
}

// Performance logging
void measurePerformance(String operationName, Function operation) {
  final stopwatch = Stopwatch()..start();
  
  operation();
  
  stopwatch.stop();
  debugPrint('\$operationName took \${stopwatch.elapsedMilliseconds}ms');
}

// Formatting large strings
void logLargeData() {
  // debugPrint automatically throttles output to avoid dropping messages
  final largeString = List.generate(100, (index) => 'Line \$index').join('\\n');
  debugPrint(largeString);
}

// Debug flags to control logging
class Logger {
  static bool enableVerbose = false;
  
  static void log(String message) {
    debugPrint(message);
  }
  
  static void verbose(String message) {
    if (enableVerbose) {
      debugPrint('VERBOSE: \$message');
    }
  }
  
  static void error(String message, [Object? error]) {
    debugPrint('ERROR: \$message');
    if (error != null) {
      debugPrint('Exception details: \$error');
    }
  }
}

// Using in a button action
ElevatedButton(
  onPressed: () {
    debugPrint('Button pressed at \${DateTime.now()}');
    
    // Perform action
    final result = performComplexCalculation();
    
    debugPrint('Calculation result: \$result');
  },
  child: Text('Calculate'),
)

// Mock function for demonstration
int performComplexCalculation() {
  // Simulating complex work
  return 42;
}
''';
