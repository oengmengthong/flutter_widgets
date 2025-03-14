const String popupMenuButtonCode = '''
// Basic PopupMenuButton
PopupMenuButton<String>(
  onSelected: (String value) {
    // Handle selection
    print('Selected: \$value');
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
    const PopupMenuItem<String>(
      value: 'Option 1',
      child: Text('Option 1'),
    ),
    const PopupMenuItem<String>(
      value: 'Option 2',
      child: Text('Option 2'),
    ),
    const PopupMenuItem<String>(
      value: 'Option 3',
      child: Text('Option 3'),
    ),
  ],
)

// PopupMenuButton with icon
PopupMenuButton<String>(
  icon: const Icon(Icons.more_vert),
  tooltip: 'Menu',
  onSelected: (String value) {
    // Handle selection
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
    const PopupMenuItem<String>(
      value: 'Share',
      child: Row(
        children: [
          Icon(Icons.share, size: 18),
          SizedBox(width: 8),
          Text('Share'),
        ],
      ),
    ),
    const PopupMenuItem<String>(
      value: 'Copy',
      child: Row(
        children: [
          Icon(Icons.content_copy, size: 18),
          SizedBox(width: 8),
          Text('Copy'),
        ],
      ),
    ),
    const PopupMenuDivider(),
    const PopupMenuItem<String>(
      value: 'Delete',
      child: Row(
        children: [
          Icon(Icons.delete, size: 18),
          SizedBox(width: 8),
          Text('Delete'),
        ],
      ),
    ),
  ],
)

// PopupMenuButton with custom child and styling
PopupMenuButton<String>(
  offset: const Offset(0, 50),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  color: Colors.grey[200],
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8),
    ),
    child: const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Menu', style: TextStyle(color: Colors.white)),
        SizedBox(width: 4),
        Icon(Icons.arrow_drop_down, color: Colors.white),
      ],
    ),
  ),
  onSelected: (String value) {
    // Handle selection
  },
  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
    const PopupMenuItem<String>(
      value: 'Edit',
      child: Text('Edit'),
    ),
    const PopupMenuItem<String>(
      value: 'Archive',
      child: Text('Archive'),
    ),
    const PopupMenuItem<String>(
      value: 'Settings',
      child: Text('Settings'),
    ),
  ],
)

// PopupMenuButton with CheckedPopupMenuItem
PopupMenuButton<String>(
  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
    CheckedPopupMenuItem<String>(
      checked: _isBold,
      value: 'bold',
      child: const Text('Bold'),
    ),
    CheckedPopupMenuItem<String>(
      checked: _isItalic,
      value: 'italic',
      child: const Text('Italic'),
    ),
    CheckedPopupMenuItem<String>(
      checked: _isUnderline,
      value: 'underline',
      child: const Text('Underline'),
    ),
  ],
  onSelected: (String value) {
    setState(() {
      // Toggle the selected item
      if (value == 'bold') _isBold = !_isBold;
      if (value == 'italic') _isItalic = !_isItalic;
      if (value == 'underline') _isUnderline = !_isUnderline;
    });
  },
)
''';
