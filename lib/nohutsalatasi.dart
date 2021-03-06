import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class NohutSalatasi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NohutSalatasiState();
}

class _NohutSalatasiState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    "Bildirimler",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize:18,  color: Color(0xffC85D72),),
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
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    children:[
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 15.0,
                              left: 10.0,
                            ),
                            child: Image(
                              width: MediaQuery.of(context).size.width * 0.94,
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/gunlukyemek.png"),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15.0,),
                            constraints: BoxConstraints(maxWidth: 270),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0)),
                            child:Text("Nar Ek??ili Nohut Salatas?? Tarifi",style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4D565B),
                            ),),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F0F0),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 75,
                            width: 168,
                            margin: EdgeInsets.only(
                              left: 10.0,
                              right: 5.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                ),
                                Text(
                                  "Haz??rlama S??resi",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4D565B),
                                  ),
                                ),
                                Text(
                                  "20 Dakika",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff4D565B),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF0F0F0),
                                borderRadius: BorderRadius.all(Radius.circular(10))),
                            height: 75,
                            width: 168,
                            margin: EdgeInsets.only(
                              left: 10.0,
                              right: 5.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                ),
                                Text(
                                  "Kalorisi",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4D565B),
                                  ),
                                ),
                                Text(
                                  "344 Kcal",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff4D565B),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Color(0xffffffff),
                            width: MediaQuery.of(context).size.width * 0.94,
                            margin: EdgeInsets.only(
                              left: 10.0,
                              right: 5.0,
                              top:15.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Malzemeler",  style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4D565B),
                                ),),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                  ),
                                  constraints: BoxConstraints(maxWidth: 500),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child:Text("- 250 gram ha??lanm???? nohut\n\n"
                                      "- 10 adet cherry domates(ortadan ikiye kesilmi??)\n\n"
                                      "- 2 adet salatal??k(k??p kesilmi??)\n\n"
                                      "- 1/2 ba?? dereotu(k??y??lm????)\n\n"
                                      "- 1/2 ba?? taze nane(k??y??lm????)\n\n"
                                      "- 1/2 ba?? taze so??an(ince ince kesilmi??)\n\n", style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff4D565B),
                                  ),),
                                ),
                                Text("Sosu ????in",  style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4D565B),
                                ),),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                  ),
                                  constraints: BoxConstraints(maxWidth: 500),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child:Text("- 1/2 ??ay barda???? zeytinya????\n\n"
                                      "- 1/2 adet limon suyu\n\n"
                                      "- 4 yemek ka???????? nar ek??isi\n\n"
                                      "- 1/2 ??ay ka???????? tuz (azalt??p artt??r??labilir)\n\n", style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff4D565B),
                                  ),),
                                ),
                                Text("Yap??l??????",  style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4D565B),
                                ),),
                                Container(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                  ),
                                  constraints: BoxConstraints(maxWidth: 500),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child:Text("1) Ha??lanm???? nohut, cherry domates, salatal??k ve t??m ye??illikleri bir kaseye al??p malzemeleri ezmeden birbirine kar????acak ??ekilde harmanlay??n.\n\n"
                                      "2) Ayr?? bir kasede zeytinya????, limon suyu ve nar ek??isini tuzu ekledikten sonra homojen bir kar??????m elde edene kadar ????rp??n.\n\n"
                                      "3) Sosu salatan??n i??ine ekleyip kar????t??r??n.\n\n"
                                      "4) Kaselere b??l????t??r??p servis edin.\n\n", style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff4D565B),
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

