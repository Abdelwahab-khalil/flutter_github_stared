import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gemography_challenge/provider/githubProvider.dart';
import 'package:gemography_challenge/widgets/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GithubProvider())
      ],
      child: MaterialApp(
        title: 'Gemography Challenge',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: Home(),
      ),
    );
  }
}

