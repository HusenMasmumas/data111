import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class profile1 extends StatefulWidget {
  @override
  _profile1State createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  int _value;
  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: FlutterLogo(size: 42.0),
      ),
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
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
                        style:
                            TextStyle(fontSize: 10, color: Colors.yellow[700]),
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
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1547665979-bb809517610d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'PROFILE',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow[700]),
                  ),
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
                            backgroundImage: AssetImage('assets/a1.jpg'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SOMSAK SENARUK',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'MEMBER ID : 101201301',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                  child: Text(
                    'ADD MEMBER',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900]),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.yellow[600],
                        ),
                        color: Colors.yellow[600],
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 6,
                      color: Colors.yellow[600],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.yellow[600],
                        ),
                        color: Colors.yellow[600],
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          '2',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 6,
                      color: Colors.grey,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: Colors.grey,
                        ),
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          '3',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'STEP2 : FILL INFORMATION',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
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
                RawMaterialButton(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 10, 20.0, 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          dropdownColor: Colors.grey,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 20,
                          iconEnabledColor: Colors.white,
                          elevation: 16,
                          isExpanded: true,
                          hint: Center(
                            child: Text(
                              'TITLE',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Center(child: Text("First Item")),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Center(child: Text("Second Item")),
                              value: 2,
                            ),
                            DropdownMenuItem(
                                child: Center(child: Text("Third Item")),
                                value: 3),
                            DropdownMenuItem(
                                child: Center(child: Text("Fourth Item")),
                                value: 4)
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 8),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorColor: Color(0XFFFFCC00),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    autocorrect: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      hintText: 'FIRSTNAME',
                      hintStyle: new TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      isDense: true,
                      filled: true,
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 8),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    cursorColor: Color(0XFFFFCC00),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    autocorrect: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      hintText: 'LASTNAME',
                      hintStyle: new TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      isDense: true,
                      filled: true,
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 10.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    cursorColor: Color(0XFFFFCC00),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    autocorrect: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      hintText: 'TEL',
                      hintStyle: new TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      isDense: true,
                      filled: true,
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                RawMaterialButton(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          dropdownColor: Colors.grey,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 20,
                          iconEnabledColor: Colors.white,
                          elevation: 16,
                          isExpanded: true,
                          hint: Center(
                            child: Text(
                              'RELATIONSHIP',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Center(child: Text("First Item")),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Center(child: Text("Second Item")),
                              value: 2,
                            ),
                            DropdownMenuItem(
                                child: Center(child: Text("Third Item")),
                                value: 3),
                            DropdownMenuItem(
                                child: Center(child: Text("Fourth Item")),
                                value: 4)
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                    ),
                  ),
                ),
                RawMaterialButton(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          dropdownColor: Colors.grey,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 20,
                          iconEnabledColor: Colors.white,
                          elevation: 16,
                          isExpanded: true,
                          hint: Center(
                            child: Text(
                              'MAXIMUM CREDIT',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Center(child: Text("First Item")),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Center(child: Text("Second Item")),
                              value: 2,
                            ),
                            DropdownMenuItem(
                                child: Center(child: Text("Third Item")),
                                value: 3),
                            DropdownMenuItem(
                                child: Center(child: Text("Fourth Item")),
                                value: 4)
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.0),
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black38,
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
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.0),
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.black38,
                          offset: new Offset(0.0, 5.0),
                          blurRadius: 10.0,
                          spreadRadius: 1.0)
                    ],
                  ),
                  child: RaisedButton(
                    elevation: 30,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "BACK",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
