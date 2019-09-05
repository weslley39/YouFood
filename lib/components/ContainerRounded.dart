import 'package:flutter/material.dart';

class ContainerRounded extends StatelessWidget {
  ContainerRounded({
    this.full = false,
    this.child,
    this.padding,
    this.margin,
  });

  final bool full;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80.0),
            topRight: full ? Radius.circular(80.0) : Radius.zero,
          ),
        ),
        child: child);
  }
}
