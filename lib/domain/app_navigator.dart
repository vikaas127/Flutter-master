import 'package:flutter/material.dart';

/// A model which globally provides [NavigatorState]'s functionality.
///
/// Even if a page is inside of nesting navigators, you can go outside
/// of the nesting navigator to use outside [NavigatorState] by [AppNavigator].
///
/// # Usage
///
/// ```dart
/// final appNavigator = Provider.of<AppNavigator>(context, listen:false);
/// appNavigator.push(SamplePage.routeName);
/// ```
class AppNavigator {
  AppNavigator({
    @required this.navigatorKey,
  });

  final GlobalKey<NavigatorState> navigatorKey;

  /// [Navigator] which is held by [AppNavigator]
  NavigatorState get _navigator => navigatorKey.currentState;

  /// Pushes page by [routeName].
  ///
  /// This is same as [Navigator.pushNamed].
  void push(String routeName, {Object arguments}) =>
      _navigator.pushNamed(routeName, arguments: arguments);

  /// Pushes page by [routeName] and remove all pages.
  ///
  /// This is same as [Navigator.pushNamedAndRemoveUntil].
  void pushAndRemoveAllPage(String routeName, {Object arguments}) =>
      _navigator.pushNamedAndRemoveUntil(
        routeName,
        (route) => false,
        arguments: arguments,
      );

  /// Replaces current page and Pushes page by [routeName].
  ///
  /// This is same as [Navigator.pushReplacementNamed].
  void pushReplacement(String routeName, {Object arguments}) =>
      _navigator.pushReplacementNamed(routeName, arguments: arguments);

  /// Pops page if it can pop.
  ///
  /// This is same as [Navigator.maybePop].
  void pop() => _navigator.maybePop();
}
