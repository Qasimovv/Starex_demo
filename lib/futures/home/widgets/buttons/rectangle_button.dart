import 'package:flutter/material.dart';
class RectangleButton extends StatelessWidget {
  const RectangleButton(
      {Key key, @required this.textColor, this.backgroundColor, this.title})
      : super(key: key);

  final Color textColor;
  final Color backgroundColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 130,
      decoration: BoxDecoration(
        //border: Border.all(),
        color: backgroundColor,

        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(color: textColor, fontSize: 20),
        ),
      ),
    );
  }
}
