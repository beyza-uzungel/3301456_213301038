import 'package:flutter/material.dart';
import 'package:myapp/login.dart';
import 'package:myapp/yanmenu.dart';


class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 131, 40, 152),
        title: Text('S U S İ A', style: TextStyle(fontWeight: FontWeight.w800,fontFamily: 'Kaushan'),),
        centerTitle: true, //title merkeze geldi
        actions: <Widget> [
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.star),
          tooltip: 'Puan ver',),  // uzun basınca yazı ve sesli komut
           IconButton(onPressed: () {
            
          }, icon: Icon(Icons.share),
          tooltip: 'Paylaş',)
        ],
      ),
      drawer: YanMenu(), // sol üstteki 3 çizgi

      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 75),
                backgroundColor: Color.fromARGB(255, 59, 2, 69),
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(45))),
                
              onPressed: () {
              
            }, child: Text('ŞEHRİNİN HABERLERİ')),
             SizedBox(
              height: 20,
            ),
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 75),
                backgroundColor: Color.fromARGB(255, 83, 15, 95),
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(45))),
                
              onPressed: () {
              
            }, child: Text('SPOR HABERLERİ')),
             SizedBox(
              height: 20,
            ),
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 75),
                backgroundColor: Color.fromARGB(255, 107, 28, 120),
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(45))),
                
              onPressed: () {
              
            }, child: Text('MAGAZİN HABERLERİ')),
             SizedBox(
              height: 20,
            ),
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 75),
                backgroundColor: Colors.purple,
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(45))),
                
              onPressed: () {
              
            }, child: Text('AKADEMİK HABERLER')),
             SizedBox(
              height: 20,
            ),
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 75),
                backgroundColor: Color.fromARGB(255, 191, 98, 208),
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(45))),
                
              onPressed: () {
              
            }, child: Text('DÜNYADAN HABERLER')),
             SizedBox(
              height: 20,
            ),
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 75),
                backgroundColor: Color.fromARGB(255, 206, 140, 218),
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(45))),
                
              onPressed: () {
              
            }, child: Text('SOSYAL MEDYA\n  HABERLERİ'))
          ],
        ),
      ),
      
    );
    
  }
}

