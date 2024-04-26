import 'package:bmi_calculator/constants/constant.dart';
import 'package:flutter/material.dart';

class BottomButtonWidget extends StatefulWidget {
  const BottomButtonWidget({super.key});

  @override
  State<BottomButtonWidget> createState() => _BottomButtonWidget();
}

class _BottomButtonWidget extends State<BottomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kBottomContainerHeight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        color: kBottomContainerColor,
      ),
    );
  }
}
