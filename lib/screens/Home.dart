import 'package:flutter/material.dart';
import 'package:you_food/components/ContainerRounded.dart';
import 'package:you_food/components/Header.dart';
import 'package:you_food/components/ListItem.dart';
import 'package:you_food/models/Recipe.dart';
import 'package:you_food/screens/Details.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final recipes = <Recipe>[
    Recipe(
      name: 'Salmon Bowl',
      image: 'assets/plate1.png',
      price: 24.0,
    ),
    Recipe(
      name: 'Spring Bowl',
      image: 'assets/plate5.png',
      price: 22.0,
    ),
    Recipe(
      name: 'Avocado Bowl',
      image: 'assets/plate3.png',
      price: 26.0,
    ),
    Recipe(
      name: 'Berry Bowl',
      image: 'assets/plate4.png',
      price: 28.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2AB5B1),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Header(),
                  SizedBox(height: 40.0),
                  Row(
                    children: <Widget>[
                      Text(
                        'Healthy',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Text('Food',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            ContainerRounded(
              child: ListView.builder(
                padding: EdgeInsets.only(right: 25.0, left: 25.0, top: 50.0),
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  var recipe = recipes[index];
                  return ListItem(
                    recipe: recipe,
                    onTap: () {
                      Navigator.pushNamed(context, DetailsScreen.id,
                          arguments: recipe);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
