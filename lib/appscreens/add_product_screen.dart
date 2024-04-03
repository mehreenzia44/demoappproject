import 'package:flutter/material.dart';
class AddProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
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
            SizedBox(height: 10.0),
            Text(
              'Product Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Product Name',
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Full Product name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Product category + Product name here',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Handle create product action
              },
              child: Text('CREATE LOT'),
            ),
          ],
        ),
      ),
    );
  }
}
