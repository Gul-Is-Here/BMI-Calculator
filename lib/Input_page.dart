import 'package:bmi_calculator/bottom_container_widget.dart';
import 'package:bmi_calculator/bottom_button_widget.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/container_widget.dart';
import 'package:bmi_calculator/resuableslider_widget.dart';
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
  int wight = 60;
  int age = 19;
  void increaseWight() {
    setState(() {
      wight = wight + 1;
    });
  }

  void reduceWight() {
    setState(() {
      wight = wight - 1;
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
            const ResuableSilderWidget(),
            Expanded(
              child: Row(
                children: [
                  BottomContainerWidget(
                    number: wight,
                    text: 'WEIGHT',
                    onTap2: reduceWight,
                    rIcon: Icons.remove,
                    onTap: increaseWight,
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
            BottomButtonWidget()
          ],
        ));
  }
}
