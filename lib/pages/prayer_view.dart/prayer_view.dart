import 'package:flutter/material.dart';
import 'package:immaculata_app/layout/page_wrapper/page_wrapper.dart';
import 'package:immaculata_app/pages/prayer_view.dart/prayer_view_body.dart';
import 'package:immaculata_app/router/routes/index.dart';
import 'package:immaculata_app/utils/json.dart';
import 'package:immaculata_app/utils/prayer.dart';

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
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              goToTableOfContentRoute(context);
            },
            child: const Text("Back"),
          ),
          PrayerViewBody(blocks: prayer.blocks)
        ],
      ),
    );
  }
}
