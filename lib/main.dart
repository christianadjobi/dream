import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text('BIENVENUE TO FAST FOOD ',
              style: new TextStyle(
                  color:Colors.amber,
                  fontSize: 50.0,
                  fontStyle: FontStyle.italic
              ),
            ),

            new Card(
              elevation : 50.0,
              child : new Container(
                width: 500,
                height: 250,
                child : new Image.asset('images/food.jpeg',fit: BoxFit.cover),
              ),
            ),

            new RaisedButton(
              color: Colors.red, // background
              textColor: Colors.white, // foreground
              onPressed: () { },
              child: Text('NOS KIT'),
            ),

            new ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () { },
              child: Text('SERVICE KIT'),
            ),



            new ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () { },
              child: Text('MES COMMANDE'),
            ),

            new Container(
              height: 100,
              width: 900,
              color:Colors.black,
              margin: EdgeInsets.only(left:20, right:20),
              child : new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  new Icon(Icons.thumb_up,
                    size: 54,
                    color:Colors.white,
                  ),

                  new Icon(Icons.thumb_down,
                    size: 54,
                    color:Colors.white,
                  ),

                  new Icon(Icons.facebook,
                    size: 54,
                    color:Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),



      appBar: AppBar(title: Text(title)),
      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: Text('FAST DELICES'),
            ),

            ListTile(
              title: const Text('MON PROFIL'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('ESPACE KIT'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Parametre'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}