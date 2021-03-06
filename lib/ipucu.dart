import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';

class Ipucu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IpucuState();
}

class _IpucuState extends State {
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
                    "??pu??lar??",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffc85d72),
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
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 15.0),
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 15.0,
                                  left: 10.0,
                                ),
                                child: Image(
                                  width:
                                      MediaQuery.of(context).size.width * 0.94,
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/ipucu1.png"),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 15.0,
                                  left: 10.0,
                                ),
                                child: Text(
                                  "1- D??zenli Uyku Uyuyun",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4D565B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                    left: 10.0,
                                  ),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(maxWidth: 350),
                                    child: Container(
                                      child: Text(
                                        "D??zenli uyku kilo vermenin temelidir. V??cudunuz i??in yeterli olmayan uyku saatleri ertesi g??n v??cudunuzda ??dem birikmesine neden olur. Bu durumda tart?? ??st??nde kilonuzu fazla g??r??rs??n??z. Ayr??ca yap??lan bilimsel ??al????malar gece ge?? saatlere kadar oturanlar bireylerin daha fazla kalori ald??????n?? ve uzun vadeli daha fazla kilo ald?????? g??r??lm????t??r.",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 15.0,
                                  left: 10.0,
                                ),
                                child: Image(
                                  width:
                                  MediaQuery.of(context).size.width * 0.94,
                                  fit: BoxFit.cover,
                                  image:
                                  AssetImage("assets/images/ipucu2.png"),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 15.0,
                                  left: 10.0,
                                ),
                                child: Text(
                                  "2- Ye??il ??ay ve bol su i??in",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4D565B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                    top: 15.0,
                                    left: 10.0,
                                  ),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(maxWidth: 350),
                                    child: Container(
                                      child: Text(
                                        "Ye??il ??ay i??erisinde bulunan kate??in ile hem metabolizma h??zland??r??c?? etkisi hem de ba????????kl??k sistemini g????lendirici etkisi bulunmaktad??r. Ye??il ??ay bu etkisi ile hem iyi bir i??ecek alternatifidir hem de kilo vermenize yard??mc?? olacakt??r. Su hem v??cudunuzda ??i??kinlik hissi veren hem de kilonuzun tart?? ??zerinde fazla ????kmas??na neden olan ??demin d????ar?? at??lmas?? i??in temel i??ecektir. Ayn?? zamanda ya????n v??cuttan at??lmas?? i??in gereklidir. G??nde ortalama 2-2,5 litre su i??meniz gereklidir. E??er su i??me al????kanl??????n??z yok ise bunun zaman i??erisinde olu??aca????n?? unutmay??n ve su i??mekten hemen vazge??meyin.",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff4D565B),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
