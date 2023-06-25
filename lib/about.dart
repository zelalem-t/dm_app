import 'package:dm_support/common_drawer.dart';
import 'package:dm_support/constants.dart';
import 'package:flutter/material.dart';

class AboutDM extends StatelessWidget {
  const AboutDM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(homePageTitle,

        ),

      ),
        body:RichText(
          text:const TextSpan(text:"All things")
        ),
      drawer: DMDrawer(),
    );
  }
}
