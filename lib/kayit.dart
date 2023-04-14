import 'package:flutter/material.dart';

class KayitOl extends StatefulWidget {
  const KayitOl({super.key});

  @override
  State<KayitOl> createState() => _KayitOlState();
}

class _KayitOlState extends State<KayitOl> {
  @override
  Widget build(BuildContext context) {
    String username = ' ', password=' ', email=' ';
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/kayit.jpg',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 55, top: 130),
              child: Text(
                'Kayıt OL !',
                style: TextStyle(
                    color: Colors.white, fontSize: 37, fontFamily: 'Kaushan'),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.37,
                    right: 35,
                    left: 35),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        labelText: 'Adınız', labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Adınızı Giriniz..',),
                    onSaved: (deger) {
                      username = deger!;
                    },
                    validator: (deger) {
                      if (deger!.length < 4) {
                        return 'Adınız en az 3 karakter olmalı';
                      } else
                        return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                    TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        labelText: 'Email', labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Email Adresinizi Giriniz..',),
                    onSaved: (deger) {
                      email = deger!;
                    },
                    validator: (deger) {
                      if (deger== '@' || deger =='.com') {
                        return ' Geçerli email giriniz ';
                      } else
                        return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                   TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
            
                            ),
                            labelText: 'Şifre',labelStyle: TextStyle(fontSize: 20),
                            hintText: 'Şifrenizi Giriniz..'),
                        onSaved: (deger) {
                          password = deger!;
                        },
                        validator: (deger) {
                          if (deger!.length < 6) {
                            return 'Şifre ne az 6 karakter olmalı';
                          } else
                            return null;
                        },
                      ),
                      SizedBox(
                        height:40 ,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('Kayıt ol\nGiriş Yap', style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                         // fontFamily: 'Kaushan'
                        ),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor:Color.fromRGBO(49, 2, 48, 0.957) ,
                          child: IconButton( 
                            color: Colors.white,
                            onPressed:  () {
                            Navigator.pushNamed(context, 'kayitOldu');
                              
                            } ,                             
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                        ],
                      ),SizedBox(
                        height: 18,
                      ),
                     /*  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: () {
                            
                          }, child: Text('Kayıt Ol', style: 
                          TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                            color: Colors.black
                          ),)),
                           TextButton(onPressed: () {
                            
                          }, child: Text('Şifremi Unuttum', style: 
                          TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                            color: Colors.black
                          ),))

                        ],
                      ) */
            
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
