import "package:e_commerce/shoepage.dart";
import "package:flutter/material.dart";

import "constants.dart";

class Cartpage extends StatefulWidget{
  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
          ),
          SliverList.builder(
            itemCount: cartlist.length,
            itemBuilder: ((context, index) {
              return ElevatedButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Shoepage(ind1: index,
                        icolor:bcolor[cartlist[index]],
                        ecolor: ecolor[cartlist[index]])));
                },
                child: Container(
                  
                  padding: EdgeInsets.all(2),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                    Image.asset(shoeimg[cartlist[index]],height:110),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Runfalcon",style:TextStyle(fontSize:30,
                        color:Colors.black,
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w800,
                        )),
              
              
                        Text(price[cartlist[index]],
                        style:TextStyle(fontFamily: "Raleway",
                              fontSize:20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 53, 193, 58),
                              )),
                      
                      ],
                    ),
                  ],),
                ),
              );
            })),

        ],
      ),

    );

  }
}