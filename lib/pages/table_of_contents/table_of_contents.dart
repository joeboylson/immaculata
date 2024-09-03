import 'package:flutter/material.dart';
import 'package:immaculata_app/layout/page_wrapper/page_wrapper.dart';
import 'package:immaculata_app/pages/table_of_contents/content.dart';
import 'package:immaculata_app/pages/table_of_contents/table_of_contents_header.dart';
import 'package:immaculata_app/router/routes/index.dart';

class TableOfContents extends StatefulWidget {
  const TableOfContents({super.key});

  @override
  State<TableOfContents> createState() => _TableOfContentsState();
}

class _TableOfContentsState extends State<TableOfContents> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {} finally {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TableOfContentsHeader(),
          Column(
            children: List.from(tableOfContents).map((i) {
              String prayerFile = "prayers/${i["filename"]}";
              String name = i["name"];

              return TextButton(
                onPressed: () => goToPrayerViewRoute(context, prayerFile),
                child: Text(name),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
