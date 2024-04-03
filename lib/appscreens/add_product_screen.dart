import 'package:flutter/material.dart';
class AddProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Handle create product action
              },
              child: const Text('CREATE LOT'),
            ),
          ],
        ),
      ),
    );
  }
}
