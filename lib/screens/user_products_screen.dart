import 'package:flutter/material.dart';
import '/widgets/drawer.dart';
import '/widgets/user_products_item.dart';
import '/provider/products_provider.dart';
import 'package:provider/provider.dart';

class UserProductsScreen extends StatelessWidget {
  const UserProductsScreen({super.key});
  static const routeName = '/userProducts';
  @override
  Widget build(BuildContext context) {
    final produtsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      drawer:const DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
            itemCount: produtsData.items.length,
            itemBuilder: (buildContext, index) => Column(
                  children: [
                    UserProductItem(
                        title: produtsData.items[index].title,
                        imageUrl: produtsData.items[index].imageUrl),
                     const   Divider()
                  ],
                )),
      ),
    );
  }
}
