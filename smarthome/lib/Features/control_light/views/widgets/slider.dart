import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smarthome/Core/extensions/dimensions.dart';
import 'package:smarthome/Core/utils/colors.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key, required this.onChanged, required this.isOn});
  final void Function(double) onChanged;
  final bool isOn;
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _sliderValue = 50; // Initial value

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Ionicons.bulb_outline,
          color: ColorSpecial.fontWhiteColor,
        ),
        SizedBox(
          width: 10.w(),
        ),
        IgnorePointer(
          ignoring: !widget.isOn,
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 6.w(), // Set the size of the thumb
              ),
              trackShape: const RoundedRectSliderTrackShape(),
              inactiveTickMarkColor: Colors.transparent,
              activeTickMarkColor: Colors.transparent,
              trackHeight: 2.h(),
            ),
            child: CustomPaint(
              foregroundPainter: VerticalLinesPainter(),
              child: Slider(
                secondaryActiveColor: ColorSpecial.SlideActiveColor,
                value: _sliderValue,
                min: 0,
                max: 100,
                divisions: 5,
                activeColor: ColorSpecial.SlideInActiveColor,
                thumbColor: ColorSpecial.fontWhiteColor,
                inactiveColor: ColorSpecial.SlideActiveColor,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                  widget.onChanged(value);
                },
                secondaryTrackValue: _sliderValue,
                allowedInteraction: SliderInteraction.slideOnly,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w(),
        ),
        const Icon(
          Ionicons.bulb,
          color: ColorSpecial.fontWhiteColor,
        ),
      ],
    );
  }
}

class VerticalLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //PAINT for make changing in colors and strok lign
    Paint paint = Paint()
      ..color = ColorSpecial.fontWhiteColor // Adjust the color of the lines
      ..strokeWidth = 1.0; // Adjust the width of the lines

    double startX = size.width / 3.5; // Adjust the starting X position
    // double endX = size.width * 5 / 3.5; // Adjust the ending X position
    double interval = size.width / 7; // Adjust the interval between lines

    for (int i = 0; i < 4; i++) {
      double x = startX + i * interval;
      canvas.drawLine(
          Offset(x, size.height * 0.85), Offset(x, size.height), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
