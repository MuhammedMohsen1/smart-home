import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smarthome/Core/extensions/dimensions.dart';
import 'package:smarthome/Core/utils/styles.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h(),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffeeeee4),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(17.w()),
              topRight: Radius.circular(17.w()))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Schedule',
              style: Styles.textStyle17
                  .copyWith(letterSpacing: 1, color: Colors.black),
            ),
            SizedBox(
              height: 6.h(),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'From',
                  style: Styles.textStyle13.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 16.w(),
                ),
                Text(
                  '8:00',
                  style: Styles.textStyle17
                      .copyWith(letterSpacing: 1, color: Colors.black),
                ),
                SizedBox(
                  width: 6.w(),
                ),
                Text(
                  'PM',
                  style: Styles.textStyle13.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 32.w(),
                ),
                Text(
                  'To',
                  style: Styles.textStyle13
                      .copyWith(letterSpacing: 1, color: Colors.black),
                ),
                SizedBox(
                  width: 16.w(),
                ),
                Text(
                  '12:00',
                  style: Styles.textStyle17
                      .copyWith(letterSpacing: 1, color: Colors.black),
                ),
                SizedBox(
                  width: 6.w(),
                ),
                Text(
                  'AM',
                  style: Styles.textStyle13.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      color: Colors.black),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Ionicons.trash_outline,
                    color: Colors.black,
                    size: 18.w(),
                  ),
                ),
                SizedBox(
                  width: 16.w(),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Ionicons.create_outline,
                    color: Colors.black,
                    size: 18.w(),
                  ),
                ),
                SizedBox(
                  width: 10.w(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
