import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:you_food/providers/CartProvider.dart';
import 'package:you_food/screens/Details.dart';
import 'package:you_food/screens/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => CartProvider(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Montserrat'),
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          DetailsScreen.id: (context) => DetailsScreen(),
        },
      ),
    );
  }
}
