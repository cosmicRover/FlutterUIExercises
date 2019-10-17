import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height/2,
              //width: MediaQuery.of(context).size.width/2,
              child: FlareActor("assets/sample2.flr", animation: "Swing", fit: BoxFit.contain),
            ),
          //gotta use expanded to fit multiples listviews/gridviews in a single page
          Expanded(child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.horizontal,
            children: List.generate(20, (index){
              return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(63, 61, 86, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0)
                      )
                    ),
                    height: MediaQuery.of(context).size.height/5,
                    child: Center(child:Text("")),
                  ),
              );
            })
          ),)
        ],
      ),
    );
  }
}