import 'package:flutter/material.dart';
import 'package:travel_hack_client/main.dart';
import 'package:travel_hack_client/screens/scan_barcode.dart';

class StartScreen extends StatelessWidget{

  @override
  Widget build( BuildContext context ) {
    return StartScreenWidget();
  }

}

class StartScreenWidget extends StatefulWidget {
  @override
  _StartScreenWidgetState createState() => _StartScreenWidgetState();
}

class _StartScreenWidgetState extends State<StartScreenWidget> {

  //bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey[300],
      appBar: AppBar(
        title: Text(''),

      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              //child: Icon(Icons.android, size: 80, color:  Colors.black),
              decoration: BoxDecoration(
                  color: Colors.grey[300],//red[400],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[500],
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
              child: new FlatButton(onPressed: ()=>onStartButtonTap(context),
                  child: new Text('Начать\nработу',
                    style: Theme.of(context).textTheme.body1,))

            ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//
//                Padding(
//                  padding: EdgeInsets.only(top: 50, right: 3),
//                  child: FlatButton(
//                    color: Colors.white,
//                    child: Text('Light', style: TextStyle(color: Colors.black),),
//                    onPressed: () {
//                      setState(() {
//                        darkMode = false;
//                      });                    },
//                  ),
//                ),
//                Padding(
//                  padding: EdgeInsets.only(top: 50, left: 3),
//                  child: FlatButton(
//                    color: Colors.black,
//                    child: Text('Dark', style: TextStyle(color: Colors.white),),
//                    onPressed: () {
//                      setState(() {
//                        darkMode = true;
//                      });
//                    },
//                  ),
//                ),
//              ],
//            ),
          ],
        ),
      ),

//      new Container(
//        child: new Center(
//          child: new RaisedButton(
//              shape: RoundedRectangleBorder(
//                  borderRadius: new BorderRadius.circular(18.0),
//                  side: BorderSide(color: Colors.red)
//              ),
//              child: new Text(
//                'Нажмите, чтобы начать работу',
//                style: Theme.of(context).textTheme.title,),
//              onPressed: ()=>onStartButtonTap(context)
//          ),
//        ),
//      ),
    );
  }
  onStartButtonTap(BuildContext context){
    Navigator.pushNamed(context, ScanBarcodeRoute);
  }


  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}


