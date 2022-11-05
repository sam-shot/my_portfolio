// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'provider/theme_data.dart';
import 'provider/theme_provider.dart';
import 'ui/screens/home_page.dart';

import 'package:easy_localization/easy_localization.dart';

const List<String> list = <String>['en', 'fr', 'es', 'de'];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: [Locale('en'), Locale('fr'), Locale('es'), Locale('de')],
    path: 'assets/translations',
    child: DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MTheme currentTheme = MTheme();

  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: currentTheme.currentTheme(),
      useInheritedMediaQuery: true,
      locale: context.locale,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
                position: PopupMenuPosition.under,
                tooltip: "Themes",
                icon: Icon(Icons.brightness_4_rounded),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text("Dark Mode"),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text("Light Mode"),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Text("Use System Settings"),
                    ),
                  ];
                },
                onSelected: (value) {
                  if (value == 0) {
                    currentTheme.switchTheme();
                  } else if (value == 1) {
                    currentTheme.switchTheme2();
                  } else if (value == 2) {
                    currentTheme.switchTheme3();
                  }
                })
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    elevation: 15,
                    underline: Container(
                      width: 3,
                      height: 0,
                      color: Color.fromARGB(0, 124, 77, 255),
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;

                        context.locale = Locale(value);
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ));
            },
          ),
          leadingWidth: 90,
          centerTitle: true,
          elevation: 1,
          title: Text(
            "My Resume",
            style: TextStyle(fontFamily: "Poppins"),
          ),
        ),
        body: Home(),
      ),
    );
  }
}
