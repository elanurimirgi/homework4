import 'package:flutter/material.dart';
import 'AppBar.dart';
import 'HorizontalListView.dart';
import 'ProductGridView.dart';
import 'Products.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? selectedProductIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          HorizontalListView(
            products: products,
            selectedProductIndex: selectedProductIndex,
            onProductSelected: (index) {
              setState(() {
                selectedProductIndex = index;
              });
            },
          ),
          SizedBox(height: 20),
          Expanded(
            child: ProductGridView(
              products: products,
              selectedProductIndex: selectedProductIndex,
            ),
          ),
        ],
      ),
    );
  }
}
