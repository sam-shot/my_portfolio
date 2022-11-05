// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../responsive_widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final width, height;

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
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
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          borderRadius: BorderRadius.all(Radius.circular(300)),
                          child: Image.asset(
                            "assets/images/mypicture.jpg",
                            width: width > 600 ? width / 3 : width / 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Samuel Ademujimi',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins"),
                  ),
                  Text(
                    "developer".tr() + " • Lagos,Nigeria",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      child: width > 600
                          ? ResponsiveButtons()
                          : ResponsiveButtonsSamllScreen()),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Container(
                      width: width,
                      padding: EdgeInsets.all(20),
                      decoration:
                          BoxDecoration(color: Theme.of(context).primaryColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'docompanytitle'.tr(),
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Baloo'),
                          ),
                          SizedBox(
                            height: 10,
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
                            "docompany".tr(),
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Baloo'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
