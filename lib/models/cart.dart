import 'product.dart';
import '../logger.dart';

class Cart {
  final List<Product> _items = [];

  List<Product> get items => List.unmodifiable(_items);

  void addProduct(Product product) {
    _items.add(product);
    logInfo('Added ${product.name} to cart');
  }

  void removeProduct(Product product) {
    _items.remove(product);
    logInfo('Removed ${product.name} from cart');
  }

  double get totalPrice =>
      _items.fold(0, (sum, product) => sum + product.price);
}
