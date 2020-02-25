import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uberclone/screens/home.dart';
import 'package:uberclone/states/app_state.dart';

void main() {
  return runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => new AppState())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Uber clone'),
    );
  }
}
