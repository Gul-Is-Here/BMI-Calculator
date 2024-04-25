import 'package:flutter/material.dart';

class BottomContainerWidget extends StatelessWidget {
  const BottomContainerWidget({super.key,required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
