import 'package:flutter/material.dart';
import '/widgets/drawer.dart';
import '/widgets/order_iteeem.dart';
import 'package:provider/provider.dart';
import '../provider/order.dart';

class OrderScreen extends StatelessWidget {
static const routeName = '/orders';

  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer:const DrawerWidget(),
      body:  ListView.builder(
          itemCount: orderData.orders.length,
          itemBuilder: (buildContext, index) =>
              OrderIteem(order: orderData.orders[index]),
        ),
      );
  }
}
