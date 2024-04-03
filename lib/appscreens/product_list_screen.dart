import 'package:flutter/material.dart';
class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.blue,
              child: const Text(
                'Product List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Category')),
                  DataColumn(label: Text('Product Name')),
                  DataColumn(label: Text('Actions')),
                ],
                rows: List.generate(
                  10,
                      (index) => DataRow(cells: [
                    const DataCell(Text('Fibre/Unit Cotton')),
                    const DataCell(Text('Soft Cotton')),
                    DataCell(Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            // Handle edit action
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            // Handle delete action
                          },
                        ),
                      ],
                    )),
                  ]),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.chevron_left),
                  onPressed: () {
                    // Handle previous page action
                  },
                ),
                const Text('1'),
                const Text('2'),
                const Text('3'),
                const Text('4'),
                const Text('...'),
                const Text('10'),
                IconButton(
                  icon: const Icon(Icons.chevron_right),
                  onPressed: () {
                    // Handle next page action
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle add product action
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
