import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}
String avatarSrc= "https://static.thenounproject.com/png/2416926-200.png";
double conHeight=50;
double conWidth=50;

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          InkWell(
            onDoubleTap: (){
              setState(() {
                conHeight=50;
                conWidth=50;
              });
            },

            onTap: (){
              setState(() {
                conHeight=200;
                conWidth=200;
              });
            },
            child: AnimatedContainer(
                height:50,
                width: 50,
                duration: Duration(milliseconds: 3000),
            child: Image.network(avatarSrc)),
          ),
        ],
      )
    );
  }
}
