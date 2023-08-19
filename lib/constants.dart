import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

import "shoepage.dart";
const Color kBluelightshade = Color.fromARGB(255, 175, 219, 255);
const Color kVioletlightshade = Color.fromARGB(255,203, 201, 241);
const Color kBackgroundcolor = Color.fromARGB(255,0, 0, 0);
const Color kYellowlightshade = Color.fromARGB(255,248, 230, 93);
const Color kYelloedarkshade = Color.fromARGB(255, 255, 190, 69);


List <String> shoeimg = [
  "images/shoe1.png",
  'images/shoe2.png',
  'images/shoe3.png' ,
  "images/shoe4.png",

];

List <Color> bcolor = [
 Color.fromARGB(255, 247, 228, 89),
 Color.fromARGB(255, 197, 232, 254),
 Color.fromARGB(255, 224, 70, 72),
 Color.fromARGB(255, 241, 141, 254),


];
List <Color> ecolor = [
  Color.fromARGB(255, 255, 194, 77),
 Color.fromARGB(255, 152, 164, 255),
 Color.fromARGB(255, 252, 124, 47),
 Color.fromARGB(255, 141, 35, 240),
 

];

List <double> top = [
 -103,
 -109,
 -130,
 -103,


];
List <double> left = [
 -80,
 -80,
 -80,
 -85,


];

List <double> scale = [
  0.51,
  0.52,
  0.45,
  0.52,

];

List <String> price = [
  "Rs.289",
  "Rs.300",
  "Rs.150",
  "Rs.250",

];

List <String> bannerimage = [
  "images/banner.jpg",

];






const InputDecoration kSearchbar = InputDecoration(
  filled: true,
  fillColor:Color.fromARGB(255, 204, 224, 255) ,
  suffixIcon: Icon(Icons.search_rounded,size: 30,),
  suffixIconColor: Color.fromARGB(255, 20, 20, 20),
  suffixStyle:TextStyle(fontSize: 40),// Add your desired icon here
    hintText: "Search...",
    border: OutlineInputBorder(

      
      borderSide: BorderSide(color: Color.fromARGB(255, 223, 235, 255), width: 0.0), // Custom border color and width
      //border radius
      borderRadius: BorderRadius.all(Radius.circular(50)),

      
    ),
    focusedBorder: OutlineInputBorder(
      
      borderSide: BorderSide(color: Color.fromARGB(255, 223, 235, 255), width: 0.0), // Custom border color and width
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 223, 235, 255), width: 0.0), // Custom border color and width
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),

  );



List <String> items = [
  "All",
  "Running",
  "Badminton",
  "Originals",
  "Premium",

];



class Optionbutton extends StatefulWidget{
  late int ind;
  Optionbutton({required this.ind});
@override
_OptionbuttonState createState() => new _OptionbuttonState();

}
class _OptionbuttonState extends State<Optionbutton>{
  bool _isPressed = false;
  @override
  Widget build(BuildContext context){
      return ElevatedButton(
                  onPressed: () {
                    setState(() {
                        _isPressed = !_isPressed;
                        });
                                    // Add your button click logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: _isPressed ? kBackgroundcolor : Color.fromARGB(255, 30, 30, 30), // Color when idle
                    onPrimary: Colors.black, // Text color when idle
                    
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50), // Circular border radius
                      side: BorderSide(
                        color: Color.fromARGB(255, 40, 40, 40), // Border color when clicked
                        width: _isPressed ?2.0 : 0.0,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      items[widget.ind],
                      style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 222, 222, 222),fontWeight: FontWeight.normal),
                      
                    ),
                  ),
                              );
  }
}






class Item extends StatefulWidget{
  late Color begincolor;
  late Color endcolor;
  late String shoeimage;
  late double imgscale;
  late double  top;
  late double left;
  late String shoeprice;
  late int ind;
  Item({required this.begincolor,required this.endcolor,required this.shoeimage,required this.imgscale,required this.top,
  required this.left,required this.shoeprice,required this.ind});
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item>{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor:kBackgroundcolor),
        onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Shoepage(ind1:widget.ind,icolor:widget.begincolor,
        ecolor:widget.endcolor)));
        },
        child: Stack(
          children:[
            
            
            Container(
                          
                          height:260,
                          width:160,
                          color:kBackgroundcolor,
                          
                        ),
          
          
            Positioned(
              top:18,
              left:0,
              child: Container(
                            
                            height:215,
                            width:160,
                          
                            decoration: BoxDecoration(
                              color:const Color.fromARGB(255, 45, 45, 45),
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(
                                begin:Alignment.topCenter,
                              end:Alignment.bottomCenter,
                              colors: [
                              widget.begincolor,
                              widget.endcolor,
                              
                              ]
                              
                            ),
                            ),
                            child:Padding(
                              padding: const EdgeInsets.fromLTRB(10, 105, 10, 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Text("Runfalcon",style:TextStyle(fontWeight: FontWeight.w600,
                                            color:Colors.black,
                                            fontSize: 18)),
                                            Text("sneakers",style:TextStyle(fontWeight: FontWeight.w300,
                                            color:Colors.black)),
                                        ],
                                      ),
                                      CircleAvatar(
                                        radius:20,
                                        backgroundColor: Color.fromARGB(106, 255, 255, 255),
                                        child:IconButton(onPressed: (){
                                          print("heart clicked");
                                        }, icon: Icon(CupertinoIcons.heart,color:Colors.black)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height:5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(widget.shoeprice,style:TextStyle(fontWeight: FontWeight.w800,
                                            color:Colors.black,
                                            fontSize: 20,
                                            fontFamily: "Raleway")),
                                      CircleAvatar(
                                        radius:20,
                                        backgroundColor: Color.fromARGB(255, 0, 0, 0),
                                        child:Icon(CupertinoIcons.cart_badge_plus,size:19) ,
                                      )
                                    ],
                                  ),
                                  
                            
                                ],
                              ),
                            ),
                          ),
            ),
            
                        
            Positioned(
              top:widget.top,
              left:widget.left,
              child:  Transform.scale(
                scale: widget.imgscale, // Adjust the scale factor as needed
                child: Image(image: AssetImage(widget.shoeimage)),
              ),
                          ),
            ]
            //Image(image: AssetImage('images/shoe2.png'))
        ),
      ),
    );

  }
}


class CustomIconButton extends StatelessWidget {
  final IconData icon;
  
  

  const CustomIconButton({
    required this.icon,
    
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
        color: Colors.transparent,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: (){
              Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              icon,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}


class RoundButton extends StatefulWidget {
  final Color backgroundColor;

  const RoundButton({required this.backgroundColor});

  @override
  _RoundButtonState createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: _isPressed ? 30 : 20,
            height: 20,
            decoration: BoxDecoration(
              color: _isPressed ? widget.backgroundColor.withOpacity(0.8) : widget.backgroundColor,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 3, color: Colors.white),
            ),
            
          ),
        ),
      ),
    );
  }
}





class Optionbutton1 extends StatefulWidget{
  late String size;
  Optionbutton1({required this.size});
@override
_Optionbutton1State createState() => new _Optionbutton1State();

}
class _Optionbutton1State extends State<Optionbutton1>{
  bool _isPressed = false;
  @override
  Widget build(BuildContext context){
      return Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                          _isPressed = !_isPressed;
                          });
                                      // Add your button click logic here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: _isPressed ? kBackgroundcolor : Color.fromARGB(255, 43, 43, 43), // Color when idle
                      onPrimary: Colors.black, // Text color when idle
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50), // Circular border radius
                        side: BorderSide(
                          color: Color.fromARGB(255, 40, 40, 40), // Border color when clicked
                          width: _isPressed ?2.0 : 0.0,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        widget.size,
                        style: TextStyle(fontSize: 12,color: const Color.fromARGB(255, 222, 222, 222),fontWeight: FontWeight.normal),
                        
                      ),
                    ),
                                ),
      );
  }
}




class CustomAddToCartButton extends StatefulWidget {
  @override
  _CustomAddToCartButtonState createState() => _CustomAddToCartButtonState();
}

class _CustomAddToCartButtonState extends State<CustomAddToCartButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isPressed = !_isPressed;
          });
        },
        child: Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 2, color: _isPressed ? Colors.transparent : Colors.black), // Change border color when not pressed
            color: _isPressed ? Colors.black : Colors.transparent,
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              SizedBox(width: 5),
              Text(
                "Add to Cart",
                style: TextStyle(
                  color: _isPressed ? Colors.white : Colors.black,
                  fontFamily: "Raleway",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none, // Make sure no text decoration is applied
                ),
              ),
              Icon(
                Icons.shopping_cart,
                color: _isPressed ? Colors.white : Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}