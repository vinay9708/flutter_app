import 'package:flutter/material.dart';

void main() => runApp(responsive());

class responsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        body:
        SingleChildScrollView(  scrollDirection: Axis.vertical,


      child: Stack(
          children: <Widget>[

              Container(
                height: 150.0,
                child: AppBar(
                  title: Text('RESPONSIVE UI'),
                  centerTitle: true,
                ),
              ),

            Container(

              margin: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 110.0, bottom: 200.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 1.0, //extend the shadow
                    offset: Offset(
                      0.0, // Move to right 10  horizontally
                      10.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],


              ),

            ),
            ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[

                listCard(
                  colors:Colors.red,
                ),



                listCard(
                  colors:Colors.blue,
                ),



                listCard(
                  colors:Colors.pink,
                ),





                listCard(
                  colors:Colors.grey,
                ),


              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}

class listCard extends StatelessWidget {
  const listCard({this.colors});
final Color colors ;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin:EdgeInsets.only(top:420.0,bottom: 30.0,left:10.0,right: 10.0),
        height: 120.0,
        width: 120.0,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
         color: colors,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              10.0, // Move to bottom 10 Vertically
            ),
          )
        ],


      ),

    );
  }
}
