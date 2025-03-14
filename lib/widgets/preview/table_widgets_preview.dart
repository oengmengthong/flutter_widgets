import 'package:flutter/material.dart';

class TablePreview extends StatelessWidget {
  const TablePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        border: TableBorder.all(color: Colors.grey),
        children: const [
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Header 1'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Header 2'),
              ),
            ],
          ),
          TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Cell 1'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Cell 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DataTablePreview extends StatelessWidget {
  const DataTablePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Age')),
          DataColumn(label: Text('Role')),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text('John')),
            DataCell(Text('28')),
            DataCell(Text('Developer')),
          ]),
          DataRow(cells: [
            DataCell(Text('Sara')),
            DataCell(Text('32')),
            DataCell(Text('Designer')),
          ]),
        ],
      ),
    );
  }
}

class PaginatedDataTablePreview extends StatelessWidget {
  const PaginatedDataTablePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PaginatedDataTable(
        header: const Text('Employees'),
        rowsPerPage: 2,
        columns: const [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Department')),
        ],
        source: _DataSource(),
      ),
    );
  }
}

class _DataSource extends DataTableSource {
  final List<Map<String, dynamic>> _data = [
    {'name': 'John', 'department': 'Engineering'},
    {'name': 'Jane', 'department': 'Marketing'},
    {'name': 'Bob', 'department': 'Finance'},
    {'name': 'Alice', 'department': 'HR'},
  ];

  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['name'])),
      DataCell(Text(_data[index]['department'])),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
