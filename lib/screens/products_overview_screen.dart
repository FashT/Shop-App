import 'package:flutter/material.dart';
import '/widgets/badge.dart';
import 'package:provider/provider.dart';
import '../provider/cart.dart';

import '../widgets/products_grid.dart';

enum FilterOptions {
  favourite,
  all,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({super.key});

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showOnlyFavourites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) => {
              setState(
                () {
                  if (selectedValue == FilterOptions.favourite) {
                    _showOnlyFavourites = true;
                  } else {
                    _showOnlyFavourites = false;
                  }
                },
              ),
            },
            itemBuilder: (ctx) {
              return [
                const PopupMenuItem(
                  value: FilterOptions.favourite,
                  child: Text('Only Favourite'),
                ),
                const PopupMenuItem(
                  value: FilterOptions.all,
                  child: Text('Show All'),
                ),
              ];
            },
            icon: Icon(Icons.more_vert),
          ),
          Consumer<Cart>(
            builder: (context, cart, chi) => BadgeFile(
                value: cart.itemCount.toString(),
                //child: chi,
                color: Theme.of(context).colorScheme.secondary,
                ),
                child:  IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),iconSize: 8,alignment: Alignment.bottomRight, 
                ),
          )
        ],
      ),
    );
  }
}