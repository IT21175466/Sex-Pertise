import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sexpertise/Interfaces/AddQuestion.dart';
import 'package:sexpertise/Interfaces/Admin/AddArticle.dart';
import 'package:sexpertise/Interfaces/Admin/ArticleListPage.dart';
import 'package:sexpertise/Interfaces/AdminHomeScreen.dart';
import 'package:sexpertise/Interfaces/AdminQuizList.dart';
import 'package:sexpertise/Interfaces/QuizDoingPage.dart';
import 'package:sexpertise/Interfaces/Settings.dart';
import 'package:sexpertise/Interfaces/SignUPScreen.dart';
import 'package:sexpertise/Interfaces/SplashScreen.dart';
import 'package:sexpertise/Interfaces/UserHomeScreen.dart';
import 'package:sexpertise/Interfaces/UserQuizList.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
