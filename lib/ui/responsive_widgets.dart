// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/screens/social_links.dart';

import 'screens/about_me.dart';

class ResponsiveButtons extends StatelessWidget {
  const ResponsiveButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final width, height;

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMe()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Theme.of(context).secondaryHeaderColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(40, 0, 0, 0),
                          offset: Offset(1, 10),
                          blurRadius: 20)
                    ]),
                child: Text(
                  "knowme".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 247, 240, 247)),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SocialLinks()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Theme.of(context).secondaryHeaderColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(40, 0, 0, 0),
                          offset: Offset(1, 10),
                          blurRadius: 20)
                    ]),
                child: Text(
                  "touchme".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 247, 240, 247)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResponsiveButtonsSamllScreen extends StatelessWidget {
  const ResponsiveButtonsSamllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width, height;

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutMe()),
            );
          },
          child: Container(
            width: width,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(40, 0, 0, 0),
                      offset: Offset(1, 10),
                      blurRadius: 20)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "knowme".tr(),
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 247, 240, 247)),
                ),
                Icon(Icons.arrow_forward_ios_rounded,
                    size: 17, color: Color.fromARGB(255, 247, 240, 247))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SocialLinks()),
            );
          },
          child: Container(
            width: width,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(40, 0, 0, 0),
                      offset: Offset(1, 10),
                      blurRadius: 20)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "touchme".tr(),
                  style: TextStyle(
                      fontFamily: 'Baloo',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 247, 240, 247)),
                ),
                Icon(Icons.arrow_forward_ios_rounded,
                    size: 17, color: Color.fromARGB(255, 247, 240, 247))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
