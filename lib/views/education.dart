import 'package:flutter/material.dart';
import 'package:portfolio/components/appbar.dart';
import 'package:portfolio/components/build_education_large.dart';
import 'package:portfolio/components/build_education_small.dart';


class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: buildAppBar(context),
      body: (width < 860)
        ? const BuildEducationSmall()
          : const BuildEducationLarge()
    );
  }
}
