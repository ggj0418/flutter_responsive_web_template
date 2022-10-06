import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_template/asset_image_view.dart';
import 'package:flutter_responsive_web_template/responsive/mobile_body.dart';
import 'package:flutter_responsive_web_template/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        introBody: AssetImageView(fileName: '2022.jpg'),
      ),
    );
  }
}
