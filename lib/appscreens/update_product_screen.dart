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
                columns: [
                  const DataColumn(label: Text('Category')),
                  const DataColumn(label: Text('Product Name')),
                  const DataColumn(label: Text('Actions')),
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
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Edit'),
                                  content: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        'Product Category',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      DropdownButtonFormField(
                                        items: ['Fibre/Unit Cotton', 'Other'].map((category) {
                                          return DropdownMenuItem(
                                            value: category,
                                            child: Text(category),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          // Handle category selection
                                        },
                                      ),
                                      const SizedBox(height: 10.0),
                                      const Text(
                                        'Product Name',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      const TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Enter Product Name',
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      const Text(
                                        'Full Product name',
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        'Product category + Product name here',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('CANCEL'),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Handle update product action
                                      },
                                      child: const Text('UPDATE PRODUCT'),
                                    ),
                                  ],
                                );
                              },
                            );
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
