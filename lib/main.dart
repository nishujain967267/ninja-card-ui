import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  //uses materialapp instead of the myapp.
home: NinjaCard(),
//this is what that will be shown on the home screen.
));

class NinjaCard extends StatefulWidget {


  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
    
    int ninjaLevel=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
    appBar: AppBar(
      title: Text("Ninja Id Card"),
      centerTitle: true,
      backgroundColor:Colors.grey[850],
      elevation:0.0,
      //to remove the shadow of the text of the appbar we make the value to zero of the elevation.
    ),
    floatingActionButton: FloatingActionButton(


      onPressed: (){

        setState(() {
          ninjaLevel+=1;
        });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.grey[800],
      

    ),


    

    body: Padding
    (
      padding:EdgeInsets.fromLTRB(30.0, 40.0,30.0,0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/ninja.jpg"),
              radius: 60.0,
              
            ),
          ),
          Divider(
            height: 60.0,
            color: Colors.grey[800],
          ),
           Text(
             "NAME",
             style: TextStyle(
               color: Colors.grey,
               letterSpacing: 2.0,


             ),
           ),
           SizedBox(height:10.0),
            Text(
             "Laddu hattori",
             style: TextStyle(
               color: Colors.amberAccent[200],
               letterSpacing: 2.0,
               fontSize: 20.0,
              // fontStyle: FontStyle.italic,
               fontWeight: FontWeight.bold,


             ),
           ),
           SizedBox(height:30.0),
            Text(
             "CURRENT NINJA LEVEL",
             style: TextStyle(
               color: Colors.grey,
               letterSpacing: 2.0,


             ),
           ),
           SizedBox(height:10.0),
            Text(
             "$ninjaLevel",
             style: TextStyle(
               color: Colors.amberAccent[200],
               letterSpacing: 2.0,
               fontSize: 20.0,
              // fontStyle: FontStyle.italic,
               fontWeight: FontWeight.bold,


             ),
           ),
           SizedBox(height:30.0),

           Row(
             children: <Widget>[
             Icon(
               Icons.email,
               color: Colors.grey[400],
             ),
             SizedBox(width: 10.0),
             Text(
               "chin.ninjahatodi.co.in",
               style: TextStyle(

                 color:Colors.grey[400],
                 fontSize: 20.0,
                 letterSpacing: 1.0,
               ),
             ),

             ],
           )



        ],



      ),
    ),



    );
    //using scaffald instead of the container as it allows us to quickly set the layout for the app.
        
  }
}


