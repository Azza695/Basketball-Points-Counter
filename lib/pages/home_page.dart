
import 'package:flutter/material.dart';

class BasketballCounter extends StatefulWidget {
   BasketballCounter({super.key});

  @override
  State<BasketballCounter> createState() => _BasketballCounterState();
}

class _BasketballCounterState extends State<BasketballCounter> {
   int teamAPoints =0;
   int teamBPoints =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Points Counter",style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IntrinsicHeight(  // to appear tht vertical line
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,   // spaces equals between widgets in row
              children: [
                Column(
                  children: [
                    Text("Team A",style: TextStyle(
                      fontSize: 30
                    ),),
                    Text(teamAPoints.toString(),style: TextStyle(
                        fontSize: 150
                    ),),
                    ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: Text("Add 1 Point",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          minimumSize: Size(120, 40)
                      ),
                    ),
                    SizedBox(height: 4,),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamAPoints+=2;
                        });
                      },
                      child: Text("Add 2 Point",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          minimumSize: Size(120, 40)
                      ),
                    ),
                    SizedBox(height: 4,),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamAPoints+=3;
                        });
                      },
                      child: Text("Add 3 Point",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          minimumSize: Size(120, 40)
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    Text("Team B",style: TextStyle(
                        fontSize: 30
                    ),),
                    Text('$teamBPoints',style: TextStyle(
                        fontSize: 150
                    ),),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text("Add 1 Point",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          minimumSize: Size(120, 40)
                      ),
                    ),
                    SizedBox(height: 4,),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamBPoints+=2;
                        });
                      },
                      child: Text("Add 2 Point",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          minimumSize: Size(120, 40)
                      ),
                    ),
                    SizedBox(height: 4,),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamBPoints+=3;
                        });
                      },
                      child: Text("Add 3 Point",style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          minimumSize: Size(120, 40)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: (){
              setState(() {
                teamAPoints=0;
                teamBPoints=0;
              });
            },
            child: Text("Reset",style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                minimumSize: Size(170, 40),
            ),
          ),
        ],
      ),
    );
  }
}
