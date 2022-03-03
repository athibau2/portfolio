import 'package:flutter/material.dart';


final backgroundDecoration = BoxDecoration(
  gradient: RadialGradient(
    center: Alignment.centerLeft,
    tileMode: TileMode.decal,
    radius: 5,
    colors: [Colors.blueGrey.shade100, Colors.lightBlue.shade100]),
);

const listDecoration = BoxDecoration(
  color: Colors.white54,
  borderRadius: BorderRadius.all(Radius.circular(10)),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      spreadRadius: 5,
      blurRadius: 7,
      offset: Offset(0, 3)
    )
  ]
);

final pageBar = BoxDecoration(
  gradient: LinearGradient(
    colors: [Colors.deepPurpleAccent.shade200, Colors.red.shade300, Colors.deepPurpleAccent.shade200,]
  )
);

final kTextFieldDecoration = InputDecoration(
  fillColor: Colors.white30,
  filled: true,
  hintText: 'Enter a value',
  hintStyle: TextStyle(color: Colors.grey.shade700),
  contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(7)),
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 0.6),
    borderRadius: BorderRadius.all(Radius.circular(7.0)),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 0.6),
    borderRadius: BorderRadius.all(Radius.circular(7)),
  ),
);