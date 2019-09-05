import 'package:flutter/material.dart';
import 'package:you_food/components/ContainerRounded.dart';
import 'package:you_food/components/Header.dart';
import 'package:you_food/components/NutritionFact.dart';
import 'package:you_food/components/QuantitySelector.dart';
import 'package:you_food/components/VerticalSeparator.dart';
import 'package:you_food/constants/Colors.dart';
import 'package:you_food/constants/MeasurementType.dart';
import 'package:you_food/constants/NutritionFact.dart';
import 'package:you_food/models/Recipe.dart';

class DetailsScreen extends StatelessWidget {
  static String id = 'DetailsScreen';

  @override
  Widget build(BuildContext context) {
    final Recipe recipe = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Header(title: 'Detalhes'),
            ),
            ContainerRounded(
              margin: EdgeInsets.only(top: 120.0),
              padding: EdgeInsets.only(top: 130.0),
              full: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(recipe.name.split(' ').first,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0)),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(recipe.name.split(' ').last,
                                style: TextStyle(fontSize: 30.0))
                          ],
                        ),
                        SizedBox(height: 30.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('\$${recipe.price.toStringAsFixed(2)}',
                                style: TextStyle(fontSize: 25.0)),
                            VerticalSeparator(),
                            QuantitySelector(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 210.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        top: 20.0,
                        bottom: 20.0,
                        left: 20.0,
                        right: 10.0,
                      ),
                      children: <Widget>[
                        NutritionFact(
                          isActive: true,
                          type: NutritionFactType.WEIGHT,
                          value: recipe.weight.toStringAsFixed(0),
                          measurement: MeasurementType.GRAMS,
                        ),
                        NutritionFact(
                          type: NutritionFactType.CALORIES,
                          value: recipe.calories.toStringAsFixed(0),
                          measurement: MeasurementType.CALORIES,
                        ),
                        NutritionFact(
                          type: NutritionFactType.VITAMINS,
                          value: recipe.vitamins.reduce(
                              (value, element) => value + ',' + element),
                          measurement: MeasurementType.VITAMINS,
                        ),
                        NutritionFact(
                          type: NutritionFactType.PROTEIN,
                          value: recipe.protein.toStringAsFixed(0),
                          measurement: MeasurementType.GRAMS,
                        ),
                        NutritionFact(
                          type: NutritionFactType.SODIUM,
                          value: recipe.sodium.toStringAsFixed(0),
                          measurement: MeasurementType.MILIGRAMS,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    height: 50.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '\$${recipe.price}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 80.0,
              left: (MediaQuery.of(context).size.width / 2) - 76.0,
              child: Hero(
                tag: recipe.image,
                child: Image.asset(
                  recipe.image,
                  width: 160.0,
                  height: 160.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
