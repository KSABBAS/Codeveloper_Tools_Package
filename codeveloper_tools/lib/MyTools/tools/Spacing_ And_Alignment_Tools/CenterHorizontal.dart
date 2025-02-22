import 'package:codeveloper_tools/MyTools/tools/CMaker_Tools/CMaker.dart';
import 'package:flutter/material.dart';
class CenterHorizontal extends StatelessWidget {
  CenterHorizontal({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return CMaker(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(child: Container()),
          child,
          Expanded(child: Container()),
        ],
      ),
    );
  }
}