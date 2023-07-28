import 'package:flutter/material.dart';
import '/provider/cart.dart';
import '/provider/product.dart';
import 'package:provider/provider.dart';
import '/product_detail_screen.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({super.key});

  // final String id;
  // final String title;
  // final String imageUrl;

  // const ProductItems(
  //     {required this.id, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: Consumer<Product>(
            builder: (context, product, _) => IconButton(
              onPressed: () {
                product.toggleFavouriteStaus();
              },
              icon: Icon(
                product.isFavourite ? Icons.favorite : Icons.favorite_border,
              ),
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          title: Text(product.title, textAlign: TextAlign.center),
          trailing: IconButton(
            onPressed: () {
              cart.addItem(product.id, product.price, product.title);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('carts added'),action: SnackBarAction(label: 'Undo', onPressed: (){}),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                arguments: product.id);
          },
          child: Image.network(product.imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
