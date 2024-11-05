import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final int? selectedProductIndex;

  ProductGridView({
    required this.products,
    required this.selectedProductIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: selectedProductIndex == index ? Colors.grey : Colors.white,
            border: Border.all(
              color: selectedProductIndex == index ? Colors.pink : Colors.black12,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                products[index]['name'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${products[index]['price']}₺',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
