import 'package:flutter/material.dart';
import 'package:trial/models/models.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  const CartProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            product.imageUrl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Text(product.name, style: Theme.of(context).textTheme.headline5),
              Text('Tsh${product.price}',
                  style: Theme.of(context).textTheme.headline6),
            ],
          ),
          SizedBox(width: 10),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
              Text('1', style: Theme.of(context).textTheme.headline5),
              IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
            ],
          ),
        ],
      ),
    );
  }
}
