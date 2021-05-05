import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_purple_admin/components/content_body.dart';
import 'package:flutter_purple_admin/components/header.dart';
import 'package:flutter_purple_admin/components/side_bar.dart';

class Application extends StatelessWidget {
  final String contentTitle;
  final Widget content;
  Application({
    required this.contentTitle,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SideBar(),
                  ContentBody(),
                ],
              ),
            ),
          )
        ],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SideBar(),
            ContentBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 70,
            child: Row(
              children: [
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 44),
              color: Color.fromRGBO(242, 237, 243, 1),
            ),
          )
        ],
      ),
    );
  }
}
