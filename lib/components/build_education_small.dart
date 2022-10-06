import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'descriptions.dart';


class BuildEducationSmall extends StatelessWidget {
  const BuildEducationSmall({Key? key}) : super(key: key);

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
                height: height  * 0.1125,
                width: width,
                child: Text("EDUCATION", style: Theme.of(context).textTheme.headline4,),
              ),
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
                            image: Image.asset('assets/byu-logo.png').image,
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      decoration: listDecoration,
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Brigham Young University", style: Theme.of(context).textTheme.headline6,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Information Technology: ", style: Theme.of(context).textTheme.subtitle2,),
                                Text("2019 - 2024", style: Theme.of(context).textTheme.subtitle2,),
                              ],
                            ),
                            Divider(),
                            Text(byuDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      onPressed: () async {
                                        if (!await launch(byuUrl)) {
                                          throw 'Could not launch $byuUrl';
                                        }
                                      },
                                      child: Text("Learn More")),
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
                            image: Image.asset('assets/icons/cpp-logo.png').image,
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("C++ Programming", style: Theme.of(context).textTheme.headline6,),
                            Divider(),
                            Text(cppDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("assets/icons/oop.png", scale: 6,),
                                  const SizedBox(width: 10,),
                                  Image.asset("assets/icons/data-structures.png", scale: 10,),
                                  const SizedBox(width: 10,),
                                  Image.asset("assets/icons/discrete-math.png", scale: 8,),
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
                            image: Image.asset('assets/icons/web-dev.png').image,
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Advanced Web Technologies", style: Theme.of(context).textTheme.headline6,),
                            Text("January 2022 - April 2022", style: Theme.of(context).textTheme.subtitle2,),
                            Divider(),
                            Text(webDevDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("assets/icons/vue-logo.png", scale: 70,),
                                  const SizedBox(width: 5,),
                                  Image.asset("assets/icons/nuxt.png", scale: 20,),
                                  const SizedBox(width: 10,),
                                  Image.asset("assets/icons/ExpressJS-logo.png", scale: 8,),
                                  const SizedBox(width: 10,),
                                  Image.asset("assets/icons/node-logo.png", scale: 2.5,),
                                  const SizedBox(width: 10,),
                                  Image.asset("assets/icons/postgres-logo.png", scale: 1.3,),
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
                            image: Image.asset('assets/icons/database.png').image,
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
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
                            Text("Database Principles and Applications", style: Theme.of(context).textTheme.headline6,),
                            Text("January 2022 - April 2022", style: Theme.of(context).textTheme.subtitle2,),
                            Divider(),
                            Text(databaseDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("assets/icons/vue-logo.png", scale: 70,),
                                  const SizedBox(width: 5,),
                                  Image.asset("assets/icons/nuxt.png", scale: 20,),
                                  const SizedBox(width: 10,),
                                  Image.asset("assets/icons/node-logo.png", scale: 2.5,),
                                  const SizedBox(width: 10,),
                                  Image.asset("assets/icons/postgres-logo.png", scale: 1.3,),
                                  const SizedBox(width: 10,),
                                  FaIcon(FontAwesomeIcons.aws, size: 35,),
                                  const SizedBox(width: 20,),
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
                            image: Image.asset('assets/aws.png').image,
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
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
                            Text("Cloud Architecture and Security", style: Theme.of(context).textTheme.headline6,),
                            Text("January 2022 - April 2022", style: Theme.of(context).textTheme.subtitle2,),
                            Divider(),
                            Text(cloudDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  FaIcon(FontAwesomeIcons.aws, size: 35,),
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
