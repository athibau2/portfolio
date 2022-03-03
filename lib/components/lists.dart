import 'dart:ui';

import 'package:flutter/material.dart';

class Skill {
  static List<Skill> getSkills() => [
    Skill("assets/icons/cpp-logo.png", "C++", "https://www.cplusplus.com/", "C++ has provided me with an incredible foundation in programming. I studied it for three semesters and have built many projects with it. It was the first language I learned, and it's complexity has made learning other languages significanly easier."),
    Skill("assets/icons/flutter-logo.png", "Flutter", "https://flutter.dev/", "Flutter is gaining popularity very quickly and is my development framework of choice. I have used Flutter and Dart for many projects, including this website. The simplicity, speed, design, and tools Flutter offers are unmatched."),
    Skill("assets/icons/dart.png", "Dart", "https://dart.dev/", "Dart is the development language that works with the Flutter framework. Just as powerful as Flutter, it is easy to learn and includes countless tools and packages to make my life as a developer easier. Its stability and documentation is incredible."),
    Skill("assets/icons/postgres-logo.png", "PostgreSQL", "https://www.postgresql.org/", "Postgres is a powerful and easy to use Database Management System. I have used it for several projects and have become very familiar with its capabilities. I am becoming more advanced with SQL databases every day."),
    Skill("assets/icons/sql.png", "SQL", "https://en.wikipedia.org/wiki/SQL", "Knowing SQL is a must for any developer. All these apps would be nearly useless without utilizing SQL to manage all of my data. I have been using SQL for a few years now, and I am very comfortable writing queries and working with many databases to get the data I need."),
    Skill("assets/icons/firebase-logo.png", "Firebase", "https://firebase.google.com/", "I love Firebase because it is very easy to learn, and I've used it for a few Google Cloud projects. I have been learning to fully utilize the different functions of it, and have used it's authentication tools extensively."),
    Skill("assets/icons/javascript-logo.png", "JavaScript", "https://www.javascript.com/", "Who doesn't love JavaScript? I've used JavaScript and many of its various frameworks over the past year to build many web applications and servers. It is powerful and compatible with almost any stack, often making it an easy choice."),
    Skill("assets/icons/node-logo.png", "NodeJS", "https://nodejs.org/en/", "Speaking of JavaScript frameworks, NodeJS will always be a number one choice. I've used it in almost all of my projects since I've started learning software development because it is efficient, powerful, and helps my apps perform much better."),
    Skill("assets/icons/expressjs.png", "ExpressJS", "https://expressjs.com/", "ExpressJS is a NodeJS framework designed to make building web servers fast and simple. I am using ExpressJS to build a server to host a web app for a personal project. I have learned it quickly and have been blessed by its abilities."),
    Skill("assets/icons/typescript-logo.png", "TypeScript", "https://www.typescriptlang.org/", "TypeScript is quite popular for backend development, hence it being our backend for The Eureka Trail project I'm part of. I am still learning the differences between it and other languages and how I can utilize its power, but it's been easy to learn."),
    Skill("assets/icons/vue-logo.png", "VueJS", "https://vuejs.org/", "VueJS is one of the most popular frontend framework there is, and with good reason. I am using Vue for two separate projects right now, and the compnents it comes with are so straightforward and helpful with bringing websites to life."),
    Skill("assets/icons/nuxt.png", "NuxtJS", "https://nuxtjs.org/", "Nuxt is a fantastic JavaScript framework and makes frontend development so simple. I am using a Nuxt combined with VueJS for a class project and it has made development and rendering run smoothly and consistently. Nuxt will become a go-to for me."),
    Skill("assets/icons/html-css.png", "HTML/CSS", "https://html.com/", "HTML and CSS are foundational to web development. I have used these languages in various capacities for a few projects, and their simplicity and originality has been foundational for me understanding the structure of everything else I've used for web development."),
    Skill("assets/aws.png", "AWS", "https://aws.amazon.com/", "Amazon Web Services is a powerful platform that I am excited to learn more about. Winter 2022 semester introduced me to it, and implementing the various tools it offers has made hosting, securing, and scaling applications very easy."),
    Skill("assets/icons/npm.png", "NPM", "https://www.npmjs.com/", "NPM is an incredibly useful package manager. It allows me to install and use hundreds of developer tools throughout my projects that make development and production more efficient and have better performance. I use NPM with everything."),
    Skill("assets/icons/github.png", "Github", "https://github.com/", "You won't catch me not using Github on any project. I use it every single day for everything I work on. The versioning tools are a lifesaver, and I am very familiar with team project boards and many of the other useful tools."),

  ];

  Skill(
    this.image,
    this.title,
    this.url,
    this.description,
  );
  String image;
  String title;
  String url;
  String description;
}

class HomeImage {
  static List<HomeImage> homeImages() => [
    HomeImage("assets/byu-logo.png", Colors.transparent),
    HomeImage("assets/icons/eureka-logo.png", Colors.white),
    HomeImage("assets/sava.png", Colors.transparent),
    HomeImage("assets/creators.png", Colors.white),
  ];

  HomeImage(
    this.url,
    this.color
  );
  String url;
  Color color;
}
