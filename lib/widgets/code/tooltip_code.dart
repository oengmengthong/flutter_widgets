const String tooltipCode = '''
Tooltip(
  // The message to show in the tooltip
  message: 'This is a tooltip explanation',
  
  // How long before the tooltip is shown
  waitDuration: Duration(milliseconds: 500),
  
  // How long the tooltip remains visible
  showDuration: Duration(seconds: 2),
  
  // Whether to prefer showing below the widget
  preferBelow: true,
  
  // How the tooltip is triggered
  triggerMode: TooltipTriggerMode.longPress, // or .tap or .manual
  
  // Styling for the tooltip text
  textStyle: TextStyle(
    color: Colors.white,
    fontSize: 14,
  ),
  
  // Background styling for the tooltip
  decoration: BoxDecoration(
    color: Colors.blueGrey.shade700,
    borderRadius: BorderRadius.circular(4),
  ),
  
  // Padding inside the tooltip
  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
  
  // The widget that triggers the tooltip
  child: Icon(
    Icons.info_outline,
    color: Colors.blue,
  ),
),

// You can also add tooltips to almost any widget:
IconButton(
  icon: Icon(Icons.settings),
  tooltip: 'Settings',
  onPressed: () {},
)
''';
