import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ResuableSilderWidget extends StatefulWidget {
  const ResuableSilderWidget({super.key});

  @override
  State<ResuableSilderWidget> createState() => _ResuableSilderWidgetState();
}

class _ResuableSilderWidgetState extends State<ResuableSilderWidget> {
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: kActiveCardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Height',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toString(),
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                Text('cm')
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                thumbColor: Color(0xFFEB1555),
                overlayColor: Color(0x29EB1555),
                thumbShape: RoundSliderThumbShape(elevation: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
              child: Slider(
                value: height.toDouble(),
                inactiveColor: const Color(0xFF8D8E98),
                min: 120,
                max: 220,
                onChanged: (double newValue) {
                  setState(() {
                    height = newValue.round();
                  });
                  print(newValue);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
