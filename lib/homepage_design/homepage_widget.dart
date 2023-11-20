import 'package:flutter/material.dart';
import 'package:kickticket/homepage_design/homapage_model.dart';

class ProductTile extends StatelessWidget {
  final ModelProduct product;

  ProductTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product.imageURL,
            width: 115,
            height: 115,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(product.iconData),
              SizedBox(width: 5),
              Text(
                product.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Text(
            product.date,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
