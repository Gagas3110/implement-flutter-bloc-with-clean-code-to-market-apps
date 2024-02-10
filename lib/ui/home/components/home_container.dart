import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
    required this.widget,
    required this.title,
  });
  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.5,
            color: Colors.grey.shade300,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(title),
            ),
            Container(
              //height: 220,
              child: widget,
            ),
          ],
        ));
  }
}
