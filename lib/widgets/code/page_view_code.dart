const String pageViewCode = '''
// Basic PageView with hardcoded pages
PageView(
  // Optional: Controller to programmatically control the PageView
  controller: PageController(),
  
  // Called when the page changes
  onPageChanged: (int page) {
    print('Page changed to \$page');
  },
  
  // The pages to display
  children: <Widget>[
    Container(
      color: Colors.red,
      child: Center(child: Text('Page 1')),
    ),
    Container(
      color: Colors.green,
      child: Center(child: Text('Page 2')),
    ),
    Container(
      color: Colors.blue,
      child: Center(child: Text('Page 3')),
    ),
  ],
)

// PageView.builder for dynamic list of pages
PageView.builder(
  controller: PageController(initialPage: 0),
  itemCount: items.length,
  itemBuilder: (context, index) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Text(
          'Item \${index + 1}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  },
)

// PageView with custom scroll physics
PageView(
  physics: BouncingScrollPhysics(),
  children: <Widget>[
    // Pages...
  ],
)

// PageView with custom viewport fraction
PageView(
  controller: PageController(
    initialPage: 0,
    viewportFraction: 0.8, // Shows part of the next/previous page
  ),
  children: <Widget>[
    // Pages with padding to show effect
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Center(child: Text('Page 1')),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Center(child: Text('Page 2')),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Center(child: Text('Page 3')),
      ),
    ),
  ],
)

// Controlling the PageView programmatically
// First, create a controller
final PageController _pageController = PageController();

// Then use the controller to navigate between pages
ElevatedButton(
  onPressed: () {
    _pageController.animateToPage(
      1, // Go to the second page (index 1)
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  },
  child: Text('Go to Page 2'),
)

// Or use jumpToPage for instant navigation
ElevatedButton(
  onPressed: () {
    _pageController.jumpToPage(2); // Go to the third page (index 2)
  },
  child: Text('Jump to Page 3'),
)

// Don't forget to dispose the controller when you're done
@override
void dispose() {
  _pageController.dispose();
  super.dispose();
}
''';
