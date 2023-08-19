import "package:e_commerce/constants.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
class Firstpage extends StatefulWidget{

  @override
  _FirstpageState createState() => _FirstpageState();

}

class _FirstpageState extends State<Firstpage>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kBackgroundcolor,
      body:Stack(
        children:[ CustomScrollView(
            physics: BouncingScrollPhysics(),
          slivers: [
      
            SliverAppBar(
      
              backgroundColor: kBackgroundcolor,
                elevation:50,
                scrolledUnderElevation: 50.0,
                pinned: false,
                centerTitle: true,
                expandedHeight: 150,
                stretch: true,
                
                bottom: const PreferredSize(
                preferredSize: Size.fromHeight(180.0),
                
                child: SizedBox(
                  ),
                ),
                flexibleSpace:   FlexibleSpaceBar(
                  stretchModes: [
                    StretchMode.zoomBackground
                  ],
                  background: Stack(
                  
                  children: [
                  
                    Center(
                      child: Container(
                        height:600,
                        width:335,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                                children: [
                                  
                                  Icon(Icons.clear_all_rounded,color: Colors.black,size:50,),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                                    child: Image(image: AssetImage('images/logo.png'),
                                    height: 50,
                                    width: 60,),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: kBackgroundcolor,
                                    radius: 25,
                                  ),
                                  
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
      
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Welcome",style:TextStyle(fontWeight: FontWeight.w600,
                                      fontSize: 30,
                                      fontFamily: "Raleway")),
                                      Text("All united we are our best version",
                                      style: TextStyle(color: Color.fromARGB(255, 75, 75, 75),
                                      fontWeight: FontWeight.w500),),
      
                                      
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:20,
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center,
      
                                children: [
                                  Expanded(
                                  child: TextField(
                                    decoration: kSearchbar,
                                  ),
                                ),
                                                          ],
                              ),
                            ],
                          ),
                        ),
                        decoration:BoxDecoration(color: kBackgroundcolor,
                        borderRadius: BorderRadius.only(
                          bottomLeft:Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      
                      gradient: LinearGradient(
                        begin:Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.5, 0.5 ],
                        colors: [
                           kBluelightshade, // Red with 50% opacity
                          kBluelightshade,
      
                        ]
                      ),
                        boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), // Shadow color with opacity
                          blurRadius: 10.0, // Blur radius
                          spreadRadius: 2.0, // Spread radius
                        ),
                      ],
                          )
                          
      
                        
                          ),
                        
      
                        
                      ),
                    
                    
                    
      
                  ],
                ),
                  
                  ),
            ),
          
          SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Container(
            height: 40,
      
            
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Optionbutton(ind: index),
                  ),
      
                );
              },
            ),
          ),
        ),
          ),
      
      
      
          SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 20),
          child: Container(
            height: 250,
            color:kBackgroundcolor,
      
            
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Center(
                  child: Item(begincolor:bcolor[index],
                  endcolor: ecolor[index],
                  shoeimage:shoeimg[index],
                  top:top[index],
                  left:left[index],
                  imgscale:scale[index],
                  shoeprice: price[index],
                  ind:index),
                );
              },
            ),
          ),
        ),
          ),
          // Add your other sliver components here
        SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          child: Container(
            height: 50,
            color:kBackgroundcolor,
      
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sportsware",style:TextStyle(color:Colors.white,fontSize: 30,fontFamily: 'Raleway',
                fontWeight: FontWeight.w500)),
                TextButton(onPressed: (){
      
                }, child: Text("View all",style:TextStyle(color:Colors.white, fontSize: 15,fontFamily: "Raleway",fontWeight: FontWeight.w300)))
              ],
            ),
          ),
        ),
          ),
          SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 20),
          child: Container(
            height: 250,
            color:kBackgroundcolor,
      
            
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: bannerimage.length,
              itemBuilder: (context, index) {
                return Image(image: AssetImage(bannerimage[index]));
              },
            ),
          ),
        ),
          ),
        ],
      
      
      
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 690, 20, 25),
          child: Container(
            height: 80,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:Color.fromARGB(127, 0, 0, 0),
              boxShadow:
              [
      BoxShadow(
        color: Color.fromARGB(124, 0, 0, 0),
        blurRadius: 15.0, // soften the shadow
        spreadRadius: 8.0, //extend the shadow
        offset: Offset(
          0.0, // Move to right 5  horizontally
          0.0, // Move to bottom 5 Vertically
        ),
      ),
    ],
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){}, icon:Icon(CupertinoIcons.home,color: Color.fromARGB(255, 199, 199, 199),size: 30,)),
                  IconButton(onPressed: (){}, icon:Icon(CupertinoIcons.bell,color: Color.fromARGB(255, 199, 199, 199),size: 30,)),
                  IconButton(onPressed: (){}, icon:Icon(CupertinoIcons.cart,color: Color.fromARGB(255, 199, 199, 199),size: 30,)),  
                ],
              ),
            ),
          ),
        ),
        ]
      ),
      

    );
  }
}