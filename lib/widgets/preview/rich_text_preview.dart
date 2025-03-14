import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextPreview extends StatelessWidget {
  const RichTextPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Basic RichText with different styles
        RichText(
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(
                text: 'bold',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: ' and '),
              TextSpan(
                text: 'italic',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              TextSpan(text: ' text.'),
            ],
          ),
        ),
        const SizedBox(height: 20),

        // RichText with different colors and sizes
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(text: 'Flutter is '),
              TextSpan(
                text: 'amazing ',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              TextSpan(text: 'for app development.'),
            ],
          ),
        ),
        const SizedBox(height: 20),

        // RichText with tappable links
        RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              const TextSpan(text: 'Check out '),
              TextSpan(
                text: 'Flutter website',
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Link tapped!'),
                      ),
                    );
                  },
              ),
              const TextSpan(text: ' for more information.'),
            ],
          ),
        ),
        const SizedBox(height: 20),

        // RichText with different decorations
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Strikethrough ',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.red,
                ),
              ),
              TextSpan(
                text: 'Underline ',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.green,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ),
              TextSpan(
                text: 'Overline',
                style: TextStyle(
                  decoration: TextDecoration.overline,
                  decorationThickness: 2.0,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
