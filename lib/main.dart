import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenary App',
      color:Colors.black,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
var greenColor =  Color(0xFFE8F5E9);
var pImage = 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRRiWt0qgAwCxjWhxgcp2KOfNJOqhdyvGfm_NBjCXdrNwSQCREC&usqp=CAU';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.green,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child:Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(404.0)),
              color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    SizedBox(height: 32.0),
                Icon(Icons.arrow_back),
                SizedBox(height: 32.0),
                Container(
                    width: 300.0,
                    child:Text(
                      'GREEN WORLD',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize:32.0),
                    )
                ),
                SizedBox(height: 12.0),
                Text(
                  '10" Nursery Pot',
                  style: TextStyle(color: Colors.black),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[

                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(
                                builder: (context)=> DetailScreen()
                            ),
                            );
                          },
                          backgroundColor:Colors.green,
                          child: Icon(Icons.shopping_cart),

                        ),
                        Container(
                          width:200.0,
                          child:Image.network(pImage,fit: BoxFit.cover,),

                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text('\$',
                          style: TextStyle(
                              color:Colors.green,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Text('65',
                        style:TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0
                        ),
                      ),
          ],
    ),
                ],
            ),
    ),

      ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Text('Hurry Up!',style: TextStyle(color: Colors.white),),
                  Spacer(),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width/2-40,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(30.0),

                          ),
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.start,

                          children:<Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '300ml',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                                SizedBox(width: 8.0),


                                Text(
                                  'water',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width/2-50,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(30.0),

                          ),
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:CrossAxisAlignment.start,

                          children:<Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '18c',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35.0,
                                  ),
                                ),
                                SizedBox(width: 8.0),


                                Text(
                                  'sunshine',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
          ),


    );
  }
}

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Greenery NYC',
                    style: TextStyle(color: Colors.white,
                        letterSpacing: 1.4,
                        fontSize: 18.0)),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: 180.0,
                  child: Text('Product Overview', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),),
                ),
                SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(

                      children: <Widget>[
                        Icon(Icons.star, color: Colors.white,),
                        SizedBox(width: 6.0,),
                        Text(
                          'Water',
                          style: TextStyle(color: Colors.white,
                            fontSize: 12.0,),
                        ),
                      ],
                    ),
                    Text(
                      'Every Days',
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.ac_unit,color: Colors.white,),


                    SizedBox(width: 6.0,),
                    Text(
                      'Humadity',
                      style: TextStyle(color: Colors.white,
                        fontSize: 12.0,),
                    ),
                  ],
                ),
                Text(
                  'up to 82%',
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
  ],
                ),
              SizedBox(height:32.0),
                Padding(
                  padding:const EdgeInsets.only(left:48.0),
                  child:Container(
                    height:60.0,
                    decoration:BoxDecoration(
                      color:greenColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28.0),
                        bottomLeft: Radius.circular((28.0)),

                      ),
                    ),
                    child:Row(
                      children: <Widget>[
                        SizedBox(width: 20.0),
                        Icon(Icons.add,color:Colors.black,size: 20.0,),
                        Text('Delivery Information',style:TextStyle(color: Colors.black,fontSize: 22.0)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:32.0),
                Padding(
                  padding:const EdgeInsets.only(left:48.0),
                  child:Container(
                    height:60.0,
                    decoration:BoxDecoration(
                      color:greenColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28.0),
                        bottomLeft: Radius.circular((28.0)
                        ),

                      ),
                    ),
                    child:Row(
                      children: <Widget>[
                        SizedBox(width: 20.0),
                        Icon(Icons.add,color:Colors.black,size: 20.0,),
                        Text('Terms And Conditions',style:TextStyle(color: Colors.black,fontSize: 22.0)),
                      ],
                    ),

                  ),
                ),
                SizedBox(height:32.0),
                Padding(
                  padding:const EdgeInsets.only(left:48.0),
                  child:Container(
                    height:60.0,
                    decoration:BoxDecoration(
                      color:greenColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28.0),
                        bottomLeft: Radius.circular((28.0)
                        ),

                      ),
                    ),
                    child:Row(
                      children: <Widget>[
                        SizedBox(width: 20.0),
                        Icon(Icons.add_shopping_cart,color:Colors.green,size: 20.0,),
                        Text('add to cart',style:TextStyle(color: Colors.black,fontSize: 22.0)),
                      ],
                    ),

                  ),
                ),


                  ],
                ),
          ),
              ],
            ),
          );
  }
}

