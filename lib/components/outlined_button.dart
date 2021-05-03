import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum PAOutlinedButtonColor {
  primary,
  secondary,
  success,
  danger,
  waiting,
  info,
  light,
  dark,
}

class PAOutlinedButton extends StatefulWidget {
  final String label;
  final PAOutlinedButtonColor color;

  const PAOutlinedButton({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  _PAOutlinedButtonState createState() => _PAOutlinedButtonState();
}

class _PAOutlinedButtonState extends State<PAOutlinedButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16),
      child: MouseRegion(
        onHover: (event) {
          if (isHover) return;
          setState(() {
            isHover = true;
          });
        },
        onExit: (event) {
          if (!isHover) return;
          setState(() {
            isHover = false;
          });
        },
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: !isHover ? null : _colors()[1],
            shadowColor: !isHover ? _colors().first : _colors()[1],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: BorderSide(width: 1, color: _colors()[1]),
          ),
          onPressed: () {},
          child: Container(
            constraints: BoxConstraints(maxHeight: 42, maxWidth: 150),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                widget.label,
                style: TextStyle(
                  color: _textColor(),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Color> _colors() {
    switch (widget.color) {
      case PAOutlinedButtonColor.secondary:
        return [
          Color.fromRGBO(229, 232, 237, 1),
          Color.fromRGBO(136, 142, 150, 1),
        ];
      case PAOutlinedButtonColor.success:
        return [
          Color.fromRGBO(150, 214, 209, 1),
          Color.fromRGBO(92, 201, 175, 1),
        ];
      case PAOutlinedButtonColor.danger:
        return [
          Color.fromRGBO(246, 191, 156, 1),
          Color.fromRGBO(236, 120, 150, 1),
        ];
      case PAOutlinedButtonColor.waiting:
        return [
          Color.fromRGBO(245, 233, 165, 1),
          Color.fromRGBO(249, 223, 110, 1),
        ];
      case PAOutlinedButtonColor.info:
        return [
          Color.fromRGBO(154, 197, 244, 1),
          Color.fromRGBO(56, 124, 217, 1),
        ];
      case PAOutlinedButtonColor.light:
        return [
          Color.fromRGBO(238, 237, 240, 1),
          Color.fromRGBO(229, 229, 233, 1),
        ];
      case PAOutlinedButtonColor.dark:
        return [
          Color.fromRGBO(97, 111, 132, 1),
          Color.fromRGBO(67, 77, 92, 1),
        ];
      case PAOutlinedButtonColor.primary:
        return [
          Color.fromRGBO(206, 142, 249, 1),
          Color.fromRGBO(145, 88, 247, 1),
        ];
    }
  }

  Color _textColor() {
    if (widget.color != PAOutlinedButtonColor.light &&
        widget.color != PAOutlinedButtonColor.dark) {
      if (isHover) {
        return Colors.black;
      }
      return _colors()[1];
    }
    if (widget.color == PAOutlinedButtonColor.dark) {
      if (isHover) {
        return Colors.white;
      }
      return Colors.black;
    }
    return Colors.black;
  }
}
