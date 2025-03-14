const String interactiveViewerCode = '''
// Basic image zooming and panning
InteractiveViewer(
  boundaryMargin: EdgeInsets.all(20.0),
  minScale: 0.5,
  maxScale: 4.0,
  child: Image.network(
    'https://picsum.photos/500/500',
    fit: BoxFit.cover,
  ),
)

// Interactive map or large diagram
Container(
  height: 400,
  width: 400,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(12),
  ),
  child: InteractiveViewer(
    constrained: false, // Allows content to be larger than the viewport
    scaleEnabled: true,
    panEnabled: true,
    alignPanAxis: false, // Allow free panning in any direction
    boundaryMargin: EdgeInsets.all(100),
    minScale: 0.5,
    maxScale: 5.0,
    child: Container(
      width: 1000,
      height: 1000,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/1000/1000'),
          fit: BoxFit.cover,
        ),
      ),
      // Add map markers or annotations here
      child: Stack(
        children: [
          Positioned(
            left: 300,
            top: 300,
            child: Icon(Icons.location_on, color: Colors.red, size: 40),
          ),
          Positioned(
            left: 500,
            top: 700,
            child: Icon(Icons.location_on, color: Colors.blue, size: 40),
          ),
          // Add more markers as needed
        ],
      ),
    ),
  ),
)

// Interactive viewer with transformationController
class ControlledZoomExample extends StatefulWidget {
  @override
  _ControlledZoomExampleState createState() => _ControlledZoomExampleState();
}

class _ControlledZoomExampleState extends State<ControlledZoomExample> {
  final TransformationController _transformationController = 
      TransformationController();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: InteractiveViewer(
            transformationController: _transformationController,
            boundaryMargin: EdgeInsets.all(20),
            minScale: 0.1,
            maxScale: 5.0,
            child: Image.network('https://picsum.photos/800/800'),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Zoom In'),
              onPressed: () {
                // Scale up by 20%
                _transformationController.value = 
                    _transformationController.value.scaled(1.2, 1.2);
              },
            ),
            SizedBox(width: 20),
            ElevatedButton(
              child: Text('Zoom Out'),
              onPressed: () {
                // Scale down by 20%
                _transformationController.value = 
                    _transformationController.value.scaled(0.8, 0.8);
              },
            ),
            SizedBox(width: 20),
            ElevatedButton(
              child: Text('Reset'),
              onPressed: () {
                _transformationController.value = Matrix4.identity();
              },
            ),
          ],
        ),
      ],
    );
  }
  
  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }
}
''';
