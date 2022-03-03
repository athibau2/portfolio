import 'package:flutter/material.dart';
import 'package:portfolio/views/contact_me.dart';
import 'package:portfolio/views/education.dart';
import 'package:portfolio/views/experience.dart';
import 'package:portfolio/views/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  const _githubUrl = 'https://github.com/athibau2';
  const _linkedinUrl =
      'https://www.linkedin.com/in/andrew-thibaudeau-aa312bb1/';
  double width = MediaQuery.of(context).size.width;

  if (width < 860) {
    return AppBar(
      title: Image.asset(
        'assets/logo.png',
        scale: 1.8,
      ),
      actions: [
        IconButton(
            onPressed: () async {
              if (!await launch(_githubUrl))
                throw 'Could not launch $_githubUrl';
            },
            icon: const FaIcon(FontAwesomeIcons.github)),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () async {
              if (!await launch(_linkedinUrl))
                throw 'Could not launch $_linkedinUrl';
            },
            icon: const FaIcon(FontAwesomeIcons.linkedin)),
        const SizedBox(
          width: 10,
        ),
        PopupMenuButton<ElevatedButton>(
          color: Colors.grey.shade300,
          padding: const EdgeInsets.only(right: 20),
          icon: const Icon(Icons.menu),
          itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<ElevatedButton>>[
            PopupMenuItem<ElevatedButton>(
              child: ElevatedButton(
                child: const Text("Home"),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                },
              ),
            ),
            PopupMenuItem<ElevatedButton>(
              child: ElevatedButton(
                child: const Text("Experience"),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Experience()));
                },
              ),
            ),
            PopupMenuItem<ElevatedButton>(
              child: ElevatedButton(
                child: const Text("Education"),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Education()));
                },
              ),
            ),
            PopupMenuItem<ElevatedButton>(
              child: ElevatedButton(
                child: const Text("Contact Me"),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const ContactMe()));
                },
              ),
            ),
          ],
        ),
      ],
    );
  } else {
    return AppBar(
      elevation: 20,
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              scale: 1.8,
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton.icon(
              label: const Text("Home"),
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const SizedBox(
              width: 5,
            ),
            ElevatedButton.icon(
              label: const Text("Experience"),
              icon: const Icon(Icons.work_rounded),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Experience()));
              },
            ),
            const SizedBox(
              width: 5,
            ),
            ElevatedButton.icon(
              label: const Text("Education"),
              icon: const Icon(Icons.school),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Education()));
              },
            ),
            const SizedBox(
              width: 5,
            ),
            ElevatedButton.icon(
              label: const Text("Contact Me"),
              icon: const Icon(Icons.contact_mail),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const ContactMe()));
              },
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () async {
                  if (!await launch(_githubUrl))
                    throw 'Could not launch $_githubUrl';
                },
                icon: const FaIcon(FontAwesomeIcons.github)),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () async {
                  if (!await launch(_linkedinUrl))
                    throw 'Could not launch $_linkedinUrl';
                },
                icon: const FaIcon(FontAwesomeIcons.linkedin)),
          ],
        ),
      ),
    );
  }
}
