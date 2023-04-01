import 'package:firebase_demo1/app/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo1/app/pages/sign_in.dart';
import 'app/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SignInScreen(),
        '/signUp': (context) => const SignUpScreen(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

  // //store data
  // final db = FirebaseFirestore.instance;
  // final cities = db.collection("cities");
  //
  // //single document "SF"
  // final docRef = db.collection("cities").doc("SF");
  // docRef.get().then(
  //       (DocumentSnapshot doc) {
  //     final data = doc.data() as Map<String, dynamic>;
  //     print(data);
  //   },
  //   onError: (e) => print("Error getting document: $e"),
  // );








