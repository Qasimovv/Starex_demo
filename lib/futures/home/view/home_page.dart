import 'package:flutter/material.dart';
import 'package:starex_demo/futures/home/widgets/buttons/add_button.dart';
import 'package:starex_demo/futures/home/widgets/buttons/rectangle_button.dart';
import 'package:starex_demo/futures/home/widgets/cards/card.dart';
//..w
//..w
//..w
//..o
//.

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color programColor = const Color(0xFF0c78ff);
  List<String> nameList = [
    'Siparişler',
    'Bağlamalar',
    'Ünvanlarım',
    'Kuryeler',
    'Müracatlar',
    'Tenzimleme',
  ];
  List<Icon> iconList = [
    Icon(Icons.shopping_cart),
    Icon(Icons.shop_outlined),
    Icon(Icons.location_on),
    Icon(Icons.two_wheeler),
    Icon(Icons.storage),
    Icon(Icons.settings),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(
        programColor: programColor,
        nameList: nameList,
        iconList: iconList,
      ),
    );
  }
}

AppBar appBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    actions: [
      IconButton(
          icon: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          onPressed: () {})
    ],
    leading: IconButton(
      icon: Image.asset(
        'assets/icons/menu.png',
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.07,
      ),
      iconSize: 5.0,
      onPressed: () {},
    ),
    backgroundColor: Color(0xFF0c78ff),
  );
}

class Body extends StatelessWidget {
  const Body(
      {Key key, @required this.programColor, this.nameList, this.iconList})
      : super(key: key);

  final Color programColor;
  final List<String> nameList;
  final List<Icon> iconList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: programColor,
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RectangleButton(
                    textColor: programColor,
                    backgroundColor: Colors.white,
                    title: 'Sifariş Et',
                  ),
                  RectangleButton(
                    textColor: Colors.white,
                    backgroundColor: Colors.orange.shade400,
                    title: 'Beyan Et',
                  ),
                ],
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              //color: Colors.white,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFe6f2ff),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MenuCard(
                                  name: nameList[0],
                                  icon: iconList[0],
                                ),
                                MenuCard(
                                  name: nameList[1],
                                  icon: iconList[1],
                                ),
                                MenuCard(
                                  name: nameList[2],
                                  icon: iconList[2],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                MenuCard(
                                  name: nameList[3],
                                  icon: iconList[3],
                                ),
                                MenuCard(
                                  name: nameList[4],
                                  icon: iconList[4],
                                ),
                                MenuCard(
                                  name: nameList[5],
                                  icon: iconList[5],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xFFe6f2ff),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 12),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Balance',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFF0c78ff),
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color(0xFFcee6ff),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'TL:',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '   0\$',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                    AddButton()
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color(0xFFcee6ff),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'US:',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '   0\$',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                    AddButton()
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color(0xFFcee6ff),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Cari:',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '0\$',
                                      style: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                  ],
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
            ),
            flex: 6,
          )
        ],
      ),
    );
  }
}
