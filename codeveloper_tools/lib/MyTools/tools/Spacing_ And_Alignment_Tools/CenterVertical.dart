import 'package:codeveloper_tools/MyTools/tools/CMaker_Tools/CMaker.dart';
import 'package:flutter/material.dart';
class CenterVertical extends StatelessWidget {
  CenterVertical({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CMaker(
        child: Column(
          children: [
            Expanded(child: Container()),
            child,
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}