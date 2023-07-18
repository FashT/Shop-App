import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import '../widgets/cart_iteeeem.dart';
import '../provider/cart.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/ cart';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('You Cart'),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  Chip(
                    label: Text(
                      '\$${cart.totalAmount}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Theme.of(context).primaryColor,
                    ),
                    child: const Text(
                      'Order Now',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        //   Expanded(
        //     child: ListView.builder(
        //       itemCount: cart.itemCount,
        //       itemBuilder: (buildContext, index) => CartIteeeem(
        //         id: cart.items.values.toList()[index].id,
        //         price: cart.items.values.toList()[index].price,
        //         quantity: cart.items.values.toList()[index].quantity,
        //         title: cart.items.values.toList()[index].title,
        //       ),
        //     ),
        //   ),
        ],
      ),
    );
  }
}
