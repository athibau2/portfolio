import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/appbar.dart';
import 'package:portfolio/components/descriptions.dart';
import 'package:portfolio/components/lists.dart';
import 'package:portfolio/components/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Skill> skillList = Skill.getSkills();
  final List<HomeImage> imageList = HomeImage.homeImages();
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }


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
                  child: Text("HOME", style: Theme.of(context).textTheme.headline3,),
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
                              image: NetworkImage('../../assets/profile.png'),
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
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Hello! My name is Andrew Thibaudeau",
                                      style: Theme.of(context).textTheme.headline4,),
                                  ],
                                ),
                                scrollDirection: Axis.horizontal,
                              ),
                              Divider(),
                              Text(intro,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 250.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 1200),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                  ),
                  items: imageList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            decoration: BoxDecoration(
                              color: i.color,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(i.url),
                                  fit: BoxFit.contain
                              ),
                            ),
                          width: 250,
                          height: 250,
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(height: 40,),
                Container(
                  decoration: pageBar,
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height  * 0.1125,
                  width: MediaQuery.of(context).size.width,
                  child: Text("SKILLS", style: Theme.of(context).textTheme.headline3,),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: CupertinoScrollbar(
                    controller: _scrollController,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      physics: BouncingScrollPhysics(),
                      itemCount: skillList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: Card(
                            elevation: 6,
                            color: Colors.white70,
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: () async {
                                            if (!await launch(skillList[index].url)) {
                                              throw 'Could not launch ${skillList[index].url}';
                                            }
                                          },
                                          icon: Image.asset(skillList[index].image),
                                          iconSize: 55,
                                        ),
                                        Text(skillList[index].title, style: Theme.of(context).textTheme.headline4),
                                      ],
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    ),
                                    const Divider(thickness: 1,),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey.shade100,
                                        borderRadius: BorderRadius.all(Radius.circular(6)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Text(skillList[index].description, style: const TextStyle(
                                          fontSize: 20
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                ),
                const SizedBox(height: 200,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}