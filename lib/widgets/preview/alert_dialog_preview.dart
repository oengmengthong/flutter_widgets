import 'package:flutter/material.dart';

class AlertDialogPreview extends StatefulWidget {
  const AlertDialogPreview({super.key});

  @override
  State<AlertDialogPreview> createState() => _AlertDialogPreviewState();
}

class _AlertDialogPreviewState extends State<AlertDialogPreview> {
  String _result = 'Press the button to show an AlertDialog';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.blue.shade200),
          ),
          child: Text(
            _result,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _showAlertDialog,
          child: const Text('Show AlertDialog'),
        ),
      ],
    );
  }

  void _showAlertDialog() async {
    final result = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Example'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('This is an AlertDialog.'),
              SizedBox(height: 10),
              Text('It can contain various widgets in its content area.'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );

    setState(() {
      if (result != null) {
        _result = 'You selected: $result';
      } else {
        _result = 'Dialog was dismissed';
      }
    });
  }
}
