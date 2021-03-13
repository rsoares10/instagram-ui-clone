import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/views/home/home.view.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram UI Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        defaultScale: true,
        minWidth: 450.0,
        defaultName: MOBILE,
        breakpoints: <ResponsiveBreakpoint>[
          ResponsiveBreakpoint.resize(450.0, name: MOBILE),
          ResponsiveBreakpoint.resize(700.0, name: TABLET),
          ResponsiveBreakpoint.resize(800.0, name: DESKTOP),
        ],
      ),
      home: HomeView(),
    );
  }
}
