import 'package:bmi_calculator/constants/constant.dart';
import 'package:flutter/material.dart';

class ResuableSilderWidget extends StatefulWidget {
  ResuableSilderWidget({super.key, required this.fHeight});
  int fHeight;
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
            const Text(
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
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
                const Text('cm')
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: const Color(0xFF8D8E98),
                activeTrackColor: Colors.white,
                thumbColor: const Color(0xFFEB1555),
                overlayColor: const Color(0x29EB1555),
                thumbShape: const RoundSliderThumbShape(elevation: 15.0),
                overlayShape:
                    const RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
              child: Slider(
                value: height.toDouble(),
                min: 120,
                max: 220,
                onChanged: (double newValue) {
                  setState(() {
                    height = newValue.round();
                  });
                   widget.fHeight= height;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
