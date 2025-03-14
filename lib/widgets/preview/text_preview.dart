import 'package:flutter/material.dart';

class TextPreview extends StatelessWidget {
  const TextPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Basic Text
        const Text(
          'Basic Text Widget',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),

        // Styled Text
        const Text(
          'Styled Text with Color and Shadow',
          style: TextStyle(
            fontSize: 18,
            color: Colors.blue,
            fontStyle: FontStyle.italic,
            letterSpacing: 1.2,
            shadows: [
              Shadow(
                color: Colors.black26,
                offset: Offset(2, 2),
                blurRadius: 3,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // Text with alignment and overflow
        Container(
          width: 180,
          color: Colors.grey.shade200,
          padding: const EdgeInsets.all(8),
          child: const Text(
            'This is a long text that demonstrates text overflow and alignment features',
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 16),

        // Text with decoration
        const Text(
          'Underlined Text',
          style: TextStyle(
            fontSize: 16,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.dotted,
            decorationThickness: 2,
          ),
        ),
        const SizedBox(height: 8),

        // Strikethrough text
        const Text(
          'Strikethrough Text',
          style: TextStyle(
            fontSize: 16,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.blue,
            decorationThickness: 2,
          ),
        ),
        const SizedBox(height: 16),

        // Text with scale factor
        const Text(
          'Text with larger textScaleFactor',
          textScaleFactor: 1.5,
        ),
        const SizedBox(height: 16),

        // Text with custom font weight
        const Text(
          'FontWeight.w100',
          style: TextStyle(fontWeight: FontWeight.w100),
        ),
        const Text(
          'FontWeight.w300',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        const Text(
          'FontWeight.w500',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        const Text(
          'FontWeight.w700',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        const Text(
          'FontWeight.w900',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}

class RichTextPreview extends StatelessWidget {
  const RichTextPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(text: 'This is '),
            TextSpan(
              text: 'Rich Text ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            TextSpan(text: 'with '),
            TextSpan(
              text: 'multiple styles ',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.red,
              ),
            ),
            TextSpan(
              text: 'in one paragraph.',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultTextStylePreview extends StatelessWidget {
  const DefaultTextStylePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 18.0,
        color: Colors.blue,
        fontWeight: FontWeight.w500,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('This text inherits the default text style'),
            SizedBox(height: 8),
            Text(
              'This text overrides some properties',
              style: TextStyle(
                color: Colors.red, // Overrides the default color
              ),
            ),
            SizedBox(height: 8),
            Text(
              'This text has its own style',
              style: TextStyle(
                fontSize: 14,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
