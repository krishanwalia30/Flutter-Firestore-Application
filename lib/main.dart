import 'package:flutter/material.dart';
import 'package:flutter_firestore/addProduct.dart';
import 'package:firebase_core/firebase_core.dart';
import 'homepage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(CrudFirestore());
}

class CrudFirestore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (ctx) => HomePage(),
        AddUser.routeName: (ctx) => AddUser(),
      },
    );
  }
}
