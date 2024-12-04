import 'package:flutter/material.dart';
import 'package:shoping/models/category_model.dart';

class CategoryTapViwe extends StatelessWidget {
  const CategoryTapViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Category = dummyCategory[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: InkWell(
            onTap: () {},
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Category.bgcolor),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Column(
                  children: [
                    Text(
                      Category.name,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Category.textcolor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${Category.productsCount}Products',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Category.textcolor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: dummyCategory.length,
    );
  }
}
