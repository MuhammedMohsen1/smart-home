import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smarthome/Core/extensions/dimensions.dart';
import 'package:smarthome/Core/utils/colors.dart';
import 'package:smarthome/Core/utils/styles.dart';
import 'package:smarthome/Features/control_light/views/widgets/details_footer.dart';
import 'package:smarthome/Features/control_light/views/widgets/details_header.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DetailsHeader(),
        DetailsFooter(),
      ],
    );
  }
}
