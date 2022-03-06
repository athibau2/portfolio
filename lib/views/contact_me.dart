import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:portfolio/components/appbar.dart';
import 'package:portfolio/components/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  final _nameController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        width: width,
        height: height,
        decoration: backgroundDecoration,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: pageBar,
                alignment: Alignment.center,
                height: height  * 0.1125,
                width: width,
                child: Text("CONTACT ME",
                  style: (width < 860)
                    ? Theme.of(context).textTheme.headline4
                    : Theme.of(context).textTheme.headline3,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text("Inquire Here",
                    style: (width < 860)
                      ? Theme.of(context).textTheme.headline5
                      : Theme.of(context).textTheme.headline4,
                ),
              ),
              Form(
                key: _formKey,
                child: Container(
                  //color: Colors.white,
                  width: (width < 860)
                    ? width * 0.6
                    : width * 0.4,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _nameController,
                        keyboardType: TextInputType.text,
                        onChanged: (value) {},
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your name";
                          }
                        },
                        textAlign: TextAlign.left,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Name',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2,),
                      TextFormField(
                        controller: _subjectController,
                        keyboardType: TextInputType.text,
                        onChanged: (value) {},
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter a subject line";
                          }
                        },
                        textAlign: TextAlign.left,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Subject',
                          prefixIcon: const Icon(
                            Icons.short_text,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2,),
                      TextFormField(
                        maxLines: 12,
                        controller: _messageController,
                        keyboardType: TextInputType.multiline,
                        initialValue: null,
                        autocorrect: true,
                        onChanged: (value) {},
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter a message body";
                          }
                        },
                        textAlign: TextAlign.left,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Message',
                          prefixIcon: const Icon(
                            Icons.wrap_text,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              _nameController.clear();
                              _subjectController.clear();
                              _messageController.clear();
                            },
                            icon: const Icon(Icons.cancel, size: 18,),
                            label: const Text("Clear",
                              style: TextStyle(
                                fontSize: 20
                            ),),
                          ),
                          const SizedBox(width: 2,),
                          ElevatedButton.icon(
                            onPressed: () async {
                              final mailtoLink = Mailto(
                              to: ['a.thibs98@gmail.com'],
                              cc: ['thibaudeauapps@gmail.com'],
                              subject: 'From: ${_nameController.text}: ${_subjectController.text}',
                              body: _messageController.text,
                              );

                              _nameController.clear();
                              _subjectController.clear();
                              _messageController.clear();
                              await launch(mailtoLink.toString());
                            },
                            icon: const Icon(Icons.send, size: 18,),
                            label: const Text("Send",
                              style: TextStyle(
                                fontSize: 20,
                              ),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
