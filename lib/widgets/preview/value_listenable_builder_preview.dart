import 'package:flutter/material.dart';

class ValueListenableBuilderPreview extends StatefulWidget {
  const ValueListenableBuilderPreview({Key? key}) : super(key: key);

  @override
  State<ValueListenableBuilderPreview> createState() =>
      _ValueListenableBuilderPreviewState();
}

class _ValueListenableBuilderPreviewState
    extends State<ValueListenableBuilderPreview> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  void dispose() {
    _counter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder<int>(
            valueListenable: _counter,
            builder: (context, value, child) {
              return Text(
                'Count: $value',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _counter.value++,
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}
