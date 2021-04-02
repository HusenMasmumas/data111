import 'package:flutter/material.dart';

class toggle extends StatefulWidget {
  @override
  _toggleState createState() => _toggleState();
}

class _toggleState extends State<toggle> {
  var toggleValues = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 0.7, crossAxisCount: 2),
        children: [
          ButtonWidgit(
            name: "Toggle Buttons",
            child: ToggleButtons(

              hoverColor:Colors.amber,
                //selectedColor:Colors.amber, icon
              fillColor:Colors.amber,

              onPressed: (t){
                setState(() {
                  toggleValues[t] = !toggleValues[t];
                });
              },
              isSelected: toggleValues,
              children: [
                Icon(Icons.ac_unit),
                Icon(Icons.g_translate),
                Icon(Icons.satellite),
              ],
            ),
          )
        ],
      ),
    );
  }
}
class ButtonWidgit extends StatelessWidget {
  final String name;
  final Widget child;
  ButtonWidgit({this.name,this.child});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.all(16.00),
          child: Text(name, style: Theme.of(context).textTheme.headline.copyWith(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black),
          textAlign: TextAlign.center,
          ),
          ),
          child,
        ],
      ),
    );
  }
}

