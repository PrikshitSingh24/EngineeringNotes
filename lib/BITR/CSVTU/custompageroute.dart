import 'package:flutter/material.dart';

class customPageRoute extends PageRouteBuilder{
  final Widget child;

  customPageRoute({
    required this.child,
}) : super(
    transitionDuration: Duration(milliseconds: 250),
    pageBuilder: (context,animation,secondaryAnimation) =>child,
  );

  @override
  Widget  buildTransitions(BuildContext context,Animation<double> animation,
      Animation<double> secondaryAnimation,Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
        begin: Offset(0,1),
          end:Offset.zero,
      ).animate(animation),
      child: child,
      );

}