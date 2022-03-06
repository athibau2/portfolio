import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'descriptions.dart';


class BuildEducationLarge extends StatelessWidget {
  const BuildEducationLarge({Key? key}) : super(key: key);

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
                child: Text("EDUCATION", style: Theme.of(context).textTheme.headline3,),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('assets/byu-logo.png'),
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      decoration: listDecoration,
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Brigham Young University - ", style: Theme.of(context).textTheme.headline4,),
                                  Column(
                                    children: [
                                      Text("Information Technology", style: Theme.of(context).textTheme.subtitle2,),
                                      Text("2019 - 2024", style: Theme.of(context).textTheme.subtitle2,),
                                    ],
                                  ),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(byuDescription,
                              style: Theme.of(context).textTheme.headline6,
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
                child: Row(
                  children: [
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("C++ Programming", style: Theme.of(context).textTheme.headline4,),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(cppDescription,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("../../assets/icons/oop.png", scale: 4,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/data-structures.png", scale: 8,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/discrete-math.png", scale: 6,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('assets/icons/cpp-logo.png'),
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
                      width: 250,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('assets/icons/web-dev.png'),
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Advanced Web Technologies - ", style: Theme.of(context).textTheme.headline4,),
                                  Text("January 2022 - April 2022", style: Theme.of(context).textTheme.subtitle2,),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(webDevDescription,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("../../assets/icons/vue-logo.png", scale: 55,),
                                  const SizedBox(width: 5,),
                                  Image.asset("../../assets/icons/nuxt.png", scale: 16,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/ExpressJS-logo.png", scale: 9,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/node-logo.png", scale: 2,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/postgres-logo.png", scale: 1,),
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
                child: Row(
                  children: [
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Database Principles and Applications - ", style: Theme.of(context).textTheme.headline4,),
                                  Text("January 2022 - April 2022", style: Theme.of(context).textTheme.subtitle2,),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(databaseDescription,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("../../assets/icons/vue-logo.png", scale: 55,),
                                  const SizedBox(width: 5,),
                                  Image.asset("../../assets/icons/javascript-logo.png", scale: 6.2,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/node-logo.png", scale: 2,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/postgres-logo.png", scale: 1,),
                                  const SizedBox(width: 10,),
                                  FaIcon(FontAwesomeIcons.aws, size: 40,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: NetworkImage('assets/icons/database.png'),
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
                      width: 250,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('assets/aws.png'),
                            fit: BoxFit.contain
                        ),
                      ),
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      width: width * 0.7,
                      alignment: Alignment.topLeft,
                      decoration: listDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Cloud Architecture and Security - ", style: Theme.of(context).textTheme.headline4,),
                                  Text("January 2022 - April 2022", style: Theme.of(context).textTheme.subtitle2,),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(cloudDescription,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  FaIcon(FontAwesomeIcons.aws, size: 40,),
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
