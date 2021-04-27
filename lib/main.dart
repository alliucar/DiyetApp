import 'package:deneme/diyettariflist.dart';
import 'package:deneme/iletisim.dart';
import 'package:deneme/ipucu.dart';
import 'package:flutter/material.dart';
import 'package:deneme/hakkimizda.dart';
import 'package:deneme/mydrawer.dart';
import 'package:deneme/diyetlistesi.dart';
import 'package:deneme/gununyemegi.dart';
import 'package:deneme/bildirimler.dart';
import 'package:deneme/diyettariflist.dart';
import 'package:deneme/ipucu.dart';
import 'package:deneme/iletisim.dart';
import 'package:deneme/nohutsalatasi.dart';
import 'package:deneme/bloglist.dart';
import 'package:deneme/blogyazi1.dart';
import 'package:deneme/vkhesap.dart';
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Homepage(),
    initialRoute: '/',
    routes: {
      '/vkhesap': (context) => VkHesap(),
      '/blogyazi1': (context) => BlogYazi1(),
      '/bloglist': (context) => BlogList(),
      '/nohutsalatasi': (context) => NohutSalatasi(),
      '/iletisim': (context) => Contact(),
      '/ipucu': (context) => Ipucu(),
      '/diyettariflist': (context) => DiyetTarifList(),
      '/bildirimler': (context) => Bildirimler(),
      '/hakkimizda': (context) => Hakkimizda(),
      '/diyetlistesi': (context) => DiyetListesi(),
      '/gununyemegi': (context) => GununYemegi(),
      '/main': (context) => Homepage(),
    },
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: Builder(
        builder: (context) => SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0, left: 10.0),
                    child: Image(
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 0,
                    ),
                  ),
                  InkWell(
                    child: Container(
                        margin: EdgeInsets.only(top: 50.0, right: 8.0),
                        decoration: const ShapeDecoration(
                          color: Color(0xffF0F3F5),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications_none,
                          ),
                          iconSize: 20,
                          onPressed: () {
                            Navigator.pushNamed(context, "/bildirimler");
                          },
                        )
                    ),

                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 50.0, right: 10.0),
                      decoration: const ShapeDecoration(
                        color: Color(0xffF0F3F5),
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                        ),
                        iconSize: 20,
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15.0,
                    ),
                    child:
                    InkWell(
                      child:Image(
                        width: MediaQuery.of(context).size.width * 0.94,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/slider.png"),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/diyettariflist");
                      },
                    ),

                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffCFD8DD),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.94,
                    margin: EdgeInsets.only(
                      top: 15.0,
                    ),
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text(
                      "Düzenli uyuyun.Düzenli uyku kilo vermenin temelidir.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff4D565B),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffC9DEDD),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/kalorihesapla.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Vücut Kitle E. Hesapla",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/vkhesap");
                    },
                  ),

                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF0F3F5),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        left: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image:
                            AssetImage("assets/images/diyettarifleri.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Diyet Tarifleri",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/diyettariflist");
                    },
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child:   Container(
                      decoration: BoxDecoration(
                          color: Color(0xffE6DDF0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        right: 5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/diyetblog.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Diyet Blog",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/bloglist");
                    },
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffD2D1DA),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        left: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/diyetlistesi.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Diyet Listesi",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/diyetlistesi");
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child:   Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        right: 5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/gununyemegi.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "Günün Yemeği",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/gununyemegi");
                    },
                  ),
                  InkWell(
                    child:   Container(
                      decoration: BoxDecoration(
                          color: Color(0xffE8F6F6),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 140,
                      width: 168,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(
                        top: 15.0,
                        left: 10.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage("assets/images/ipuclari.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                          ),
                          Text(
                            "İpuçları",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Image(
                                  image: AssetImage("assets/images/ok.png"),
                                ),
                              ),
                              Text(
                                "Detay",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff4D565B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/ipucu");
                    },
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  } //Widget
}
