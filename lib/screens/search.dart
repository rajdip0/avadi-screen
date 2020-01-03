import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Icon actionIcon = Icon(Icons.search);
  Widget myText = Text("home");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: myText,
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = Icon(Icons.close);
                  this.myText = TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: "Search upcoming events",
                          hintStyle: TextStyle(color: Colors.white)));
                } else {
                  this.actionIcon = Icon(Icons.search);
                  this.myText = Text("home");
                }
              });
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: _selectedPage,

        // // this will be set when a new tab is tapped
        // onTap: (int index) {
        //   setState(() {
        //     _selectedPage = index;
        //   });
        // },
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text('Explore'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.notifications),
            title: new Text('Notifications'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.insert_comment),
            title: new Text('Messages'),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              "Find events near",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: Text(
              "Avadi",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: 10,
            top: 30,
            child: Text(
              "CHANGE",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Positioned(
            right: 90,
            top: 30,
            child: Icon(
              Icons.near_me,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 100,
            child: Image(
              image: AssetImage("assets/images/map.png"),
            ),
          ),
          Positioned(
            top: 250,
            left: 10,
            child: Container(
              width: 194,
              height: 50,
              child: RaisedButton(
                child: Text('Today',style: TextStyle(
                  fontSize: 17
                )),
                onPressed: () {
                  print('You tapped on RaisedButton');
                },
              ),
            ),
          ),
          Positioned(
            top: 250,
            right: 10,
            child: Container(
              width: 194,
              height: 50,
              child: RaisedButton(
                child: Text('Tomorrow',style: TextStyle(
                  fontSize: 17
                )),
                onPressed: () {
                  print('You tapped on RaisedButton');
                },
              ),
            ),
          ),
          Positioned(
            top: 303,
            left: 10,
            child: Container(
              width: 194,
              height: 50,
              child: RaisedButton(
                child: Text('This week ',style: TextStyle(
                  fontSize: 17
                )),
                onPressed: () {
                  print('You tapped on RaisedButton');
                },
              ),
            ),
          ),
          Positioned(
            top: 303,
            right: 10,
            child: Container(
              width: 194,
              height: 50,
              child: RaisedButton(
                child: Text('This weekend ',style: TextStyle(
                  fontSize: 17
                )),
                onPressed: () {
                  print('You tapped on RaisedButton');
                },
              ),
            ),
          ),
          Positioned(
            top: 356,
            left: 10,
            child: Container(
              width: 194,
              height: 50,
              child: RaisedButton(
                child: Text('Next week',style: TextStyle(
                  fontSize: 17
                )),
                onPressed: () {
                  print('You tapped on RaisedButton');
                },
              ),
            ),
          ),
          Positioned(
            top: 356,
            right: 10,
            child: Container(
              width: 194,
              height: 50,
              child: RaisedButton(
                child: Text('All upcomming',style: TextStyle(
                  fontSize: 17
                )),
                onPressed: () {
                  print('You tapped on RaisedButton');
                },
              ),
            ),
          ),
          Positioned(
            top: 409,
            right: 10,
            child: Container(
              width: 391,
              height: 50,
              child: RaisedButton(
                child: Text('Choose a date',style: TextStyle(
                  fontSize: 17
                ),),
                onPressed: () {
                  print('You tapped on RaisedButton');
                },
              ),
            ),
          ),
          
          Positioned(
            top:500,
            left: 130,
            child: Text("SEARCH GROUPS",style: TextStyle(color: Colors.red ,fontSize: 20,fontWeight: FontWeight.bold),)
          ),
          Positioned(
            bottom:  20,
            left: 10,
            child: Text("Explore Meetup",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          )

        ],
      ),
    );
  }
}
