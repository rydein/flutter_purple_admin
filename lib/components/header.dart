import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Row(
        children: [
          SvgPicture.asset(
            'asset/images/logo.svg',
            width: 50,
            height: 50,
          )
        ],
      ),
    );
  }
}
