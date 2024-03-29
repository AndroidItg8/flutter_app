import 'package:flutter/material.dart';
import 'package:flutter_app/secondpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
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
        ),
        home: MyHomePage(title: 'Flutter App'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

    void _navigatetosecondpage(){
      setState((){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => secondpage()),
      );
    });
    }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/demo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
            buttonSection
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _navigatetosecondpage,
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Widget buttonSection =
  Container(
    margin: const EdgeInsets.all(4),
    padding: const EdgeInsets.all(4),
    decoration:BoxDecoration(
      border:Border(
  left:BorderSide(
  color:Colors.black38,
      width: 1.0

  ),
      top:BorderSide(
  color:Colors.lightBlueAccent,
  width: 1.0
  ),
  right:BorderSide(
  color:Colors.amber,
  width: 1.0
  ),
  bottom: BorderSide(
  color: Colors.blueAccent,
  width: 1.0,


  ),
  )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,



      children: [

        new ColumnWidget(Colors.blue, Icons.call, 'Call'),
        new ColumnWidget(Colors.blue, Icons.near_me, 'Near'),
        new ColumnWidget(Colors.blue, Icons.share, 'Share'),
      ],
    ),
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  Widget _listSection() {
    return new ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              position.toString(),
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        );
      },
    );
  }

  Widget titleSection = Container(
      decoration:BoxDecoration(
          border:Border(
            left:BorderSide(
                color:Colors.black38,
                width: 1.0

            ),
            top:BorderSide(
                color:Colors.lightBlueAccent,
                width: 1.0
            ),
            right:BorderSide(
                color:Colors.amber,
                width: 1.0
            ),
            bottom: BorderSide(
              color: Colors.blueAccent,
              width: 1.0,


            ),
          )),
      padding: const EdgeInsets.all(20),
      child: Row(children: <Widget>[
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(

                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('30'),
      ]));

  BoxDecoration myBoxDecoration(){
    return BoxDecoration(
      border:Border(
        left:BorderSide(
            color:Colors.black38,
            width: 1.0

        ),
        top:BorderSide(
            color:Colors.lightBlueAccent,
            width: 1.0
        ),
        right:BorderSide(
            color:Colors.amber,
            width: 1.0
        ),
        bottom: BorderSide(
          color: Colors.blueAccent,
          width: 1.0,


        ),
      ),
    );
  }


}

class ColumnWidget extends StatelessWidget {
  Color color;

  IconData icon;
  String label;

  ColumnWidget(MaterialColor color, IconData icon, String label) {
    this.color = color;
    this.icon = icon;
    this.label = label;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildButtonColumn(color, icon, label);
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),

          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }







}

class BorderWidget extends StatelessElement{
  BorderWidget(StatelessWidget widget) :
        super(widget);


  BoxDecoration myBoxDecoration(){
    return BoxDecoration(
      border:Border(
        left:BorderSide(
            color:Colors.black38,
            width: 1.0

        ),
        top:BorderSide(
            color:Colors.lightBlueAccent,
            width: 1.0
        ),
        right:BorderSide(
            color:Colors.amber,
            width: 1.0
        ),
        bottom: BorderSide(
          color: Colors.blueAccent,
          width: 1.0,


        ),
      ),
    );
  }


}





