import 'package:flutter/material.dart';
import 'package:you_food/constants/Colors.dart';

class NutritionFact extends StatelessWidget {
  NutritionFact({
    this.type,
    this.value,
    this.measurement,
    this.isActive = false,
  });

  final bool isActive;
  final String type;
  final String value;
  final String measurement;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: isActive ? kSecondaryColor : Colors.white,
        border: Border.all(
          width: 1.0,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            type,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black45,
              fontWeight: FontWeight.w500,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                value,
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 2.0),
              Text(
                measurement,
                style: TextStyle(color: isActive ? Colors.white : Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
