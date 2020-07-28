import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:il_tano_app/contact_request_form_widget.dart';
import 'package:il_tano_app/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ilTano',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/back.jpg"),
            fit: BoxFit.cover,
          )),
        ),
        Center(
            child: Column(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                "images/logosinback.png",
              ),
            ),
            new Expanded(
              child: Container(
                child: ListView(
                  children: <Widget>[
                    ItemRes(),
                    ItemProd(),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  ),
                  color: Colors.white,
                ),
              ),
            )
          ],
        )),
      ],
    ));
  }
}

class ItemRes extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => ContactRequestFormWidget()));

        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              padding: EdgeInsets.all(5.0),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/tano.jpg")),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(100.0),
                  topRight: const Radius.circular(100.0),
                ),
              ),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Reserva",
                      style: GoogleFonts.sairaExtraCondensed(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40,
                      ))))),
        ));
  }
}

class ItemProd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsWidget()));

        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
              padding: EdgeInsets.all(5.0),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/prod.jpg")),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(100.0),
                  topRight: const Radius.circular(100.0),
                ),
              ),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Insumos & productos",
                      style: GoogleFonts.sairaExtraCondensed(
                          textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40,
                      ))))),
        ));
  }
}
