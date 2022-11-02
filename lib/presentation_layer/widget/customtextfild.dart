import 'package:dashboard/presentation_layer/resource/mangecolor.dart';
import 'package:flutter/material.dart';

class Textfeild extends StatelessWidget {
  final double width;
  final String? titel, initialValue;
  final bool? obsecuer;
  final IconData? icon;
  final void Function()? iconontap;
  final void Function(String?)? onsaved;
  final String? Function(String?)? valid;
  const Textfeild({
    super.key,
    this.iconontap,
    this.obsecuer,
    this.icon,
    this.initialValue,
    required this.valid,
    required this.onsaved,
    required this.width,
    required this.titel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        initialValue: initialValue,
        style: const TextStyle(
          color: MangerColor.bgColor,
        ),
        textInputAction: TextInputAction.go,
        obscureText: obsecuer == null ? false : obsecuer!,
        onSaved: onsaved,
        validator: valid,
        decoration: InputDecoration(
          suffixIcon: icon != null
              ? IconButton(
                  onPressed: iconontap,
                  icon: Icon(icon),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: MangerColor.isFavoroteOOff,
          hintText: titel,
        ),
      ),
    );
  }
}
