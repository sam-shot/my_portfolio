// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    final width, height;

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        centerTitle: true,
        elevation: 1,
        title: Text(
          'aboutmetitle'.tr(),
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).backgroundColor,
                Theme.of(context).indicatorColor,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(40, 0, 0, 0),
                              offset: Offset(1, 10),
                              blurRadius: 20)
                        ]),
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(40, 0, 0, 0),
                                    offset: Offset(1, 20),
                                    blurRadius: 30),
                              ]),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(300)),
                            child: Image.asset(
                              "assets/images/mypicture.jpg",
                              width: width > 600 ? width / 4 : width / 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).appBarTheme.foregroundColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 1,
                            width: 100,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'aboutmetext'.tr(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Baloo'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).appBarTheme.foregroundColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 1,
                            width: 100,
                          ),
                        ),
                      ],
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
}
