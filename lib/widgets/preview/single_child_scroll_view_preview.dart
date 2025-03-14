import 'package:flutter/material.dart';

class SingleChildScrollViewPreview extends StatelessWidget {
  const SingleChildScrollViewPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Basic SingleChildScrollView (Vertical)',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        
        // Vertical scroll view
        Container(
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                10,
                (index) => Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 50,
                  width: double.infinity,
                  color: Colors.blue.withOpacity(0.3 + (index * 0.05)),
                  alignment: Alignment.center,
                  child: Text('Item ${index + 1}'),
                ),
              ),
            ),
          ),
        ),
        
        const SizedBox(height: 24),
        
        const Text(
          'Horizontal SingleChildScrollView',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        
        // Horizontal scroll view
        Container(
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(16),
            child: Row(
              children: List.generate(
                15,
                (index) => Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 100,
                  height: 50,