// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, deprecated_member_use, must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

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
          'social'.tr(),
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
                  SizedBox(
                    height: 10,
                  ),
                  LinkWithImage(
                    image: "github.png",
                    link: "https://github.com/sam-shot/",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LinkWithImage(
                    image: "twitter.png",
                    link: "https://twitter.com/samshot_01",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LinkWithImage(
                    image: "linkedin.png",
                    link: "https://www.linkedin.com/in/scoder/",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LinkWithImage(
                    image: "ig.png",
                    link: "https://instagram.com/samshot_01",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LinkWithImage(
                    image: "facebook.png",
                    link: "https://www.facebook.com/scoder01",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LinkWithImage(
                    image: "gmail.png",
                    link: "mailto:samshotmedia01@gmail.com",
                  ),
                  SizedBox(
                    height: 10,
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

class LinkWithImage extends StatelessWidget {
  String image;
  String link;
  LinkWithImage({
    required this.image,
    required this.link,
    super.key,
  });

  openURL() async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw "Could not launch";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        openURL();
      },
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(40, 0, 0, 0),
                  offset: Offset(1, 4),
                  blurRadius: 20)
            ]),
        child: Row(children: [
          SizedBox(
              height: 40,
              child: Image.asset(
                "assets/images/$image",
                fit: BoxFit.contain,
              )),
          SizedBox(
            width: 15,
          ),
          Flexible(
              child: Text(
            link,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(color: Color.fromARGB(255, 247, 240, 247)),
          ))
        ]),
      ),
    );
  }
}
