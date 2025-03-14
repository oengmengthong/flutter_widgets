import 'package:flutter/material.dart';

class PageViewPreview extends StatefulWidget {
  const PageViewPreview({super.key});

  @override
  State<PageViewPreview> createState() => _PageViewPreviewState();
}

class _PageViewPreviewState extends State<PageViewPreview> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<Color> _colors = [Colors.blue, Colors.green, Colors.orange];
  final List<String> _titles = ['Page 1', 'Page 2', 'Page 3'];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemCount: _colors.length,
              itemBuilder: (context, index) {
                return Container(
                  color: _colors[index],
                  child: Center(
                    child: Text(
                      _titles[index],
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: _currentPage > 0
                  ? () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  : null,
            ),
            const SizedBox(width: 20),
            Text(
              'Page ${_currentPage + 1} of ${_colors.length}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 20),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: _currentPage < _colors.length - 1
                  ? () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  : null,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _colors.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index
                    ? _colors[index]
                    : Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
