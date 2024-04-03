import 'package:flutter/material.dart';
class CreateLotScreen extends StatelessWidget {
  const CreateLotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Lot'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lots Report',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  DataTable(
                    columns: [
                      const DataColumn(label: Text('System Lot No.')),
                      const DataColumn(label: Text('Ginner Name')),
                      const DataColumn(label: Text('Location')),
                      const DataColumn(label: Text('Actions')),
                    ],
                    rows: List.generate(
                      10,
                          (index) => DataRow(cells: [
                        const DataCell(Text('123456789')),
                        const DataCell(Text('Ginnerasting')),
                        const DataCell(Text('Sunypet')),
                        DataCell(IconButton(
                          icon: const Icon(Icons.visibility),
                          onPressed: () {
                            // Handle visibility action
                          },
                        )),
                      ]),
                    ),
                  ),
                ],
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
          // Handle add lot action
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}