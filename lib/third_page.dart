import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
//global variables
final _formKey=GlobalKey<FormState>();
TextEditingController emailController= TextEditingController();
TextEditingController passController= TextEditingController();
bool passVisi=true;

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(
            top: h*0.08, left: w*0.04, right: w*0.04, bottom: h*0.08,
          ),
          child: Column(
            children: [
              Text("Log in", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  hintStyle: TextStyle(color: Colors.pink),
                  contentPadding: EdgeInsets.all(8),
                  focusColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: Icon(Icons.attach_email,
                  color: Colors.teal),
                ),
              ),
              TextFormField(
                controller: passController,
                decoration: InputDecoration(
                  hintText: "Enter Your Password",

                  hintStyle: TextStyle(color: Colors.pink),
                  contentPadding: EdgeInsets.all(8),
                  focusColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye,
                      color: Colors.teal),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onSurface: Colors.pink
                ),
                  onPressed:(){
                    },
                  child: Text("Log In",style: TextStyle(
                      fontSize: 20
                  ),)
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
