import 'package:flutter/material.dart';
import 'package:lllllllllll/screens/user_products_screen.dart';
import '/provider/order.dart';
import '/screens/order_screen.dart';

import '/screens/cart_screen.dart';
import '/provider/cart.dart';
import '/product_detail_screen.dart';
import '/screens/products_overview_screen.dart';
import './provider/products_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
        ),
        ChangeNotifierProvider(create: (context) => Orders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          colorScheme: ColorScheme.fromSwatch(accentColor: Colors.deepOrange),
          fontFamily: 'Lato',
          appBarTheme: AppBarTheme(color: Theme.of(context).primaryColor)
        ),
        home: const ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) =>  const ProductDetailScreen(),
          CartScreen.routeName: (context) => const CartScreen(),
          OrderScreen.routeName:(context) => const OrderScreen(),
          UserProductsScreen.routeName:(context) => const UserProductsScreen()

        },
      ),
    );
  }
}
