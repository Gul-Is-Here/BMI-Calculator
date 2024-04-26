import 'package:bmi_calculator/constants/constant.dart';
import 'package:flutter/material.dart';

class BottomButtonWidget extends StatefulWidget {
  const BottomButtonWidget(
      {super.key, required this.onTap, required this.title});
  final void Function() onTap;
  final String title;

  @override
  State<BottomButtonWidget> createState() => _BottomButtonWidget();
}

class _BottomButtonWidget extends State<BottomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: kBottomContainerColor,
        ),
        child: Text(
          widget.title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
