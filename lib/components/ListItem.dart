import 'package:flutter/material.dart';
import 'package:you_food/models/Recipe.dart';

class ListItem extends StatelessWidget {
  ListItem({@required this.recipe, this.onTap});

  final Recipe recipe;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.all(10.0),
      leading: Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Material(
          child: Hero(tag: recipe.image, child: Image.asset(recipe.image)),
          elevation: 10.0,
          shape: CircleBorder(),
          clipBehavior: Clip.antiAlias,
        ),
      ),
      title: Text(recipe.name),
      subtitle: Text('\$${recipe.price.toStringAsFixed(2)}'),
      trailing: Icon(Icons.add),
    );
  }
}
