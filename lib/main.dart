import 'package:calendartest/pages/profile.dart';
import 'package:calendartest/pages/profile1.dart';
import 'package:calendartest/pages/route.dart';
import 'package:calendartest/pages/signature.dart';
import 'package:calendartest/pages/stap.dart';
import 'package:calendartest/pages/toggle.dart';
import 'package:calendartest/pages/tutorial.dart';
import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: toggle(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double height = 2;
  final Color color = Colors.black;
  int _step = 0;
  var a = false, b = false, c = false;
  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(size: 42.0),
      ),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundColor: Colors.yellow,
          child: Text('A'),
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          child: Text('B'),
        )
      ],
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
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Row(
          children: [
            Text('Test'),
            Spacer(),
            Badge(
              badgeColor: Colors.orange,
              badgeContent: const Text('3'),
              child: const Icon(
                Icons.home,
                color: Colors.yellow,
                size: 30,
              ),
              position: BadgePosition.topStart(top: -5),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:
                  Text("Steeper", style: Theme.of(context).textTheme.headline),
            ),
            Container(
              height: 200.0,
              child: Stepper(
                onStepContinue: () {
                  setState(() {
                    if (_step >= 0) if (_step < 2) _step++;
                    if (_step == 0) a = true;
                    if (_step == 1) {
                      a = true;
                      b = true;
                    }
                    if (_step == 2) {
                      a = true;
                      b = true;
                      c = true;
                    }
                  });
                },
                onStepCancel: () {
                  setState(() {
                    if (_step > 0) _step--;
                    if (_step == 0) {
                      b = false;
                    }
                    if (_step == 1) {
                      c = false;
                    }
                  });
                },
                currentStep: _step,
                type: StepperType.horizontal,
                steps: [
                  Step(
                    content: Text("Same Content"),
                    title: Text(""),
                    isActive: _step == 0 ? true : a,
                  ),
                  Step(
                      content: Text("Same Content"),
                      title: Text(""),
                      state:
                          _step == 2 ? StepState.editing : StepState.complete,
                      isActive: _step == 1 ? true : b),
                  Step(
                      content: Text("Same Content"),
                      title: Text(""),
                      isActive: _step == 2 ? true : c),
                ],
              ),
            ),
            CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                minRadius: 50,
                maxRadius: 75,
                backgroundImage: AssetImage('assets/a.jpg'),
              ),
            ),
            Material(
              elevation: 10.0,
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              color: Colors.transparent,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xffFDCF09),
                child: CircleAvatar(
                  minRadius: 50,
                  maxRadius: 75,
                  backgroundImage: AssetImage('assets/a.jpg'),
                ),
              ),
            ),
            new Divider(
              color: Colors.black,
              indent: 16.8,
              endIndent: 16.8,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final boxWidth = constraints.constrainWidth();
                  final dashWidth = 7.0;
                  final dashHeight = height;
                  final dashCount = (boxWidth / (2 * dashWidth)).floor();
                  return Flex(
                    children: List.generate(dashCount, (_) {
                      return SizedBox(
                        width: dashWidth,
                        height: dashHeight,
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: color),
                        ),
                      );
                    }),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            QrImage(
              data: "https://pub.dev/packages/stripe_payment",
              version: QrVersions.auto,
              size: 200.0,
            ),
            SizedBox(
              height: 50,
            ),
          ],
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
