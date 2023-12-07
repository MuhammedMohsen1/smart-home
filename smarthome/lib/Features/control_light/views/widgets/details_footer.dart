import 'package:flutter/material.dart';
import 'package:smarthome/Core/extensions/dimensions.dart';
import 'package:smarthome/Core/utils/styles.dart';

class DetailsFooter extends StatelessWidget {
  const DetailsFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h(),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w()),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Daily Usage',
                  style: Styles.textStyle13.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: const Color(0xFF959395)),
                ),
                const Spacer(),
                Text(
                  '1.5 Kwh',
                  style: Styles.textStyle13.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: const Color(0xFF959395)),
                ),
              ],
            ),
            SizedBox(
              height: 16.h(),
            ),
            Row(
              children: [
                Text(
                  'Monthly Usage',
                  style: Styles.textStyle13.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: const Color(0xFF959395)),
                ),
                const Spacer(),
                Text(
                  '18 Kwh',
                  style: Styles.textStyle13.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: const Color(0xFF959395)),
                ),
              ],
            ),
            SizedBox(
              height: 16.h(),
            ),
            Row(
              children: [
                Text(
                  'Total Usage Hours',
                  style: Styles.textStyle13.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: const Color(0xFF959395)),
                ),
                const Spacer(),
                Text(
                  '84 Hrs',
                  style: Styles.textStyle13.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: const Color(0xFF959395)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
