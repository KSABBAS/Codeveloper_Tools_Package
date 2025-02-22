import 'package:codeveloper_tools/MyTools/Functions/Height_and_width_Functions.dart';
import 'package:flutter/material.dart';
class ResponsivePMaker extends StatelessWidget {
  ResponsivePMaker(
      {super.key,
      this.horizontal,
      this.vertical,
      this.designScreenHeight,
      this.designScreenWidth});
  double? horizontal;
  double? vertical;
  double? designScreenHeight;
  double? designScreenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
      top: ResponsiveHeight(context, vertical ?? 0,
          designScreenHeight: designScreenHeight),
      left: ResponsiveWidth(context, horizontal ?? 0,
          designScreenWidth: designScreenWidth),
    ));
  }
}