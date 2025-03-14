const String longPressDraggableCode = '''
// The item that can be dragged after a long-press
LongPressDraggable<String>(
  // The data to be passed to the DragTarget
  data: 'dragged-item',
  
  // Widget to show under the pointer when dragging
  feedback: Container(
    width: 80,
    height: 80,
    color: Colors.blue.withOpacity(0.5),
    child: Center(
      child: Icon(Icons.drag_indicator, color: Colors.white),
    ),
  ),
  
  // Widget to show in place of the child when dragging
  childWhenDragging: Container(
    width: 80,
    height: 80,
    color: Colors.grey.withOpacity(0.5),
    child: Center(
      child: Text('Long press to drag',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
  
  // Called when the drag starts
  onDragStarted: () {
    print('Drag started');
  },
  
  // Called when the drag ends
  onDragEnd: (details) {
    print('Drag ended: \${details.offset}');
  },
  
  // Called if the drag is canceled
  onDraggableCanceled: (velocity, offset) {
    print('Drag canceled');
  },
  
  // The widget that can be long-pressed to initiate the drag
  child: Container(
    width: 80,
    height: 80,
    color: Colors.blue,
    child: Center(
      child: Text('Long press me',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
)

// The target that accepts the dragged item
DragTarget<String>(
  // Check if this target will accept the data
  onWillAccept: (data) => data == 'dragged-item',
  
  // Called when an acceptable item is dropped
  onAccept: (data) {
    print('Item accepted: \$data');
    // Handle the dropped data
  },
  
  // Called when an item leaves the target
  onLeave: (data) {
    print('Item left the target');
  },
  
  // Builder for the target's appearance
  builder: (context, candidateData, rejectedData) {
    // Change appearance based on whether an item is hovering
    return Container(
      width: 120,
      height: 120,
      color: candidateData.isEmpty ? Colors.grey.shade300 : Colors.amber.shade100,
      child: Center(
        child: Text('Drop Target'),
      ),
    );
  },
)
''';
