import 'package:flutter/material.dart';

enum GradientButtonColor {
  primary,
  secondary,
  success,
  danger,
  waiting,
  info,
  light,
  dark,
}

class GradientButton extends StatelessWidget {
  final String label;
  final GradientButtonColor color;

  const GradientButton({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: _colors().first,
          shadowColor: _colors().first,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: () {},
        child: Container(
          constraints: BoxConstraints(maxHeight: 42, maxWidth: 150),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: _colors(),
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              label,
              style: TextStyle(
                color: color != GradientButtonColor.light
                    ? Colors.white
                    : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Color> _colors() {
    switch (color) {
      case GradientButtonColor.secondary:
        return [
          Color.fromRGBO(229, 232, 237, 1),
          Color.fromRGBO(136, 142, 150, 1),
        ];
      case GradientButtonColor.success:
        return [
          Color.fromRGBO(150, 214, 209, 1),
          Color.fromRGBO(92, 201, 175, 1),
        ];
      case GradientButtonColor.danger:
        return [
          Color.fromRGBO(246, 191, 156, 1),
          Color.fromRGBO(236, 120, 150, 1),
        ];
      case GradientButtonColor.waiting:
        return [
          Color.fromRGBO(245, 233, 165, 1),
          Color.fromRGBO(249, 223, 110, 1),
        ];
      case GradientButtonColor.info:
        return [
          Color.fromRGBO(154, 197, 244, 1),
          Color.fromRGBO(56, 124, 217, 1),
        ];
      case GradientButtonColor.light:
        return [
          Color.fromRGBO(238, 237, 240, 1),
          Color.fromRGBO(229, 229, 233, 1),
        ];
      case GradientButtonColor.dark:
        return [
          Color.fromRGBO(97, 111, 132, 1),
          Color.fromRGBO(67, 77, 92, 1),
        ];
      case GradientButtonColor.primary:
        return [
          Color.fromRGBO(206, 142, 249, 1),
          Color.fromRGBO(145, 88, 247, 1),
        ];
    }
  }
}
