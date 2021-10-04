import 'package:flutter/material.dart';
class AddButton extends StatelessWidget {
  const AddButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(
        color: Color(0xFF0c78ff),
        borderRadius: BorderRadius.all(
            Radius.circular(15)),
      ),
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}