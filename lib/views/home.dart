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

  Widget introLarge(BuildContext context, double width) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: Image.asset('assets/profile.png').image,
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
    );
  }

  Widget introSmall(BuildContext context, double width) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: Image.asset('assets/profile.png').image,
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
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello! My name is Andrew Thibaudeau",
                  style: Theme.of(context).textTheme.headline6,),
                Divider(),
                Text(intro,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
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
                  child: Text("HOME",
                    style: (width < 860)
                      ? Theme.of(context).textTheme.headline4
                      : Theme.of(context).textTheme.headline3,),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.all(30),
                  scrollDirection: Axis.horizontal,
                  child: (width < 860) ?
                      introSmall(context, width)
                      : introLarge(context, width)
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
                                  image: Image.asset(i.url).image,
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
                  height: height * 0.1125,
                  width: width,
                  child: Text("SKILLS",
                    style: (width < 860)
                        ? Theme.of(context).textTheme.headline4
                        : Theme.of(context).textTheme.headline3,),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: (width < 860)
                    ? height * 0.9
                    : height * 0.65,
                  width: width * 0.85,
                  child: CupertinoScrollbar(
                    controller: _scrollController,
                    child: ListView.builder(
                      scrollDirection: (width < 860) ? Axis.vertical : Axis.horizontal,
                      controller: _scrollController,
                      physics: BouncingScrollPhysics(),
                      itemCount: skillList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return FittedBox(
                          fit: BoxFit.fitHeight,
                          child: SizedBox(
                            width: 250,
                            child: Card(
                              elevation: 6,
                              color: Colors.white70,
                              child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    children: <Widget>[
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            IconButton(
                                              onPressed: () async {
                                                if (!await launch(skillList[index].url)) {
                                                  throw 'Could not launch ${skillList[index].url}';
                                                }
                                              },
                                              icon: Image.asset(skillList[index].image),
                                              iconSize: (width < 860) ? 30 : 40,
                                            ),
                                            Text(skillList[index].title,
                                                style: (width < 860)
                                                  ? Theme.of(context).textTheme.headline6
                                                  : Theme.of(context).textTheme.headline5),
                                          ],
                                        ),
                                      ),
                                      const Divider(thickness: 1,),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey.shade100,
                                          borderRadius: BorderRadius.all(Radius.circular(6)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text(skillList[index].description,
                                              style: (width < 860)
                                                ? Theme.of(context).textTheme.subtitle2
                                                : Theme.of(context).textTheme.subtitle1),
                                        ),
                                      ),
                                    ],
                                  ),
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