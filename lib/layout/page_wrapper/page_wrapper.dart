import 'package:flutter/material.dart';

class PageWrapper extends StatefulWidget {
  const PageWrapper({super.key, required this.child, this.loading});

  final Widget child;
  final bool? loading;

  @override
  State<PageWrapper> createState() => _PageWrapperState();
}

class _PageWrapperState extends State<PageWrapper> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Widget get child => widget.child;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {} finally {}
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.loading == true) return const Text("Loading");

    return Scaffold(
      // TODO: background color
      backgroundColor: Colors.white,
      key: scaffoldKey,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SafeArea(child: child),
      ),
    );
  }
}
