import 'package:flutter/material.dart';
import 'package:myapp/login.dart';

class Profilim extends StatefulWidget {
  const Profilim({super.key});

 /*  String isim;

  Profilim({required this.isim}); */

  @override
  State<Profilim> createState() => _ProfilimState();
}

class _ProfilimState extends State<Profilim> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/prff.jpg',
                ),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushNamed(context, 'asgeridon');
              },
            ),
            actions: <Widget>[
              PopupMenuButton<String>(
                onSelected: (String result) {
                  // popup menüsünden seçim yapıldığında buradaki fonksiyon çağrılır
                  print('Seçilen öğe: $result');
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Öğe 1',
                    child: Text('Profilimi payşaş'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Öğe 2',
                    child: Text('Profilimi Düzenle'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Öğe 3',
                    child: Text('Ayarlar'),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  // margin: EdgeInsets.only(left: 110,top: 10),

                  child: Text(
                    'Profilim',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 37,
                        fontFamily: 'Kaushan'),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(left: 130, top: 130),
                  // margin: EdgeInsets.only(left: 110),
                  //padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/prfft.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SingleChildScrollView(
                  child: Container(
                    /*padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.45,
                      right: 35,
                      left: 35),*/
                    child: Column(children: [
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          labelText: 'Adınız.. ',
                          labelStyle: TextStyle(fontSize: 20),
                          hintText: 'Adınızı Giriniz..',
                        ),
                        onSaved: (newValue) {},
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      DropdownButton(
                        hint: Text(
                          'Şifremi değistirmek istiyorum..',
                          style: TextStyle(fontSize: 20),
                        ),
                        icon: Icon(Icons.arrow_downward),
                        iconSize: 24,
                        style: TextStyle(color: Colors.black),
                        items: [
                          DropdownMenuItem(
                            child: Text('Telefon numaram ile'),
                            value: 'phone',
                          ),
                          DropdownMenuItem(
                            child: Text('Email ile'),
                            value: 'email',
                          ),
                        ],
                        onChanged: (String? value) {},
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
