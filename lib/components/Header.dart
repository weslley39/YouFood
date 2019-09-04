import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({this.title});

  final String title;

  List<Widget> renderTitle() {
    return [
      Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      Icon(Icons.more_horiz, color: Colors.white),
    ];
  }

  List<Widget> renderButtons() {
    return [
      SizedBox(width: 1.0),
      SizedBox(width: 1.0),
      Icon(Icons.filter_list, color: Colors.white),
      Icon(Icons.fullscreen, color: Colors.white),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.chevron_left),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        if (title != null) ...renderTitle(),
        if (title == null) ...renderButtons(),
      ],
    );
  }
}
