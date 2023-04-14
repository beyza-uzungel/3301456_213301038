import 'package:flutter/material.dart';

class Hakkimizda 
 extends StatelessWidget {
  const Hakkimizda 
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: 
     AppBar(
      leading :
      IconButton(onPressed: () {
       Navigator.pop(context);
          
        }, icon: Icon(Icons.arrow_back), alignment: Alignment.centerRight,),
        title: Text('Hakkımızda')
      ,centerTitle: true,),
    body: Container(
      color: Color.fromRGBO(241, 176, 241, 1),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Text('SUSİA , \n2023 yılında Selçuk Üniversitesi Bilgisayar Mühendisliği 2. Sınıf öğrencisi olan Beyza Uzungel tarafından gelişrilmiştir. Uygulamanın temel amacı gündemi her anlanda takip edebilmek, haber hakkında yorum belirebikmek ve kolaca paylaşabilmektir. Kategorilere ayrılmış olması istediğiniz içeriğe ulaşabilmek adına büyük kolayık tanır.', style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
        ),
      ),
    ),
      
      
      

    );
  }
}