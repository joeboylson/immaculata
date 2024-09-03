import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

const double prayerViewHeaderHeight = 64;

class PrayerViewHeader extends StatelessWidget {
  const PrayerViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black12),
      height: prayerViewHeaderHeight,
      child: TextButton(
        onPressed: () {
          // goToTableOfContentRoute(context);
          Navigator.pop(context);
        },
        child: Icon(PhosphorIcons.arrowLeft(PhosphorIconsStyle.regular)),
      ),
    );
  }
}
