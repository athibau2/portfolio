import 'package:flutter/material.dart';
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
                height: height  * 0.1125,
                width: width,
                child: Text("EXPERIENCE", style: Theme.of(context).textTheme.headline4,),
              ),

              /// THE EUREKA TRAIL
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('assets/icons/eureka-logo.png'),
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
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("The Eureka Trail", style: Theme.of(context).textTheme.headline6,),
                                  Text("April 2021 - Present", style: Theme.of(context).textTheme.subtitle2,),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(eurekaDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("../../assets/icons/flutter-logo.png", scale: 3.6,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/typescript-logo.png", scale: 4,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/node-logo.png", scale: 2.5,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/postgres-logo.png", scale: 1.3,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/firebase-logo.png", scale: 3.6,),
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
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('assets/sava.png'),
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
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Sava", style: Theme.of(context).textTheme.headline6,),
                                  Text("March 2022 - Present", style: Theme.of(context).textTheme.subtitle2,),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(savaDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("../../assets/icons/flutter-logo.png", scale: 3.6,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/firebase-logo.png", scale: 3.6,),
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

              /// SALON SCHEDULING SOFTWARE
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('assets/profile.png'),
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
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Salon Scheduling Platform", style: Theme.of(context).textTheme.headline6,),
                                  Text("Summer 2022", style: Theme.of(context).textTheme.subtitle2,),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(schedulingDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("../../assets/icons/vue-logo.png", scale: 70,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/node-logo.png", scale: 2.5,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/postgres-logo.png", scale: 1.3,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/firebase-logo.png", scale: 3.6,),
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
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('assets/creators.png'),
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
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Creators_ Sandbox", style: Theme.of(context).textTheme.headline6,),
                                  Text("September 2022 - April 2023", style: Theme.of(context).textTheme.subtitle2,),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(sandboxDescription,
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
              const SizedBox(height: 20,),
              Container(
                decoration: pageBar,
                alignment: Alignment.center,
                height: height  * 0.1125,
                width: width,
                child: Text("PERSONAL PROJECTS", style: Theme.of(context).textTheme.headline4,),
              ),

              /// WHERE YOU AT
              SingleChildScrollView(
                padding: EdgeInsets.all(30),
                scrollDirection: Axis.horizontal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: NetworkImage('assets/wya.png'),
                            fit: BoxFit.fitHeight
                        ),
                      ),
                      height: 300,
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
                          children: [
                            SingleChildScrollView(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Coming Soon - Where You At?", style: Theme.of(context).textTheme.headline6,),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                            Divider(),
                            Text(wyaDescription,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            const SizedBox(height: 10,),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset("../../assets/icons/flutter-logo.png", scale: 3.6,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/postgres-logo.png", scale: 1.3,),
                                  const SizedBox(width: 10,),
                                  Image.asset("../../assets/icons/firebase-logo.png", scale: 3.6,),
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
