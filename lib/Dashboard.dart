import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();

}
  class _DashboardState extends State<Dashboard> {

  Material MyItems(IconData icon, String heading, color){
    return Material(
      color: Colors.white,  //Box Ko COlor
      elevation: 4, // height of the Shadow
      shadowColor: Colors.brown, // shadow ko color
      borderRadius: BorderRadius.circular(23),
      // corners ko radius

      child: Center(
        child:Padding(
          padding:const EdgeInsets.all(8.0),
          child:Row (
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                 //text
                  Padding(
                    padding: const EdgeInsets.all(8.0),

                    child: Text(heading, style:TextStyle(
                      color: Colors.brown, // Color Inside the Box Yani ki Text ko color ho
                      fontSize: 22.0,  // Text ko Size Ho Yo
                 ),


                    ),
                  ),

                //icons:
                  Material (
                  color: color,

                    borderRadius:  BorderRadius.circular(24.0),
                    child: Padding(
                    padding: const EdgeInsets.all(16.0),
                      child: Icon(icon,
                      color: Colors.black,  // Icon Bhitra ko Color
                      size: 24.0,
                    ),
                  ),


                  )],
              )
            ]
          )
        )
      ),

    );



  }

  @override
    Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Welcome to my World',
      home: Scaffold(
        appBar: AppBar(

          title: Text('Music Essential'), // app bar ma aaune font ho or text ho yo
        ),
        body: StaggeredGridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          crossAxisSpacing: 12.0,  // Vertical Spacing
          mainAxisSpacing: 12.0,  //horizontal spacing
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            MyItems(Icons.add_circle, "Alankars", Colors.blue),
            MyItems(Icons.add_location, "Nepali", Colors.greenAccent), //myIttems

            MyItems(Icons.add_shopping_cart, "English", Colors.greenAccent), //myIttems
            MyItems(Icons.add_circle, "Hindi", Colors.greenAccent), //myIttems
            MyItems(Icons.add_circle, "Tamil", Colors.greenAccent), //myIttems

            MyItems(Icons.add_circle, "Raagas", Colors.greenAccent), //myIttems
            MyItems(Icons.add_circle, "Rhymes", Colors.greenAccent), //myIttems
//myIttems
          ],

          staggeredTiles: [
            StaggeredTile.extent(2, 130.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0),

            StaggeredTile.extent(2, 130.0),
            StaggeredTile.extent(2, 130.0),

          ],




        )

      ),
    );
  }
  }
