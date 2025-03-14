const String tableCode = '''
Table(
  border: TableBorder.all(),
  columnWidths: const <int, TableColumnWidth>{
    0: FlexColumnWidth(),
    1: FlexColumnWidth(),
  },
  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
  children: <TableRow>[
    TableRow(
      children: <Widget>[
        TableCell(
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey.shade200,
            child: Text('Header 1'),
          ),
        ),
        TableCell(
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey.shade200,
            child: Text('Header 2'),
          ),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        TableCell(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Row 1, Cell 1'),
          ),
        ),
        TableCell(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Row 1, Cell 2'),
          ),
        ),
      ],
    ),
    TableRow(
      children: <Widget>[
        TableCell(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Row 2, Cell 1'),
          ),
        ),
        TableCell(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Text('Row 2, Cell 2'),
          ),
        ),
      ],
    ),
  ],
)
''';

const String dataTableCode = '''
DataTable(
  columns: const <DataColumn>[
    DataColumn(
      label: Text(
        'Name',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    DataColumn(
      label: Text(
        'Age',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    DataColumn(
      label: Text(
        'Role',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  ],
  rows: const <DataRow>[
    DataRow(
      cells: <DataCell>[
        DataCell(Text('Sarah')),
        DataCell(Text('32')),
        DataCell(Text('Designer')),
      ],
    ),
    DataRow(
      cells: <DataCell>[
        DataCell(Text('John')),
        DataCell(Text('28')),
        DataCell(Text('Developer')),
      ],
    ),
    DataRow(
      cells: <DataCell>[
        DataCell(Text('Emily')),
        DataCell(Text('35')),
        DataCell(Text('Manager')),
      ],
    ),
  ],
)
''';

const String paginatedDataTableCode = '''
// You need to create a DataTableSource implementation first
class MyDataSource extends DataTableSource {
  final List<Map<String, dynamic>> _data = [
    {'name': 'John', 'age': 28, 'role': 'Developer'},
    {'name': 'Sarah', 'age': 32, 'role': 'Designer'},
    {'name': 'Emily', 'age': 35, 'role': 'Manager'},
    {'name': 'Michael', 'age': 40, 'role': 'CTO'},
    {'name': 'David', 'age': 25, 'role': 'Intern'},
    {'name': 'Jessica', 'age': 30, 'role': 'QA Engineer'},
  ];

  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['name'].toString())),
      DataCell(Text(_data[index]['age'].toString())),
      DataCell(Text(_data[index]['role'].toString())),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}

// Then use it with PaginatedDataTable
PaginatedDataTable(
  header: const Text('Employees'),
  rowsPerPage: 3,
  columns: const [
    DataColumn(label: Text('Name')),
    DataColumn(label: Text('Age')),
    DataColumn(label: Text('Role')),
  ],
  source: MyDataSource(),
)
''';
