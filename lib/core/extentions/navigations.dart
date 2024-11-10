import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  // Push to a new screen
  Future<T?> push<T>(Widget page) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Push and replace the current screen
  Future<T?> pushReplacement<T, TO>(Widget page) {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Push and remove all previous screens until a specified route
  Future<T?> pushAndRemoveUntil<T>(Widget page, RoutePredicate predicate) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      predicate,
    );
  }

  // Go back to the previous screen
  void pop<T>([T? result]) {
    Navigator.pop(this, result);
  }

  // Pop until a specific route
  void popUntil(RoutePredicate predicate) {
    Navigator.popUntil(this, predicate);
  }
}
