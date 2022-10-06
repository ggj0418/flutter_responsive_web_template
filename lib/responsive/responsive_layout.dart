import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_template/responsive/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget introBody;

  ResponsiveLayout({
    required this.mobileBody,
    required this.introBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth + 100) {
          return mobileBody;
        }
        return Row(
          children: [
            Expanded(
              child: Center(
                child: introBody,
              ),
            ),
            Container(
              width: mobileWidth,
              child: mobileBody,
            ),
          ],
        );
      },
    );
  }
}
