import 'package:flutter/material.dart';

class DividerPreview extends StatelessWidget {
  const DividerPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Basic Divider
          const Text('Basic Divider'),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Divider(),
          ),

          const SizedBox(height: 24),

          // Divider with custom thickness
          const Text('Divider with Custom Thickness'),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Divider(
              thickness: 3,
            ),
          ),

          const SizedBox(height: 24),

          // Divider with color
          const Text('Colored Divider'),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Divider(
              color: Colors.blue,
              thickness: 2,
            ),
          ),

          const SizedBox(height: 24),

          // Divider with custom indent
          const Text('Divider with Custom Indent'),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Divider(
              indent: 20,
              endIndent: 40,
              thickness: 1,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 24),

          // Divider in a list
          const Text('Divider in a List'),
          const SizedBox(height: 8),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            separatorBuilder: (context, index) => const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            itemBuilder: (context, index) => ListTile(
              title: Text('Item ${index + 1}'),
              leading: const Icon(Icons.circle),
            ),
          ),

          const SizedBox(height: 24),

          // Vertical Divider example
          const Text('Vertical Divider Example'),
          const SizedBox(height: 8),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.phone, size: 32),
                VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                  width: 20,
                ),
                Icon(Icons.message, size: 32),
                VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                  width: 20,
                ),
                Icon(Icons.video_call, size: 32),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Styled divider with text in the middle
          const Text('Styled Divider with Text'),
          const SizedBox(height: 16),
          Row(
            children: const [
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('OR', style: TextStyle(color: Colors.grey)),
              ),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
