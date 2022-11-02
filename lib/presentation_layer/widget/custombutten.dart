import 'package:flutter/material.dart';

// ignore: camel_case_types
class Buttenwidget extends StatelessWidget {
  const Buttenwidget(
      {super.key,
      required this.width,
      required this.haigh,
      required this.color,
      required this.text,
      required this.press});

  final Color color;
  final String text;
  final double width, haigh;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.all(7),
      width: width,
      height: haigh,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: press,
        child: Text(
          text.toString(),
          style: textstyel.headline5!.copyWith(color: Colors.grey[100]),
        ),
      ),
    );
  }
}
