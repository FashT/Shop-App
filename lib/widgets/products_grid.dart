import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/products_provider.dart';
import '/widgets/product_items.dart';

class ProductsGrid extends StatelessWidget {
final bool showFavs ;

   const ProductsGrid(this.showFavs, {super.key});


  @override
  Widget build(BuildContext context) {
   final productsData = Provider.of<Products>(context);
   final products = showFavs? productsData.favouriteItems: productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        // create: (context) {
        //   products[index];
        // },
        value: products[index],
        child: const ProductItems(
            // id: products[index].id,
            // imageUrl: products[index].imageUrl,
            // title: products[index].title),
      ),
    ),);
  }
}
