import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mini_cart_app/models/cart.dart';
import 'package:mini_cart_app/models/product.dart';
import 'package:mini_cart_app/widgets/cart_summary.dart';

void main() {
  testWidgets('CartSummary shows total price', (tester) async {
    final cart = Cart();
    cart.addProduct(Product(id: '1', name: 'Apple', price: 2.5));

    await tester.pumpWidget(MaterialApp(home: CartSummary(cart: cart)));

    expect(find.textContaining('Total:'), findsOneWidget);
    expect(find.textContaining('2.5'), findsOneWidget);
  });
}
