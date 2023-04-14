import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
     String username = ' ', password = ' ';
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/login_pages.jpg',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'HOŞGELDİN !',
                style: TextStyle(
                    color: Colors.white, fontSize: 37, fontFamily: 'Kaushan'),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.45,
                    right: 35,
                    left: 35),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Adınız',
                      labelStyle: TextStyle(fontSize: 20),
                      hintText: 'Adınızı Giriniz..',
                    ),
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
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        labelText: 'Şifrenizi Giriniz',
                        labelStyle: TextStyle(fontSize: 20),
                        hintText: 'Şifre'),
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
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Giriş Yap',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          // fontFamily: 'Kaushan'
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromRGBO(49, 2, 48, 0.957),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushNamed(context, 'anasayfa');
                          },
                          icon: Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'kayit');
                          },
                          child: Text(
                            'Kayıt Ol',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Şifremi Unuttum',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.black),
                          ))
                    ],
                  )
                ]),
              ),
            )
          ],
        ),
      
      ),
    );
  }
}




