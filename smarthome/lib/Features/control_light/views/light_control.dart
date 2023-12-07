import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:smarthome/Core/extensions/dimensions.dart';
import 'package:smarthome/Core/utils/colors.dart';
import 'package:smarthome/Core/utils/styles.dart';
import 'package:smarthome/Features/control_light/views/widgets/details_widget.dart';
import 'package:smarthome/Features/control_light/views/widgets/slider.dart';
import 'package:switcher_button/switcher_button.dart';

class LightControlView extends StatefulWidget {
  const LightControlView({super.key});

  @override
  State<LightControlView> createState() => _LightControlViewState();
}

class _LightControlViewState extends State<LightControlView> {
  bool isOn = false;
  final List<double> lightIntensity = const [
    20,
    30,
    60,
    90,
    120,
    150,
    0,
  ];
  int selectedIntensity = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorSpecial.backgroundColor,
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h()),
              child: Column(
                children: [
                  SizedBox(
                    height: 40.h(),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 40.w(),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Power',
                              style: Styles.textStyle17
                                  .copyWith(color: ColorSpecial.fontWhiteColor),
                            ),
                            SizedBox(
                              height: 10.h(),
                            ),
                            SwitcherButton(
                              value: selectedIntensity == 0 ? false : true,
                              size: 50.w(),
                              offColor: ColorSpecial.SlideActiveColor,
                              onColor: ColorSpecial.fontWhiteColor,
                              onChange: (value) {
                                setState(() {
                                  isOn = value;
                                });
                              },
                            ),
                            SizedBox(
                              height: 80.h(),
                            ),
                            Text(
                              isOn ? '${selectedIntensity * 20}%' : 'OFF',
                              style: Styles.textStyle50.copyWith(
                                  fontSize: 40,
                                  color: ColorSpecial.fontWhiteColor,
                                  letterSpacing: 2),
                            ),
                            SizedBox(
                              height: 6.h(),
                            ),
                            Text(
                              'Brightness',
                              style: Styles.textStyle13.copyWith(
                                  color: ColorSpecial.fontWhiteColor,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  MySlider(
                    isOn: isOn,
                    onChanged: (sliderValue) {
                      setState(() {
                        selectedIntensity = (sliderValue / 20).round();
                        print('selectedIntensity: $selectedIntensity');
                      });
                    },
                  ),
                  SizedBox(height: 30.h()),
                  const DetailsWidget(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SizedBox(
                  height: 304.h(),
                  width: 183.w(),
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 50.h(),
                            width: 50.w(),
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  blurRadius:
                                      selectedIntensity == 5 ? 100 : 200,
                                  spreadRadius: isOn
                                      ? lightIntensity[selectedIntensity]
                                      : 0,
                                  color: const Color(0xfffef6d2))
                            ], shape: BoxShape.circle),
                          )),
                      Image.asset(
                        'assets/images/light-bulb.png',
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
