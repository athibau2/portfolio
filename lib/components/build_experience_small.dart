import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'descriptions.dart';

class BuildExperienceSmall extends StatelessWidget {
  const BuildExperienceSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: backgroundDecoration,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: pageBar,
                alignment: Alignment.center,
                height: height * 0.1125,
                width: width,
                child: Text(
                  "EXPERIENCE",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),

              /// THE EUREKA TRAIL
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: Image.asset('assets/icons/eureka-logo.png')
                                .image,
                            fit: BoxFit.contain),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: listDecoration,
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "The Eureka Trail",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              "April 2021 - Present",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Divider(),
                            Text(
                              eurekaDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    "assets/icons/flutter-logo.png",
                                    scale: 3.6,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/typescript-logo.png",
                                    scale: 4,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/node-logo.png",
                                    scale: 2.5,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/postgres-logo.png",
                                    scale: 1.3,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/firebase-logo.png",
                                    scale: 3.6,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.aws,
                                    size: 35,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// MAUPIN HOMES
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: Image.asset('maupin-homes.png').image,
                            fit: BoxFit.contain),
                      ),
                      height: 200,

                      /// changed from 250
                      width: 250,
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      decoration: listDecoration,
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Maupin Homes",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              "December 2022 - January 2023",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            const Divider(),
                            Text(
                              maupinHomesDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    "assets/icons/vue-logo.png",
                                    scale: 70,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    "assets/icons/nuxt.png",
                                    scale: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/javascript-logo.png",
                                    scale: 7.2,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    onPressed: () async {
                                      if (!await launch(maupinHomesUrl)) {
                                        throw 'Could not launch $maupinHomesUrl';
                                      }
                                    },
                                    child: const Text("View Site"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// SAVA
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: Image.asset('sava-copy.png')
                                .image, // croped original for copy
                            fit: BoxFit.fitWidth),
                      ),
                      height: 200, // changed from 250
                      width: 250,
                    ),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sava",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              "March 2022 - June 2022",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Divider(),
                            Text(
                              savaDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    "assets/icons/flutter-logo.png",
                                    scale: 3.6,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/firebase-logo.png",
                                    scale: 3.6,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// SANDBOX
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: Image.asset('assets/creators.png').image,
                            fit: BoxFit.contain),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Creators_ Sandbox",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Text(
                              "September 2022 - April 2023",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Divider(),
                            Text(
                              sandboxDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: () async {
                                      if (!await launch(sandboxUrl)) {
                                        throw 'Could not launch $sandboxUrl';
                                      }
                                    },
                                    child: const Text("Learn More"),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: pageBar,
                alignment: Alignment.center,
                height: height * 0.1125,
                width: width,
                child: Text(
                  "PERSONAL PROJECTS",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),

              /// GOAT Notes
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: Image.asset('assets/goat-notes.png').image,
                            fit: BoxFit.fitWidth),
                      ),
                      height: 175,
                      width: 350,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "GOAT Notes",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Divider(),
                            Text(
                              goatnotesDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    "assets/icons/vue-logo.png",
                                    scale: 70,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    "assets/icons/nuxt.png",
                                    scale: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/javascript-logo.png",
                                    scale: 7.2,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/node-logo.png",
                                    scale: 2.5,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/postgres-logo.png",
                                    scale: 1.3,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.aws,
                                    size: 35,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () async {
                                      if (!await launch(goatnotesUrl)) {
                                        throw 'Could not launch $goatnotesUrl';
                                      }
                                    },
                                    child: const Text("View Site"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Write Now
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: Image.asset('assets/write-now.png').image,
                            fit: BoxFit.fitWidth),
                      ),
                      height: 175,
                      width: 350,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Write Now",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Divider(),
                            Text(
                              writeNowDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    "assets/icons/vue-logo.png",
                                    scale: 70,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    "assets/icons/nuxt.png",
                                    scale: 20,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/ExpressJS-logo.png",
                                    scale: 8,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/node-logo.png",
                                    scale: 2.5,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/postgres-logo.png",
                                    scale: 1.3,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.aws,
                                    size: 35,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () async {
                                      if (!await launch(writenowUrl)) {
                                        throw 'Could not launch $writenowUrl';
                                      }
                                    },
                                    child: const Text("View Site"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// WHERE YOU AT
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: Image.asset('assets/wya.png').image,
                            fit: BoxFit.fitHeight),
                      ),
                      height: 300,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Coming Soon - Where You At?",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Divider(),
                            Text(
                              wyaDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    "assets/icons/flutter-logo.png",
                                    scale: 3.6,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/postgres-logo.png",
                                    scale: 1.3,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/firebase-logo.png",
                                    scale: 3.6,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// DON'T GET ME STARTED
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: Image.asset('assets/profile.png').image,
                            fit: BoxFit.contain),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Coming Soon - Don't Get Me Started",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Divider(),
                            Text(
                              gameDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset(
                                    "assets/icons/flutter-logo.png",
                                    scale: 3.6,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/postgres-logo.png",
                                    scale: 1.3,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    "assets/icons/firebase-logo.png",
                                    scale: 3.6,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
