import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
          home: Emarket()
      ));

  }
class Emarket extends StatefulWidget{

  @override
  Emarketstate createState() => Emarketstate();

}
class Emarketstate extends State<Emarket>{
  @override
  int selected_index=0;
  List <Widget> widgetpages = [
    Homepage(),
    Container(child: Text("2",style: TextStyle(fontSize: 100)),),
    Container(child: Text("3",style: TextStyle(fontSize: 100)),),
    Container(child: Text("4",style: TextStyle(fontSize: 100)),)
  ];
  Widget build (BuildContext context){

    return

      Scaffold(

      /*appBar:AppBar(
        backgroundColor: Colors.white,
       // elevation: 50,
        //shadowColor: Colors.black,
        //title: Text(" E-market",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.black),),
        brightness: Brightness.light,

      ),*/

      bottomNavigationBar:
      Container(

        margin:EdgeInsets.only(left: 8,right: 8,bottom: 8) ,

        decoration: BoxDecoration(

         border: Border.all(color:Colors.black,width: 8),
          borderRadius: BorderRadius.circular(25)

        ),
        child:BottomNavigationBar(

        //backgroundColor: Colors.red ,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
        selectedFontSize: 8,

        showUnselectedLabels: true,

        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white ,height: 2,fontSize: 12,wordSpacing: 3, ),
        selectedItemColor: Colors.purple,
        currentIndex: selected_index,
        onTap:(index) {
          setState(() {
            selected_index=index;
          });
        },
        items: [

          BottomNavigationBarItem(label:"HOME",icon: Icon(Icons.home),backgroundColor: Colors.black,),
          BottomNavigationBarItem(label:"FAVOURITE",icon: Icon(Icons.favorite_border_sharp,),backgroundColor: Colors.black),
          BottomNavigationBarItem(label:"NOTIFICATION",icon: Icon(Icons.notifications_none_sharp),backgroundColor: Colors.black),
          BottomNavigationBarItem(label:"ME",icon: Icon(Icons.person_outline_sharp),backgroundColor: Colors.black)
        ],), ),

        body:  widgetpages.elementAt(selected_index),
        );
  }


}

class Homepage extends StatefulWidget{

  @override
  Homepagestate createState() => Homepagestate();

}
class Homepagestate extends State<Homepage>{
  @override
  Widget build (BuildContext context) {
   return ListView(
       children: [
   Container(
     margin: EdgeInsets.only(top: 20,bottom:10),

     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Icon(Icons.view_headline_sharp,size: 30,),
         Text("MAGENTA",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black,decoration: TextDecoration.underline,),),
         Icon(Icons.shopping_bag_sharp,size: 30,),
       ],

     ),

     ),
         Container(
           margin: EdgeInsets.only(left: 20,right: 20),
           child: TextFormField(
             cursorColor: Colors.purple,
             cursorHeight: 20,
             decoration:InputDecoration(
              hintText:"Search for imagination",
                 hintStyle:TextStyle(),
               prefixIcon: Icon(Icons.search_sharp,size: 25,),
                 border: InputBorder.none,


             ) ,
           ),
         ),
         Container(
           margin: EdgeInsets.only(top:15,left: 21),
           child: Text("Select Category",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),

         ),




   ]);

  }

}
