import 'package:flutter/material.dart';
import 'package:immaculata_app/layout/page_wrapper/page_wrapper.dart';
import 'package:immaculata_app/pages/prayer_view.dart/prayer_view_body.dart';
import 'package:immaculata_app/pages/prayer_view.dart/prayer_view_header.dart';
import 'package:immaculata_app/utils/json.dart';
import 'package:immaculata_app/utils/layout.dart';
import 'package:immaculata_app/utils/prayer.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PrayerView extends StatefulWidget {
  const PrayerView({
    super.key,
    required this.prayerFile,
  });

  final String prayerFile;

  @override
  State<PrayerView> createState() => _PrayerViewState();
}

class _PrayerViewState extends State<PrayerView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool loading = false;
  Prayer prayer = Prayer([]);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        loading = true;
      });

      try {
        final prayerData = await readPrayerFile(widget.prayerFile);

        setState(() {
          prayer = Prayer(prayerData);
        });
      } finally {
        setState(() {
          loading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      loading: loading,
      child: LayoutBuilder(builder: (context, contraints) {
        final bodyHeight = contraints.maxHeight - prayerViewHeaderHeight;

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: prayerViewHeaderHeight,
              child: PrayerViewHeader(),
            ),
            SizedBox(
              height: bodyHeight,
              child: PrayerViewBody(blocks: prayer.blocks),
            )
          ],
        );
      }),
    );
  }
}
