import 'package:flutter/material.dart';

class PopupMenuButtonPreview extends StatefulWidget {
  const PopupMenuButtonPreview({Key? key}) : super(key: key);

  @override
  State<PopupMenuButtonPreview> createState() => _PopupMenuButtonPreviewState();
}

class _PopupMenuButtonPreviewState extends State<PopupMenuButtonPreview> {
  String _selectedItem = 'None';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Selected: $_selectedItem', style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Basic PopupMenuButton
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert),
              tooltip: 'Menu',
              onSelected: (String value) {
                setState(() {
                  _selectedItem = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Selected: $value')),
                );
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
            ),
            const SizedBox(width: 20),
            // Custom PopupMenuButton
            PopupMenuButton<String>(
              offset: const Offset(0, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Colors.blue.shade50,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  children: [
                    Text('Options', style: TextStyle(color: Colors.blue)),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_drop_down, color: Colors.blue),
                  ],
                ),
              ),
              onSelected: (String value) {
                setState(() {
                  _selectedItem = value;
                });
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
            ),
          ],
        ),
      ],
    );
  }
}
