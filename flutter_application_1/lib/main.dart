import 'package:flutter/material.dart';
import 'page/welcome/welcome_page.dart';
import 'page/root/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  dynamic rootObject = {'isLogin': false, 'selectedIndex': 0};
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('I am MyAPP');
    return RootWidget(
        data: rootObject,
        child: MaterialApp(
          title: 'Flutter Demo',
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
            // This makes the visual density adapt to the platform that you run
            // the app on. For desktop platforms, the controls will be smaller and
            // closer together (more dense) than on mobile platforms.
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: {
            WelcomePage.sName: (context) {
              return WelcomePage(title: 'Welcome to my flutter app!');
            }
          },
          // navigatorObservers: <NavigatorObserver>[
          //   NewObserver()
          // ]
        ));
  }
}
