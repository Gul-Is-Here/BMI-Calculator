import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/widget/bottom_container_widget.dart';
import 'package:bmi_calculator/widget/bottom_button_widget.dart';
import 'package:bmi_calculator/constants/constant.dart';
import 'package:bmi_calculator/widget/container_widget.dart';
import 'package:bmi_calculator/widget/resuableslider_widget.dart';
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
            ResuableSilderWidget(
              fHeight: height,
            ),
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
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultScreen();
                    },
                  ),
                );
              },
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
                child: const Text(
                  'Calculate',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ));
  }
}
