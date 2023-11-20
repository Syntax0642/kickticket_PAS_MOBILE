import 'package:flutter/material.dart';
import 'package:kickticket/homepage_design/homapage_model.dart';
import 'package:kickticket/homepage_design/homepage_widget.dart';
class ProductWidget extends StatelessWidget {
  final List<ModelProduct> products;

  ProductWidget({required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductTile(product: products[index]);
        },
      ),
    );
  }
}
