import 'package:flutter/material.dart';
import 'dart:math' as math;

class FutureBuilderPreview extends StatefulWidget {
  const FutureBuilderPreview({super.key});

  @override
  State<FutureBuilderPreview> createState() => _FutureBuilderPreviewState();
}

class _FutureBuilderPreviewState extends State<FutureBuilderPreview> {
  late Future<String> _dataFuture;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _dataFuture = _fetchData();
  }

  Future<String> _fetchData() async {
    // Simulate network request
    await Future.delayed(const Duration(seconds: 2));

    // Generate random data
    final items = List.generate(
      5,
      (index) => 'Item ${index + 1}: ${math.Random().nextInt(1000)}',
    );

    return items.join('\n');
  }

  void _refreshData() {
    setState(() {
      _isLoading = true;
      _dataFuture = _fetchData();
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: FutureBuilder<String>(
              future: _dataFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 16),
                        Text('Loading data...'),
                      ],
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 60,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Error: ${snapshot.error}',
                          style: const TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Data loaded successfully:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.blue.shade200),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: snapshot.data!
                                .split('\n')
                                .map((item) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4),
                                      child: Text(item),
                                    ))
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _isLoading ? null : _refreshData,
          child: const Text('Reload Data'),
        ),
      ],
    );
  }
}
