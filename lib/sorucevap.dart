import 'package:flutter/material.dart';
import 'package:deneme/mydrawer.dart';
import 'package:getwidget/getwidget.dart';

class Sorucevap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SorucevapState();
}

class _SorucevapState extends State {
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
                    "Soru-Cevap",
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
            GFAccordion(
                title: '??deal Kilo Nedir?',
                content: 'V??cut a????rl??????n??n s??n??fland??r??lmas??nda kulland??????m??z Beden Kitle ??ndeksi (k??saca BKI ) dedi??imiz bir tabir vard??r. Kilonuzu, boyunuzun metre cinsinden karesine b??lerek hesaplanan bir belirte?? diye d??????n??n. ????kan sonu?? 20-24,5 aras??nda ise v??cut a????rl??????na ba??l?? riskler y??n??nden sa??l??kl?? aral??ktas??n??z. ????kan sonu?? aral??ktan daha b??y??k bir de??er ise ad??m ad??m ??i??manl????a do??ru gitti??inizi d??????nebilirsiniz. Bu de??er 30 ve ??st??n?? g??stermeye ba??lad??????nda ise art??k Obeziteden s??z etmeye ba??l??yoruz.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: '??deal Kilo Nedir?',
                content: 'V??cut a????rl??????n??n s??n??fland??r??lmas??nda kulland??????m??z Beden Kitle ??ndeksi (k??saca BKI ) dedi??imiz bir tabir vard??r. Kilonuzu, boyunuzun metre cinsinden karesine b??lerek hesaplanan bir belirte?? diye d??????n??n. ????kan sonu?? 20-24,5 aras??nda ise v??cut a????rl??????na ba??l?? riskler y??n??nden sa??l??kl?? aral??ktas??n??z. ????kan sonu?? aral??ktan daha b??y??k bir de??er ise ad??m ad??m ??i??manl????a do??ru gitti??inizi d??????nebilirsiniz. Bu de??er 30 ve ??st??n?? g??stermeye ba??lad??????nda ise art??k Obeziteden s??z etmeye ba??l??yoruz.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: 'G??be??imi Eritmek ????in Ne Yapmal??y??m?',
                content: 'Size ??zel haz??rlanm???? sa??l??kl?? bir beslenme program??, ya?? dokular??n??zdan kaybederek kilo vermenizi sa??lar. Ve bu kay??plar en ??ok depo ya?? hangi b??lgede ise daha ??ok o b??lgeden olu??ur. Fazla ya??lanma g??bek b??lgesinde ise ya?? kayb?? da en ??ok oradan olacakt??r. Size ??zel diyet ile ya??l??l??????n?? azaltt??????n??z v??cudunuzun, kar??n kaslar??n?? ??al????t??racak egzersizler yaparak form kazanmas??n?? sa??lay??p g??be??inizin sizin deyiminizle eridi??ini g??rmeniz m??mk??n. G??bek eriten, basen eriten, bacak incelten bir besin maalesef yok.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: '??ekeri T??ketmeli Miyim?',
                content: '??u ??aya at??lan ilave ??eker ise sordu??unuz hi?? mi hi?? ihtiyac??n??z yok.  ??eker rafine karbonhidrat dedi??imiz bir karbonhidrat. V??cudun karbonhidrata ihtiyac?? oldu??u do??rudur. Ama sa??l??kl?? olan?? kompleks karbonhidratlara. V??cudun ??eker ihtiyac??n?? biz zaten yedi??imiz ekmekten, meyveden, ??orbadan ve kuru baklagillerden kar????l??yoruz. ??eker ya da ??eker ilaveli bir besin t??ketimin azaltmak / kald??rmak sizi sa??l??kl?? yar??nlara bir ad??m daha yakla??t??r??r.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: 'G??be??imi Eritmek ????in Ne Yapmal??y??m?',
                content: 'Size ??zel haz??rlanm???? sa??l??kl?? bir beslenme program??, ya?? dokular??n??zdan kaybederek kilo vermenizi sa??lar. Ve bu kay??plar en ??ok depo ya?? hangi b??lgede ise daha ??ok o b??lgeden olu??ur. Fazla ya??lanma g??bek b??lgesinde ise ya?? kayb?? da en ??ok oradan olacakt??r. Size ??zel diyet ile ya??l??l??????n?? azaltt??????n??z v??cudunuzun, kar??n kaslar??n?? ??al????t??racak egzersizler yaparak form kazanmas??n?? sa??lay??p g??be??inizin sizin deyiminizle eridi??ini g??rmeniz m??mk??n. G??bek eriten, basen eriten, bacak incelten bir besin maalesef yok.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
            GFAccordion(
                title: '??ekeri T??ketmeli Miyim?',
                content: '??u ??aya at??lan ilave ??eker ise sordu??unuz hi?? mi hi?? ihtiyac??n??z yok.  ??eker rafine karbonhidrat dedi??imiz bir karbonhidrat. V??cudun karbonhidrata ihtiyac?? oldu??u do??rudur. Ama sa??l??kl?? olan?? kompleks karbonhidratlara. V??cudun ??eker ihtiyac??n?? biz zaten yedi??imiz ekmekten, meyveden, ??orbadan ve kuru baklagillerden kar????l??yoruz. ??eker ya da ??eker ilaveli bir besin t??ketimin azaltmak / kald??rmak sizi sa??l??kl?? yar??nlara bir ad??m daha yakla??t??r??r.',
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.minimize)
            ),
          ],
        ),
      ),
    );
  }
}
