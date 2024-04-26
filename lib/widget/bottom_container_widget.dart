import 'package:bmi_calculator/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomContainerWidget extends StatelessWidget {
  const BottomContainerWidget(
      {super.key,
      required this.onTap2,
      required this.number,
      required this.pIcon,
      required this.onTap,
      required this.text,
      required this.rIcon});
  final IconData pIcon;
  final IconData rIcon;
  final void Function() onTap;
  final void Function() onTap2;
  final String text;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: kActiveCardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            Text(
              number.toString(),
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  elevation: 6.0,
                  mini: true,
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF4C4F5E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: onTap2,
                  child: Icon(
                    rIcon,
                    weight: 40.0,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                FloatingActionButton(
                  elevation: 6.0,
                  mini: true,
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF4C4F5E),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: onTap,
                  child: Icon(
                    pIcon,
                    weight: 40.0,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
