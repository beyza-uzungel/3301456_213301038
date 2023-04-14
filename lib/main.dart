import 'package:flutter/material.dart';
import 'package:myapp/anasayfa.dart';


import 'package:myapp/hakkimizda.dart';
import 'package:myapp/kayit.dart';
import 'package:myapp/login.dart';
import 'package:myapp/profil.dart';


//import 'package:myapp/profilsayfasi.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hata ayıklama basligi
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyLogin(),
      //initialRoute: 'login',
    routes: { 
      'login' : (context) => MyLogin(),
      'kayit' :(context) => KayitOl(),
      'kayitOldu' :(context) => MyLogin(),
      'anasayfa':(context) => AnaSayfa(),
      'asgeridon' : (context) => AnaSayfa(),
      'profilimegit' :(context) => Profilim(),
      'hakkimizda':(context) => Hakkimizda(),
      'cikis':(context) => MyLogin()

    }, 
    
      
    );
  }
}
