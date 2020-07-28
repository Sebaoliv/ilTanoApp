import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsWidget extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<ProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Column(children: <Widget>[
          Container(
            child:Text("Insumos & productos",
                      style: GoogleFonts.sairaExtraCondensed(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40,
                      )))
          )
          ,
          Expanded(
              child: ListView(children: [
           InkWell(
          child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              
              padding: EdgeInsets.all(5.0),
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/prod.jpg")),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(100.0),
                  topRight: const Radius.circular(100.0),
                ),
              ),
              ),
        )), InkWell(
          child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              padding: EdgeInsets.all(5.0),
              width: 500,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/prod.jpg")),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(100.0),
                  topRight: const Radius.circular(100.0),
                ),
              ),
              ),
        )),
         InkWell(
          child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              padding: EdgeInsets.all(5.0),
              width: 500,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/prod.jpg")),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(100.0),
                  topRight: const Radius.circular(100.0),
                ),
              ),
              ),
        )),
         InkWell(
          child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              padding: EdgeInsets.all(5.0),
              width: 500,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/prod.jpg")),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(100.0),
                  topRight: const Radius.circular(100.0),
                ),
              ),
              ),
        )),
         InkWell(
          child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              padding: EdgeInsets.all(5.0),
              width: 500,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/prod.jpg")),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(100.0),
                  topRight: const Radius.circular(100.0),
                ),
              ),
              ),
        )),
         InkWell(
          child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              padding: EdgeInsets.all(5.0),
              width: 500,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/prod.jpg")),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(100.0),
                  topRight: const Radius.circular(100.0),
                ),
              ),
              ),
        )),
        
          ])),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)))
        ]));
  }
}
