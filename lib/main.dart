import 'package:flutter/material.dart';
import 'models/cart.dart';
import 'models/product.dart';
import 'widgets/product_item.dart';
import 'widgets/cart_summary.dart';

void main() {
  runApp(const MiniCartApp());
}

class MiniCartApp extends StatefulWidget {
  const MiniCartApp({super.key});

  @override
  State<MiniCartApp> createState() => _MiniCartAppState();
}

class _MiniCartAppState extends State<MiniCartApp> {
  final cart = Cart();

  final products = [
    Product(id: '1', name: 'Apples', price: 2.5),
    Product(id: '2', name: 'Bananas', price: 1.8),
    Product(id: '3', name: 'Oranges', price: 3.0),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Cart App',
      home: Scaffold(
        appBar: AppBar(title: const Text('MiniCart 🛍️')),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductItem(
                  product: products[index],
                  onAdd: () {
                    setState(() => cart.addProduct(products[index]));
                  },
                ),
              ),
            ),
            CartSummary(cart: cart),
          ],
        ),
      ),
    );
  }
}
