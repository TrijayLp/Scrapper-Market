import 'package:flutter/material.dart';
import 'package:trial/models/models.dart';
import 'package:trial/screens/cart/cart_screen.dart';
import 'package:trial/screens/catalog/catalog_screen.dart';
import 'package:trial/screens/home/home_screen.dart';
import 'package:trial/screens/product/product_screen.dart';
import 'package:trial/screens/screens.dart';
import 'package:trial/widgets/widgets.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case '/cart':
        return CartScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case '/catalog':
        return CatalogScreen.route(category: settings.arguments as Category);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case '/product':
        return ProductScreen.route(product: settings.arguments as Product);
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case '/wishlist':
        return WishlistScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case '/signup':
        return SignupScreen.route();
      case SignupScreen.routeName:
        return SignupScreen.route();
      case '/signin':
        return SigninScreen.route();
      case SigninScreen.routeName:
        return SigninScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: CustomAppBar(title: 'Error'),
              bottomNavigationBar: customNavBar(),
            ));
  }
}
