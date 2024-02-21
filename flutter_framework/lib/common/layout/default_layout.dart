import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final bool isAppBar;
  final Color? backgroundColor;
  final Widget? child;
  const DefaultLayout(
      {super.key, this.isAppBar = true, this.backgroundColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isAppBar
          ? PreferredSize(
              preferredSize: const Size.fromHeight(80.0),
              child: AppBar(
                title: Text(child.toString()),
              ))
          : null,
      backgroundColor: backgroundColor ?? Colors.grey,
      body: child,
    );
  }
}
