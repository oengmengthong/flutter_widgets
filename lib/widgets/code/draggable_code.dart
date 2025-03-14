const String draggableCode = '''
// Basic Draggable and DragTarget example
Draggable<String>(
  // The data that will be available to the DragTarget
  data: 'draggable-item',
  
  // Widget that appears under the pointer during drag
  feedback: Material(
    elevation: 4.0,
    child: Container(
      height: 70,
      width: 70,
      color: Colors.blue.withOpacity(0.7),
      child: Center(
        child: Text(
          'Dragging',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ),
  
  // Widget shown at original position during drag
  childWhenDragging: Container(
    height: 70,
    width: 70,
    color: Colors.grey.shade300,
    child: Center(
      child: Text('Original'),
    ),
  ),
  
  // Callbacks for drag events
  onDragStarted: () {
    print('Drag started');
  },
  onDraggableCanceled: (velocity, offset) {
    print('Drag canceled');
  },
  onDragEnd: (details) {
    print('Drag ended at \${details.offset}');
  },
  
  // The widget that initiates drag
  child: Container(
    height: 70,
    width: 70,
    color: Colors.blue,
    child: Center(
      child: Text(
        'Drag Me',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),

// Target that accepts dragged items
DragTarget<String>(
  // Will only accept if data matches
  onWillAccept: (data) => data == 'draggable-item',
  
  // Called when an item is dropped and accepted
  onAccept: (data) {
    print('Item accepted: \$data');
    // Handle the dropped data
  },
  
  // Called when a draggable leaves the target
  onLeave: (data) {
    print('Item left target');
  },
  
  // Builder for the target's UI
  builder: (context, candidateData, rejectedData) {
    return Container(
      width: 120,
      height: 120,
      color: candidateData.isNotEmpty
          ? Colors.amber.shade100
          : Colors.grey.shade200,
      child: Center(
        child: Text(
          candidateData.isNotEmpty ? 'Release to drop' : 'Drop here',
        ),
      ),
    );
  },
),
''';
