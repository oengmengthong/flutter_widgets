import 'package:flutter/material.dart';

class ShowDialogPreview extends StatefulWidget {
  const ShowDialogPreview({super.key});

  @override
  State<ShowDialogPreview> createState() => _ShowDialogPreviewState();
}

class _ShowDialogPreviewState extends State<ShowDialogPreview> {
  String _lastAction = 'No dialog shown yet';
  int _dialogType = 0;
  bool _barrierDismissible = true;

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
            _lastAction,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          children: [
            ChoiceChip(
              label: const Text('AlertDialog'),
              selected: _dialogType == 0,
              onSelected: (_) => setState(() => _dialogType = 0),
            ),
            ChoiceChip(
              label: const Text('SimpleDialog'),
              selected: _dialogType == 1,
              onSelected: (_) => setState(() => _dialogType = 1),
            ),
            ChoiceChip(
              label: const Text('Custom Dialog'),
              selected: _dialogType == 2,
              onSelected: (_) => setState(() => _dialogType = 2),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Barrier dismissible:'),
            Switch(
              value: _barrierDismissible,
              onChanged: (value) => setState(() => _barrierDismissible = value),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: _showSelectedDialog,
          child: const Text('Show Dialog'),
        ),
      ],
    );
  }

  void _showSelectedDialog() async {
    switch (_dialogType) {
      case 0:
        await _showAlertDialog();
        break;
      case 1:
        await _showSimpleDialog();
        break;
      case 2:
        await _showCustomDialog();
        break;
    }
  }

  Future<void> _showAlertDialog() async {
    final result = await showDialog<String>(
      context: context,
      barrierDismissible: _barrierDismissible,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert Dialog'),
          content: const Text(
              'This is a standard AlertDialog. Would you like to approve or cancel?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Approve'),
              child: const Text('Approve'),
            ),
          ],
        );
      },
    );

    setState(() {
      _lastAction = result != null
          ? 'AlertDialog: You pressed "$result"'
          : 'AlertDialog: Dialog dismissed';
    });
  }

  Future<void> _showSimpleDialog() async {
    final result = await showDialog<String>(
      context: context,
      barrierDismissible: _barrierDismissible,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Simple Dialog'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'Option 1'),
              child: const Text('Option 1'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'Option 2'),
              child: const Text('Option 2'),
            ),
            SimpleDialogOption(
              onPressed: () => Navigator.pop(context, 'Option 3'),
              child: const Text('Option 3'),
            ),
          ],
        );
      },
    );

    setState(() {
      _lastAction = result != null
          ? 'SimpleDialog: You selected "$result"'
          : 'SimpleDialog: Dialog dismissed';
    });
  }

  Future<void> _showCustomDialog() async {
    final result = await showDialog<String>(
      context: context,
      barrierDismissible: _barrierDismissible,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.check_circle, color: Colors.green, size: 60),
                const SizedBox(height: 16),
                const Text(
                  'Custom Dialog',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'This is a custom styled dialog box.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, 'Custom OK'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: const Text('OK'),
                ),
              ],
            ),
          ),
        );
      },
    );

    setState(() {
      _lastAction = result != null
          ? 'CustomDialog: Returned "$result"'
          : 'CustomDialog: Dialog dismissed';
    });
  }
}
