import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:qr_flutter/qr_flutter.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(size: 42.0),
      ),
      // otherAccountsPictures: [
      //   CircleAvatar(
      //     backgroundColor: Colors.yellow,
      //     child: Text('A'),
      //   ),
      //   CircleAvatar(
      //     backgroundColor: Colors.red,
      //     child: Text('B'),
      //   )
      // ],
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text('To page 1'),
          onTap: () => Navigator.of(context).push(_NewPage(1)),
        ),
        ListTile(
          title: const Text('To Page 2'),
          onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: const Text('other drawer item'),
          onTap: () {},
        ),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.yellow[700]),
        backgroundColor: Colors.blue[900],
        title: Row(
          children: [
            Text('Test'),
            Spacer(),
            Container(
              child: Column(
                children: [
                  Badge(
                      position: BadgePosition.topStart(
                        top: 3,
                      ),
                      badgeColor: Colors.red,
                      badgeContent: Text(
                        '  99+ ',
                        style: TextStyle(color: Colors.white),
                      ),
                      child: IconButton(
                          icon: Icon(
                            Icons.inbox_outlined,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          onPressed: () {})),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                    child: Text(
                      'INBOX',
                      style: TextStyle(fontSize: 10, color: Colors.yellow[700]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 50,
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1547665979-bb809517610d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "PROFILE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.yellow[700]),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150.0),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 6),
                              color: Colors.black38)
                        ]),
                    child: Material(
                      elevation: 10.0,
                      shape: CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      color: Colors.transparent,
                      child: CircleAvatar(
                        radius: 130,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          minRadius: 120,
                          maxRadius: 120,
                          backgroundImage: AssetImage('assets/a1.jpg'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'SOMSAK SAENARUK',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blue[900]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          QrImage(
                            backgroundColor: Colors.white,
                            data: "https://pub.dev/packages/stripe_payment",
                            version: QrVersions.auto,
                            size: 300.0,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'MEMBER ID : 101201301',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'BIRTHDAY : 12-09-1999',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'TEL: +6689777 5452',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90.0),
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black,
                                    offset: new Offset(0.0, 5.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 1.0)
                              ],
                            ),
                            child: RaisedButton(
                              elevation: 30,
                              color: Colors.yellow[700],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.payment_outlined,
                                      color: Colors.black,
                                      size: 50,
                                    ),
                                    Text(
                                      " My CARD",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        children: [
                          Text(
                            'MY FAMILY',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(150.0),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: Offset(0, 6),
                                          color: Colors.black38)
                                    ]),
                                child: Material(
                                  elevation: 10.0,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.hardEdge,
                                  color: Colors.transparent,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      minRadius: 40,
                                      maxRadius: 40,
                                      backgroundImage:
                                          AssetImage('assets/a1.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(150.0),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: Offset(0, 6),
                                          color: Colors.black38)
                                    ]),
                                child: Material(
                                  elevation: 10.0,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.hardEdge,
                                  color: Colors.transparent,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      minRadius: 40,
                                      maxRadius: 40,
                                      backgroundImage:
                                          AssetImage('assets/a1.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(150.0),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: Offset(0, 6),
                                          color: Colors.black38)
                                    ]),
                                child: Material(
                                  elevation: 10.0,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.hardEdge,
                                  color: Colors.transparent,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      minRadius: 40,
                                      maxRadius: 40,
                                      backgroundImage:
                                          AssetImage('assets/a1.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'View All >',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NewPage extends MaterialPageRoute<void> {
  _NewPage(int id)
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Page $id'),
              elevation: 1.0,
            ),
            body: Center(
              child: Text('Page $id'),
            ),
          );
        });
}
