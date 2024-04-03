import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.blue,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back Ginger',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DashboardItem(title: 'Lots', value: '2,235'),
                      DashboardItem(title: 'Transaction', value: '1,254'),
                      DashboardItem(title: 'Approved Lots', value: '1,154'),
                      DashboardItem(title: 'Stock', value: '954'),
                      DashboardItem(title: 'Approved Transaction', value: '954'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lots List',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  DataTable(
                    columns: const [
                      DataColumn(label: Text('System Lot No.')),
                      DataColumn(label: Text('Ginner Name')),
                      DataColumn(label: Text('Location')),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('783987370')),
                        DataCell(Text('Ginnerasting')),
                        DataCell(Text('Sunypet')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('785937870')),
                        DataCell(Text('Ginnerasting')),
                        DataCell(Text('Sunypet')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('785937870')),
                        DataCell(Text('Ginnerasting')),
                        DataCell(Text('Sunypet')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('785937870')),
                        DataCell(Text('Ginnerasting')),
                        DataCell(Text('Sunypet')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('785937870')),
                        DataCell(Text('Ginnerasting')),
                        DataCell(Text('Sunypet')),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class DashboardItem extends StatelessWidget {
  final String title;
  final String value;

  const DashboardItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}