const String dismissibleCode = '''
// Basic Dismissible in a ListView
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return Dismissible(
      // Key must be unique for each item
      key: Key(items[index]),
      
      // Background shown when swiping from start to end (left to right)
      background: Container(
        color: Colors.green,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16.0),
        child: Icon(Icons.check, color: Colors.white),
      ),
      
      // Background shown when swiping from end to start (right to left)
      secondaryBackground: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 16.0),
        child: Icon(Icons.delete, color: Colors.white),
      ),
      
      // Called when item is dismissed
      onDismissed: (direction) {
        // Remove item from data
        setState(() {
          items.removeAt(index);
        });
        
        // Show a snackbar with different messages based on direction
        if (direction == DismissDirection.startToEnd) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Item completed')),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Item deleted')),
          );
        }
      },
      
      // Optional: Confirm dismissal to prevent accidental swipes
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.endToStart) {
          return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Confirm'),
              content: Text('Are you sure you want to delete this item?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: Text('Delete'),
                ),
              ],
            ),
          );
        }
        return true; // Allow dismissal for other directions
      },
      
      // Optional: Limit dismissal to specific directions
      direction: DismissDirection.horizontal, // Both left and right
      // Other options: startToEnd, endToStart, up, down, vertical, none
      
      // The child widget to display
      child: ListTile(
        title: Text(items[index]),
        leading: Icon(Icons.drag_handle),
      ),
    );
  },
)
''';
