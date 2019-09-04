import 'package:flutter/material.dart';

class ContainerRounded extends StatelessWidget {
  ContainerRounded({this.full = false, this.child});

  final bool full;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(80.0),
              topRight: full ? Radius.circular(80.0) : Radius.zero,
            ),
          ),
          child: child),
    );
  }
}
