import 'package:flutter/material.dart';

class sep1 extends StatefulWidget {
  @override
  _sep1State createState() => _sep1State();
}

class _sep1State extends State<sep1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
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
                  color: Colors.yellow,
                ),
                color: Colors.yellow,
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
      ),
    );
  }
}
