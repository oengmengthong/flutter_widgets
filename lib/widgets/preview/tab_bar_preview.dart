import 'package:flutter/material.dart';

class TabBarPreview extends StatefulWidget {
  const TabBarPreview({super.key});

  @override
  State<TabBarPreview> createState() => _TabBarPreviewState();
}

class _TabBarPreviewState extends State<TabBarPreview>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            dividerColor: Colors.transparent,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.home, size: 40, color: Colors.blue),
                      const SizedBox(height: 16),
                      Text(
                        'Home Tab Content',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.search, size: 40, color: Colors.orange),
                      const SizedBox(height: 16),
                      Text(
                        'Search Tab Content',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.settings, size: 40, color: Colors.green),
                      const SizedBox(height: 16),
                      Text(
                        'Settings Tab Content',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text('Current Tab: ${['Home', 'Search', 'Settings'][_currentIndex]}'),
      ],
    );
  }
}
