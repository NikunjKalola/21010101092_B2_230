import 'package:flutter/material.dart';
import 'package:jhon_doe_3_design/Page3.dart';
import 'package:jhon_doe_3_design/credit_card_page.dart';
import 'package:jhon_doe_3_design/drawer.dart';
import 'package:jhon_doe_3_design/page1.dart';

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
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
                          height: 80,
                          child: Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
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
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 11, left: 60),
                                    child: const Text(
                                      'Jhon Doe',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
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
                                child:  Text(
                                  cards[0].cardNumber,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
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
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 0,top: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(margin: EdgeInsets.only(left: 20,bottom: 10),child: Text('This month')),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getCustomListTile('Property Taxes', '-\$120', true),
                                getCustomListTile('Design Fee', '+\$280', false),
                                getCustomListTile('Transefer On', '-\$180', true),
                                getCustomListTile('Transefer On', '-\$220', true),
                                getCustomListTile('Design Fee', '+\$280', false),
                                getCustomListTile('Transefer On', '-\$220', true),
                                getCustomListTile('Design Fee', '+\$280', false),
                                getCustomListTile('Transefer On', '-\$220', true),


                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                top:  BorderSide(
                                    color: Colors.cyan, width: 2),
                                right: BorderSide(
                                    color: Colors.grey.shade100, width: 2))),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(14),
                              child: const Icon(
                                Icons.ac_unit_outlined,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              'Transaction',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100.withOpacity(0.6),
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey.shade100, width: 2))),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(14),
                              child: const Icon(
                                Icons.stacked_line_chart,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              'Statistics',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )),
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 140),
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  padding: const EdgeInsets.only(left: 16, right: 6),
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      elevation: 2,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 199,
                        width: 344,
                        child: Stack(
                          children: [
                            const Positioned(
                                top: 14,
                                left: 120,
                                child: Text('current balance')),
                            const Positioned(
                                top: 39,
                                left: 90,
                                child: Text(
                                  '\$750. 968',
                                  style: TextStyle(
                                      fontSize: 32, fontWeight: FontWeight.w900),
                                )),
                            const Positioned(
                              top: 90,
                              left: 134,
                              child: Text('This month'),
                            ),
                            const Positioned(
                              left: 70,
                              bottom: 49,
                              child: Text('incomes'),
                            ),
                            Positioned(
                              bottom: 36,
                              left: 43,
                              child: Image.asset(
                                'assets/icons/blue-down.png',
                                height: 19,
                                width: 20,
                              ),
                            ),
                            const Positioned(
                                bottom: 30,
                                left: 70,
                                child: Text(
                                  '\$1234. 968',
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w900),
                                )),
                            const Positioned(
                              right: 70,
                              bottom: 49,
                              child: Text('expences'),
                            ),
                            const Positioned(
                                bottom: 30,
                                right: 56,
                                child: Text(
                                  '\$7812. 968',
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w900),
                                )),
                            Positioned(
                              bottom: 40,
                              right: 136,
                              child: Image.asset(
                                'assets/icons/red-triangle-.png',
                                height: 14,
                                width: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

  Widget getCustomListTile(txt1, txt2, isRed) {
    return Container(
        constraints: const BoxConstraints(maxWidth: 400, maxHeight: 90),
        decoration:  BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey.shade100, width: 2)),
        ),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: [
                if (isRed)
                  Expanded(
                    child: Container(
                      width: 10,
                      child: Image.asset(
                        'assets/icons/red-triangle-.png',
                        height: 17,
                        width: 19,
                      ),
                    ),
                  )
                else
                  Expanded(
                    child: Container(
                      width: 10,
                      child: Image.asset(
                        'assets/icons/blue-down.png',
                        height: 15,
                        width: 1,
                      ),
                    ),
                  ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Text(
                              txt1,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(top: 6),
                                child: Text(getCurrentDate()))),
                      ],
                    ),
                  ),
                ),
                if (isRed)
                  Expanded(
                    child: Container(
                        width: 10,
                        child: Text(
                          txt2,
                          style:
                              const TextStyle(fontSize: 19, color: Colors.red),
                        )),
                  )
                else
                  Expanded(
                    child: Container(
                        width: 10,
                        child: Text(
                          txt2,
                          style:
                              const TextStyle(fontSize: 19, color: Colors.blue),
                        )),
                  )
              ],
            )));
  }

  getCurrentDate() {
    var date = DateTime.now().toString();

    var dateParse = DateTime.parse(date);

    var formattedDate =
        "${dateParse.day}th, ${dateParse.timeZoneOffset.inHours}:${dateParse.timeZoneOffset.inMinutes}-${dateParse.year}";

    return formattedDate;
  }
}
