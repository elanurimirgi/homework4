import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final int? selectedProductIndex;
  final Function(int) onProductSelected;

  HorizontalListView({
    required this.products,
    required this.selectedProductIndex,
    required this.onProductSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onProductSelected(index),
            child: Container(
              width: 100,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: selectedProductIndex == index
                    ? Colors.blue.shade300
                    : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  products[index]['name'],
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
