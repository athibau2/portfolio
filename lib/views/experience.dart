import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/appbar.dart';
import 'package:portfolio/components/build_experience_large.dart';
import 'package:portfolio/components/build_experience_small.dart';


class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: buildAppBar(context),
      body: (width < 860)
        ? const BuildExperienceSmall()
          : const BuildExperienceLarge()
    );
  }
}
