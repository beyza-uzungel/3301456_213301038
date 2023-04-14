import 'package:flutter/material.dart';

class YanMenu extends StatelessWidget {
  const YanMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Drawer(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              /* Container(
              width: 65,
              height: 65,
              padding: EdgeInsets.all(20.0),
              child: Image.asset('assets/degiscek.jpg')) ,*/
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.all_inclusive),
                      title: Text('Hakkımızda'),
                      onTap: () {
                        Navigator.pushNamed(context, 'hakkimizda');
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Profil'),
                      onTap: () {
                        Navigator.pushNamed(context, 'profilimegit');
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                    ListTile(
                      leading: Icon(Icons.message),
                      title: Text('Sohbetler'),
                      onTap: () {},
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                    ExpansionTile(
                      leading: Icon(Icons.business_center_sharp),
                      title: Text('Haberler'),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ListTile(
                            leading: Icon(Icons.favorite),
                            title: Text('Beğendiğin Haberler'),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ListTile(
                            leading: Icon(Icons.bookmark_add),
                            title: Text('Kaydettiğin Haberler'),
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ListTile(
                            leading: Icon(Icons.location_on_sharp),
                            title: Text('Şehrinin Haberleri'),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                    ListTile(
                      leading: Icon(Icons.contact_phone),
                      title: Text('İletişim'),
                      onTap: () {},
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                    ListTile(
                      leading: Icon(Icons.keyboard_tab),
                      title: Text('Çıkış'),
                      onTap: () {
                        Navigator.pushNamed(context, 'cikis');
                      },
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
