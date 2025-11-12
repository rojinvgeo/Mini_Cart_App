import 'package:flutter_test/flutter_test.dart';
import 'package:mini_cart_app/models/cart.dart';
import 'package:mini_cart_app/models/product.dart';

void main() {
  test('Cart total should update correctly', () {
    final cart = Cart();
    final product = Product(id: '1', name: 'Apple', price: 2.0);

    cart.addProduct(product);
    expect(cart.totalPrice, 2.0);

    cart.addProduct(Product(id: '2', name: 'Banana', price: 3.0));
    expect(cart.totalPrice, 5.0);
  });
}
