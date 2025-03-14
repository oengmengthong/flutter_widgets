const String dragTargetCode = '''
// First create a Draggable that provides data
Draggable<String>(
  // The data to be passed to DragTarget
  data: 'draggable-data',
  
  // Widget to show under the pointer during drag
  feedback: Material(
    elevation: 4.0,
    child: Container(
      height: 50,
      width: 50,
      color: Colors.blue.withOpacity(0.5),
      child: const Icon(Icons.folder, color: Colors.white),
    ),
  ),
  
  // Widget to show in the original position during drag
  childWhenDragging: Container(
    height: 50.0,
    width: 50.0,
    color: Colors.grey.shade300,
    child: const Center(child: Text('Dragging')),
  ),
  
  // The widget that starts the drag when long pressed
  child: Container(
    height: 50.0,
    width: 50.0,
    color: Colors.blue,
    child: const Center(child: Text('Drag Me', style: TextStyle(color: Colors.white))),
  ),
),

// Then create a DragTarget that accepts the data
DragTarget<String>(
  // Function to determine if this target will accept the data
  onWillAccept: (data) => data == 'draggable-data',
  
  // Called when an acceptable piece of data was dropped
  onAccept: (data) {
    print('Accepted: \$data');
    // Handle the accepted data here
  },
  
  // Called when a piece of data leaves the target
  onLeave: (data) {
    print('Data left target');
  },
  
  // Builder for the target's appearance
  builder: (context, candidateData, rejectedData) {
    // candidateData contains data that is hovering over this target
    // and might be accepted
    
    // Change appearance based on whether data is hovering
    return Container(
      height: 100.0,
      width: 100.0,
      color: candidateData.isEmpty ? Colors.grey.shade200 : Colors.green.shade100,
      child: Center(
        child: Text(
          candidateData.isEmpty ? 'Drop Here' : 'Ready to Accept!',
        ),
      ),
    );
  },
),
''';
