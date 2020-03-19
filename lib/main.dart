import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'SplashScreen.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   CalendarController _controller;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: Text('Minhasoft Portal'),
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TableCalendar(calendarController: _controller)
        ],
      )),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
                accountName: Text('Uzair Malani'),
                accountEmail: Text('uzairmalani80@gmail.com'),
                currentAccountPicture: GestureDetector (
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),

                ),
                  decoration: new BoxDecoration(
                    color: Colors.blue
                  ),

                ),
                //body
                InkWell(

                    child: ListTile(
                    title: Text('Clock-In'),
                    leading: Icon(Icons.watch_later, color: Colors.blue,),
                  ),
                ),
                InkWell(

                    child: ListTile(
                    title: Text('Submit Task'),
                    leading: Icon(Icons.timelapse, color: Colors.blue,),
                  ),
                ),
                InkWell(

                    child: ListTile(
                    title: Text('Break In'),
                    leading: Icon(Icons.free_breakfast, color: Colors.blue,),
                  ),
                ),
                InkWell(

                    child: ListTile(
                    title: Text('Break Out'),
                    leading: Icon(Icons.free_breakfast, color: Colors.blue,),
                  ),
                ),
                InkWell(

                    child: ListTile(
                    title: Text('Clock Out'),
                    leading: Icon(Icons.watch_later, color: Colors.blue,),
                  ),
                ),
              

          ],
        ),
      ),
    );
  }
}
