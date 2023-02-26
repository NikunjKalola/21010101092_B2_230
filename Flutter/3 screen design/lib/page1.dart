import 'package:flutter/material.dart';
import 'package:jhon_doe_3_design/Page3.dart';
import 'package:jhon_doe_3_design/credit_card_page.dart';
import 'package:jhon_doe_3_design/drawer.dart';
import 'package:jhon_doe_3_design/page2.dart';
import 'package:jhon_doe_3_design/user.dart';
import 'package:share_plus/share_plus.dart';
class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  var gradient1 = LinearGradient(
    colors: [
      Color.fromRGBO(109, 152, 247, 1),
      Color.fromRGBO(105, 185, 242, 1),
      Color.fromRGBO(98, 197, 232, 1),
      Color.fromRGBO(97, 215, 230, 1),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer1(),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.1, 0.4, 0.7, 0.9],
                        colors: [
                          Color.fromRGBO(109, 152, 247, 1),
                          Color.fromRGBO(105, 185, 242, 1),
                          Color.fromRGBO(98, 197, 232, 1),
                          Color.fromRGBO(97, 215, 230, 1),
                        ],
                      ),
                    ),
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          child: Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 30,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // do something
                                        _key.currentState!.openDrawer();
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    width: 60,
                                    margin: const EdgeInsets.only(top: 17),
                                    child: const Text(
                                      'CARDS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 30,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // do something
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  'choose which card you want to see\n your last transaction',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 90, 30, 0),
                    child: Column(
                      children: [
                        getCustomLineTextWidget('currency', 'USD'),
                        getCustomLineTextWidget('Balance', '\$750.58'),
                        getCustomLineTextWidget('Papeerless', '\$125.45'),
                        getCustomLineTextWidget('White off', '\$25.50'),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          margin: const EdgeInsets.only(top: 35),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0.0),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            onPressed: () {
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(97, 215, 230, 1),
                                    Color.fromRGBO(98, 197, 232, 1),
                                    Color.fromRGBO(105, 185, 242, 1),
                                    Color.fromRGBO(109, 152, 247, 1),
                                  ]),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                constraints:
                                    const BoxConstraints(minWidth: 160.0),
                                child: const Text('Select',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 180),
              height: 199,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16, right: 6),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 199,
                        width: 344,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(28),
                        //   border: Border.all(color: Colors.grey),
                        //   color: Colors.white,
                        // ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 21,
                              top: 35,
                              child: Image.asset(cards[index].cardChip),
                              width: 60,
                              height: 40,
                            ),
                            Positioned(
                                left: 60,
                                top: 90,
                                child: Text(
                                  cards[index].cardNumber,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 19,
                                    letterSpacing: 1.5,

                                  ),
                                )),
                            Positioned(
                              right: 21,
                              top: 35,
                              child: Image.asset(cards[index].cardType),
                              width: 60,
                              height: 40,
                            ),
                            const Positioned(
                              left: 29,
                              bottom: 49,
                              child: Text(
                                'card Holder',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                                left: 29,
                                bottom: 31,
                                child: Text(
                                  cards[index].user,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                              right: 29,
                              bottom: 49,
                              child: Text(
                                'Expiry Date',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Positioned(
                                right: 62,
                                bottom: 31,
                                child: Text(
                                  cards[index].cardExpired,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

  Widget getCustomLineTextWidget(txt1, txt2) {
    return Row(children: [
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey.shade400),
            ),
          ),
          constraints: const BoxConstraints(maxWidth: 320, maxHeight: 300),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    txt1,
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: Text(
                    txt2,
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
