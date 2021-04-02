import 'package:flutter/material.dart';

class SecurePage extends StatelessWidget {
  final int index;

  SecurePage(this.index);

  Widget build(BuildContext context) {
    return new Material(
      color: Colors.amber,
      child: new InkWell(
        child: new Center(
          child: new Icon(
            Icons.security,
            color: Colors.white,
            size: index * 100.0 + 20.0,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) {
                return new SecurePage(index + 1);
              },
            ),
          );
        },
      ),
    );
  }
}

class VerifiedPage extends StatelessWidget {
  final int index;

  VerifiedPage(this.index);

  Widget build(BuildContext context) {
    return new Material(
      color: Colors.green,
      child: new InkWell(
        child: new Center(
          child: new Icon(
            Icons.verified_user,
            color: Colors.white,
            size: index * 100.0 + 20.0,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context) {
                return new VerifiedPage(index + 1);
              },
            ),
          );
        },
      ),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  @override
  State createState() => new MyHomePage1State();
}

class MyHomePage1State extends State<MyHomePage1> {
  int _page = 0;
  List<Widget> initialWidgets = <Widget>[
    new SecurePage(0),
    new VerifiedPage(0),
  ];

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: new List<Widget>.generate(initialWidgets.length, (int index) {
          return new IgnorePointer(
            ignoring: index != _page,
            child: new Opacity(
              opacity: _page == index ? 1.0 : 0.0,
              child: new Navigator(
                onGenerateRoute: (RouteSettings settings) {
                  return new MaterialPageRoute(
                    builder: (_) => initialWidgets[index],
                  );
                },
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _page,
        onTap: (int index) {
          setState(() {
            _page = index;
          });
        },
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.security),
            title: new Text('Secure'),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.verified_user),
            title: new Text('Verified'),
          ),
        ],
      ),
    );
  }
}
