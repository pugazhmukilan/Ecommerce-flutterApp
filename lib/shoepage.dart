import "package:e_commerce/constants.dart";
import "package:flutter/material.dart";


class Shoepage extends StatefulWidget{
  late int ind1;
  late Color icolor;
  late Color ecolor;
  Shoepage({required this.ind1,required this.icolor,required this.ecolor});
  @override
  _ShoepageState createState() => _ShoepageState();
}

class _ShoepageState extends State<Shoepage>{

  @override
  Widget build(BuildContext context){
    return Expanded(
      flex:1,
      child: Container(
        //whole page container  decoration
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
          widget.icolor,
          widget.ecolor,],
          begin:Alignment.topCenter,
          end:Alignment.bottomCenter,),
        ),
        child:Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                CustomIconButton(icon: Icons.arrow_back,),
                CustomIconButton(icon: Icons.list,),
              
          
                ],
              ),
              SizedBox(
                height: 30,
              ),
              
              Row(
                
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
          
                  Text(
                    "Runfalcon",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Raleway",
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none, // Make sure no text decoration is applied
                    ),
                  ),
                  Text(
                    "sneakers",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none, // Make sure no text decoration is applied
                    ),
                  ),
          
                  ],),
                  
                ],
              ),
              
          
              Image(
                image: AssetImage(shoeimg[widget.ind1]),
                height: 300,
                
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                      "PRICE:",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Raleway",
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none, // Make sure no text decoration is applied
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                        Text(
                      "Rs.276",
                            
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.black,
                        
                        fontSize: 36,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.none, // Make sure no text decoration is applied
                      ),
                    ),
                      ],
                    ),
                  ),
          
                
          
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                      "COLORS:",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Raleway",
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none, // Make sure no text decoration is applied
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                      Row(children: [
                          RoundButton(
                                    backgroundColor: Colors.blue,
                                  ),
                          RoundButton(
                                    backgroundColor: Colors.black,
                                  ),
                          RoundButton(
                                    backgroundColor: Colors.green,
                                  ),
                      ],)
                      ],
                    ),
                  ),
                ],
              ),

            ButtonRow(listname: sizes,
             height: 40,
             whenselected: Colors.black,
             whennotselected: Colors.transparent,
             textselected: Colors.white,
             textnotselected: Colors.black,
             ),
      


            CustomAddToCartButton(),
          
              
          
          
          
              
              
            ],
            
          ),
        ),
      ),
    );
  }
}