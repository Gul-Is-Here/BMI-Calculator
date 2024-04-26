import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/components/bottom_container_widget.dart';
import 'package:bmi_calculator/components/bottom_button_widget.dart';
import 'package:bmi_calculator/constants/constant.dart';
import 'package:bmi_calculator/components/container_widget.dart';
import 'package:bmi_calculator/components/resuableslider_widget.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 19;
  void increaseweight() {
    setState(() {
      weight = weight + 1;
    });
  }

  void reduceweight() {
    setState(() {
      weight = weight - 1;
    });
  }

  void increaseAge() {
    setState(() {
      age = age + 1;
    });
  }

  void reduceAge() {
    setState(() {
      age = age - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      text: 'Male',
                      icon: Icons.male,
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      text: 'Female',
                      icon: Icons.female,
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            ResuableSilderWidget(
              fHeight: height,
            ),
            Expanded(
              child: Row(
                children: [
                  BottomContainerWidget(
                    number: weight,
                    text: 'WEIGHT',
                    onTap2: reduceweight,
                    rIcon: Icons.remove,
                    onTap: increaseweight,
                    pIcon: Icons.add,
                  ),
                  BottomContainerWidget(
                    number: age,
                    text: 'AGE',
                    onTap2: reduceAge,
                    rIcon: Icons.remove,
                    onTap: increaseAge,
                    pIcon: Icons.add,
                  ),
                ],
              ),
            ),
            BottomButtonWidget(
                onTap: () {
                  CalculatorBrain myBrainCalculator =
                      CalculatorBrain(height: height, weight: weight);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return ResultScreen(
                          bmiResult: myBrainCalculator.calculateBMI(),
                          resultText: myBrainCalculator.getResult(),
                          interpretation: myBrainCalculator.getInterpretation(),
                        );
                      },
                    ),
                  );
                },
                title: 'CALCULATE')
          ],
        ));
  }
}
