import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '/provider/order.dart';

class OrderIteem extends StatelessWidget {
  final OrderItem order;
  const OrderIteem({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              '\$${order.amount}',
            ),
            subtitle: Text(
              DateFormat('dd-MM-yy-hh:mm').format(order.dateTime),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.expand_more),
            ),
          ),
        ],
      ),
    );
  }
}
