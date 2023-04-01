import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
              child: ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    print("Signed out");
                    Navigator.pushNamed(context, '/');
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black26;
                    }
                    return Colors.white;
                  }),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                child: const Text('Log Out',
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
        ),
    );
  }
}

// child: ElevatedButton(
//   onPressed: () {
//     FirebaseAuth.instance.signOut().then((value) {
//       print("Signed out");
//       Navigator.pushNamed(context, '/');
//     });
//   },
//   child: const Text('Logout'),
// ),
