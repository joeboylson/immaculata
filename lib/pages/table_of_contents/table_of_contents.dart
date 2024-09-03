import 'package:flutter/material.dart';
import 'package:immaculata_app/layout/page_wrapper/page_wrapper.dart';
import 'package:immaculata_app/pages/table_of_contents/content.dart';
import 'package:immaculata_app/pages/table_of_contents/table_of_contents_header.dart';
import 'package:immaculata_app/router/routes/index.dart';
import 'package:immaculata_app/utils/layout.dart';

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
    final pageHeight = getPageHeight(context);

    return PageWrapper(
      child: SizedBox(
        height: pageHeight,
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TableOfContentsHeader(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.from(tableOfContents).map((i) {
                  String prayerFile = "assets/prayers/${i["filename"]}";
                  String name = i["name"];

                  return Container(
                    decoration: const BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.black12))),
                    child: TextButton(
                      onPressed: () => goToPrayerViewRoute(context, prayerFile),
                      child: Text(name),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
