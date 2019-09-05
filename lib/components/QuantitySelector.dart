import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:you_food/constants/Colors.dart';

class QuantitySelector extends StatefulWidget {
  QuantitySelector({this.onChange});

  final Function onChange;

  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kSecondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.remove, color: Colors.white),
            onPressed: () {
              setState(() {
                quantity = quantity - 1;
                widget.onChange(quantity);
              });
            },
          ),
          Text(
            quantity.toString(),
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          IconButton(
            color: Colors.white,
            icon: Icon(FontAwesome.getIconData('plus-square')),
            onPressed: () {
              setState(() {
                quantity = quantity + 1;
                widget.onChange(quantity);
              });
            },
          )
        ],
      ),
    );
  }
}
