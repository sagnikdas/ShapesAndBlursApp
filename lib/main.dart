import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 500.0,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(25.0),
              decoration: new ShapeDecoration(
                  color: Colors.white,
                  shadows: [BoxShadow(color: Colors.blue, blurRadius: 15.0)],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)))),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 100.0,
                    width: 300.0,
                    margin: EdgeInsets.all(25.0),
                    decoration: new ShapeDecoration(
                        color: Colors.blue,
                        shadows: [
                          BoxShadow(color: Colors.blue, blurRadius: 15.0)
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                  ),
                  Positioned(
                    top: 100.0,
                    child: Container(
                      height: 100.0,
                      width: 200.0,
                      margin: EdgeInsets.all(25.0),
                      decoration: new ShapeDecoration(
                          color: Colors.green,
                          shadows: [
                            BoxShadow(color: Colors.green, blurRadius: 15.0)
                          ],
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0)))),
                    ),
                  ),
                ],
              ),
            ),
            /*IconButton(
                color: Colors.purple,
                splashColor: Colors.yellow,
                tooltip: 'Increment Button',
                icon: Icon(
                  Icons.add,
                  size: 40.0,
                ),
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                }),*/

            OutlineButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
              borderSide: BorderSide(
                width: 2.0,
                color: Colors.blue,
              ),
              color: Colors.blue,
              highlightedBorderColor: Colors.blueGrey,
              splashColor: Colors.white,
              //highlightColor: Colors.red,
              child: Text("Increment Button"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.0),
                      bottom: Radius.circular(10.0))),
            ),
          ],
        ),
      ),
    );
  }
}
