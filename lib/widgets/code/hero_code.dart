const String heroCode = '''
// Basic Hero animation between two screens
// First Screen Widget
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen()),
            );
          },
          child: Hero(
            tag: 'imageHero', // Same tag must be used in both screens
            child: Image.network(
              'https://picsum.photos/250/150',
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

// Detail Screen Widget
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Center(
        child: Hero(
          tag: 'imageHero', // Must match the tag in the first screen
          child: Image.network(
            'https://picsum.photos/250/150',
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Hero with custom flight animation
Hero(
  tag: 'customHero',
  flightShuttleBuilder: (
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    return RotationTransition(
      turns: animation.drive(
        Tween<double>(begin: 0, end: 1).chain(CurveTween(curve: Curves.easeInOut)),
      ),
      child: fromHeroContext.widget,
    );
  },
  child: Icon(
    Icons.star,
    size: 50,
    color: Colors.amber,
  ),
)

// Hero with placeholder
Hero(
  tag: 'profileHero',
  placeholderBuilder: (BuildContext context, Size heroSize, Widget child) {
    return Container(
      width: heroSize.width,
      height: heroSize.height,
      color: Colors.grey[300],
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  },
  child: CircleAvatar(
    radius: 40,
    backgroundImage: NetworkImage('https://picsum.photos/200/200'),
  ),
)

// Hero with Card as a child
GestureDetector(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => ProductDetailPage(product: product),
    ));
  },
  child: Hero(
    tag: 'product-\${product.id}',
    child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.network(
            product.imageUrl,
            height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              product.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
  ),
)

// Multiple Heroes in a GridView
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 1.0,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),
  itemCount: photos.length,
  itemBuilder: (context, index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PhotoDetailScreen(
              photo: photos[index],
              heroTag: 'photo-\${photos[index].id}',
            ),
          ),
        );
      },
      child: Hero(
        tag: 'photo-\${photos[index].id}',
        child: Image.network(
          photos[index].thumbnailUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  },
)
''';
