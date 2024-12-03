import 'package:flutter/material.dart';
import 'package:shoping/models/product_item_model.dart';

class ProductItem extends StatelessWidget {
  final ProductItemModel productItem;
  const ProductItem({super.key, required this.productItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.grey.shade200),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    productItem.imgUrl,
                    fit: BoxFit.contain,
                  ),
                )),
            Positioned(
              top: 8.0,
              right: 8.0,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white54),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border)),
              ),
            )
          ],
        ),
        SizedBox(
          height: 25.0,
          child: Text(
            productItem.name,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          productItem.category,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: Colors.grey),
        ),
        Text(
          '\$${productItem.price}',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
