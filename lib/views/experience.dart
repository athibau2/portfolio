import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/appbar.dart';
import 'package:portfolio/components/descriptions.dart';
import 'package:portfolio/components/styles.dart';
import 'package:url_launcher/url_launcher.dart';


class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  final sandboxUrl = 'https://creators.byu.edu/sandbox';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
                  height: MediaQuery.of(context).size.height  * 0.1125,
                  width: MediaQuery.of(context).size.width,
                  child: Text("EXPERIENCE", style: Theme.of(context).textTheme.headline3,),
                ),

                /// THE EUREKA TRAIL
                SingleChildScrollView(
                  padding: EdgeInsets.all(30),
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                      const SizedBox(width: 10,),
                      Container(
                        decoration: listDecoration,
                        width: MediaQuery.of(context).size.width * 0.7,
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("The Eureka Trail - ", style: Theme.of(context).textTheme.headline4,),
                                    Text("April 2021 - Present", style: Theme.of(context).textTheme.subtitle2,),
                                  ],
                                ),
                                scrollDirection: Axis.horizontal,
                              ),
                              Divider(),
                              Text(eurekaDescription,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(height: 10,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset("assets/icons/flutter-logo.png", scale: 3,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/typescript-logo.png", scale: 3,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/node-logo.png", scale: 2,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/postgres-logo.png", scale: 1,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/firebase-logo.png", scale: 3,),
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
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
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
                                    Text("Sava - ", style: Theme.of(context).textTheme.headline4,),
                                    Text("March 2022 - Present", style: Theme.of(context).textTheme.subtitle2,),
                                  ],
                                ),
                                scrollDirection: Axis.horizontal,
                              ),
                              Divider(),
                              Text(savaDescription,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(height: 10,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset("assets/icons/flutter-logo.png", scale: 3,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/firebase-logo.png", scale: 3,),
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
                              image: NetworkImage('assets/sava.png'),
                              fit: BoxFit.contain
                          ),
                        ),
                        height: 250,
                        width: 250,
                      ),
                    ],
                  ),
                ),

                /// SALON SCHEDULING SOFTWARE
                SingleChildScrollView(
                  padding: EdgeInsets.all(30),
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                      const SizedBox(width: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
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
                                    Text("Salon Scheduling Platform - ", style: Theme.of(context).textTheme.headline4,),
                                    Text("Summer 2022", style: Theme.of(context).textTheme.subtitle2,),
                                  ],
                                ),
                                scrollDirection: Axis.horizontal,
                              ),
                              Divider(),
                              Text(schedulingDescription,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(height: 10,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset("assets/icons/vue-logo.png", scale: 55,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/javascript-logo.png", scale: 6.2,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/node-logo.png", scale: 2,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/postgres-logo.png", scale: 1,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/firebase-logo.png", scale: 3,),
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
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
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
                                    Text("Creators_ Sandbox - ", style: Theme.of(context).textTheme.headline4,),
                                    Text("September 2022 - April 2023", style: Theme.of(context).textTheme.subtitle2,),
                                  ],
                                ),
                                scrollDirection: Axis.horizontal,
                              ),
                              Divider(),
                              Text(sandboxDescription,
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
                      const SizedBox(width: 10,),
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
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: pageBar,
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height  * 0.1125,
                  width: MediaQuery.of(context).size.width,
                  child: Text("PERSONAL PROJECTS", style: Theme.of(context).textTheme.headline3,),
                ),

                /// WHERE YOU AT
                SingleChildScrollView(
                  padding: EdgeInsets.all(30),
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                      const SizedBox(width: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
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
                                    Text("Coming Soon - Where You At?", style: Theme.of(context).textTheme.headline4,),
                                  ],
                                ),
                                scrollDirection: Axis.horizontal,
                              ),
                              Divider(),
                              Text(wyaDescription,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(height: 10,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset("assets/icons/flutter-logo.png", scale: 3,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/postgres-logo.png", scale: 1,),
                                    const SizedBox(width: 10,),
                                    Image.asset("assets/icons/firebase-logo.png", scale: 3,),
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
      ),
    );
  }
}
