import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  var num1=0,num2=0,sum=0;

  final TextEditingController t1= TextEditingController();
  final TextEditingController t2= TextEditingController();

  void doAdd(){
    setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }

  void doSub(){
    setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }

  void doMul(){
    setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }

  void doDiv(){
    setState((){
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1~/num2;
    });
  }

  void doClear(){
    setState(() {
          sum=0;
          num1=0;
          num2=0;
          t1.text="0";
          t2.text="0";
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $sum",
            style: TextStyle(
              fontSize: 20.0,
              color:Colors.purple,
              fontWeight:FontWeight.bold,
            ),),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter Number one"),
            controller: t1,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter Number two"),
            controller: t2,
          ),
          Padding(padding: const EdgeInsets.only(top:20.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                child: Text("+"),
                color: Colors.greenAccent,
                onPressed: doAdd,
              ),
              MaterialButton(
                child: Text("-"),
                color:Colors.greenAccent,
                onPressed: doSub,
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.only(top:20.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                child: Text("*"),
                color:Colors.greenAccent,
                onPressed: doMul,
              ),
              MaterialButton(
                child: Text("/"),
                color:Colors.greenAccent,
                onPressed: doDiv,
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.only(top:20.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                child: Text("Clear"),
                color:Colors.greenAccent,
                onPressed: doClear,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
