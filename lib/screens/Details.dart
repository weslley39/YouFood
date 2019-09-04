import 'package:flutter/material.dart';
import 'package:you_food/components/ContainerRounded.dart';
import 'package:you_food/components/Header.dart';
import 'package:you_food/models/Recipe.dart';

class DetailsScreen extends StatelessWidget {
  static String id = 'DetailsScreen';

  @override
  Widget build(BuildContext context) {
    final Recipe recipe = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xff6B8BF4),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Header(title: 'Details'),
            ),
            ContainerRounded(
              full: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset(
                    recipe.image,
                    width: 200.0,
                    height: 200.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
