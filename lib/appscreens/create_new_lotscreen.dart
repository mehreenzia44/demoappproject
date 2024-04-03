import 'package:flutter/material.dart';
class CreateNewLotScreen extends StatelessWidget {
  const CreateNewLotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Lot'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'System Lot No.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter System Lot No.',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Ginner Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Ginner Name',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Lot Creation Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Select Lot Creation Date',
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Ginner Lot No',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Ginner Lot No',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Weight of Lot (kg)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Weight of Lot',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Number of Bales',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Number of Bales',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Variety/Types',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Variety/Types',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Crop Season',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Crop Season',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Location/Unit',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Location/Unit',
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Press Running No',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Press Running No',
              ),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Handle create lot action
              },
              child: const Text('CREATE LOT'),
            ),
          ],
        ),
      ),
    );
  }
}