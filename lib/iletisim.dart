import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContactState();
}

class _ContactState extends State {
  var maskFormatter = new MaskTextInputFormatter(mask: '+90 (###) ###-##-##', filter: { "#": RegExp(r'[0-9]') });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: Builder(
        builder: (context) => Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 10.0),
                  child: Image(
                    image: AssetImage("../assets/images/logo.png"),
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
                      )),
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
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text(
                    "İletişim",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffC85D72),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 0,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10.0, right: 8.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.navigate_before,
                      ),
                      iconSize: 20,
                      onPressed: () {
                        Navigator.pushNamed(context, "/main");
                      },
                    )),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      constraints: BoxConstraints(maxWidth: 370),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Adınız Soyadınız',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      constraints: BoxConstraints(maxWidth: 370),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'E-Posta Adresiniz',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      constraints: BoxConstraints(maxWidth: 370),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextField(
                        inputFormatters: [maskFormatter],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Telefon',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      constraints: BoxConstraints(maxWidth: 370),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Konu',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(maxWidth: 370),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            maxLines: 8,
                            decoration: InputDecoration.collapsed(
                                border: OutlineInputBorder(),
                                hintText: "Açıklama"),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      constraints: BoxConstraints(maxWidth: 370),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child:
                          SizedBox(
                            height: 50,
                            width: 350,
                            child:ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffC85D72), // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () {},
                              child: Text(' Gönder'),
                            ),
                          ),

                        ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}