import 'package:flutter/material.dart';
import 'Homemodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff282828),
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.jpg',
          width: 100,
        ),
        actions: <Widget>[
          Icon(
            Icons.cast,
            color: Colors.white70,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            Icons.notifications_none,
            color: Colors.white70,
          ),
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            Icons.search,
            color: Colors.white70,
          ),
          Padding(padding: EdgeInsets.all(13)),
          CircleAvatar(
            child: Text(
              'R',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            backgroundColor: Color(0xff075E54),
            radius: 13,
          ),
          Padding(padding: EdgeInsets.all(10)),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black26,
        child: Container(
          height: 50,
          color: Colors.black26,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.trending_up_outlined,
                    color: Colors.white70,
                  ),
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.add_circle_outline,
                    size: 40,
                    color: Colors.white70,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.subscriptions_outlined,
                    color: Colors.white70,
                  ),
                  Text(
                    'Subscriptions',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.video_library_outlined,
                    color: Colors.white70,
                  ),
                  Text(
                    'Library',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: pallet.length,
          itemBuilder: (context, index) => new Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(pallet[index].image),
                              fit: BoxFit.fill),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      Positioned(
                        bottom: 8.0,
                        right: 5.0,
                        child: Container(
                          child: Text(
                            pallet[index].duration,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(pallet[index].dp),
                    ),
                    trailing: Icon(Icons.more_vert),
                    title: Text(
                      pallet[index].maintext,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          pallet[index].text,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
    );
  }
}
