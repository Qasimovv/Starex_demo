import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key key, this.name, this.icon,}) : super(key: key);
  final String name;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xFFcee6ff),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
           icon.icon,
            size: 40,
            color: Color(0xFF0c78ff),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 14, color: Color(0xFF0c78ff)),
          )
        ],
      ),
    );
  }
}
