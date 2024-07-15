import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:notes/colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Notes App',
      home: MyHomePage(),
    );
  }
  // This widget is the root of your application.
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
            Container(
              width:100,
              height:100,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(50),
                color:const Color.fromARGB(158, 0, 0, 0),
              ),
            child: Icon(
              Icons.add,
              color:Colors.white,
              size:40
            )
            ),
            GlassmorphicContainer(
              width:100,
              height:100,
                padding: EdgeInsets.only(left:20),
                 alignment: Alignment.center,
              borderRadius:50,
              blur: 20,
              border:0,
            linearGradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFffffff).withOpacity(0.1),
        Color(0xFFFFFFFF).withOpacity(0.05),
      ],
      stops: [
        0.1,
        1,
      ]),
       borderGradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFffffff).withOpacity(0.5),
      Color((0xFFFFFFFF)).withOpacity(0.5),
    ],
  ),
              child:Icon(Icons.mic,
              color:Colors.black,
              size:40
              )
            )
        ]
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
















      backgroundColor:blackColor,
      body: SafeArea(
        child:SingleChildScrollView(
          physics:BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
            AppBar(),
            AppBar2(),
            categoryItems(),
            SizedBox(height:20),
              SecondBox(),
               SizedBox(height:10),
                ThirdBox(),   
                SizedBox(height:10),
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                FourthBox(),
                  Container(
                    height:270,
                    width:185,
                    decoration:BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(60),
                        bottomLeft:Radius.circular(40),
                        topRight:Radius.circular(40),
                      )
                    ),
                     child:Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children:[
                       const SizedBox(
                          height:10,
                        ),
                      const  Divider(
                          indent:65,
                          thickness:2,
                          color: Colors.black,
                          height:5,
                          endIndent:65
                        ),
                     const   Divider(
                          indent:80,
                          thickness:2,
                          color:Colors.black,
                          height:5,
                          endIndent:80
                        ),
                       Padding(
                        padding:const EdgeInsets.all(8.0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                         const   Column(
                              children:[
                                 Text(
                          "Login",
                          style: TextStyle(
                            fontSize:17,
                            fontWeight:FontWeight.bold,
                          ),
                          
                        ),
                        Text(
                          "Passwords",
                          style: TextStyle(
                            fontSize:17,
                            fontWeight:FontWeight.bold,
                          ),
                          
                        ),
                        
                              ]
                            ),
                              Container(
                              width:40,
                              height:40,
                              decoration:BoxDecoration(
                                color:Color.fromARGB(255, 16, 146, 155),
                                borderRadius:BorderRadius.circular(20),
                              ),
                              child:Icon(Icons.favorite_outline),
                            ) 
                           

                          ]
                        )
                       ),
                       SizedBox(height:40),
                       Image.asset("assets/6.png",height:110,width:110)
                   
                       
                      ]
                    )

                  ),
                ]
               ),
          
                
          
              ]
              
          ),
        )
      )
    );
  }
}


class AppBar2 extends StatelessWidget{
  const AppBar2({super.key});

  @override 
  Widget build(BuildContext context){
    return   Padding(
            padding: const EdgeInsets.only(left:20),
            child:  Text("Note",
             style:TextStyle(
                    color: Colors.white,
                    fontSize:45,
                    fontWeight: FontWeight.w400,
                  ),
            )
          );
  }
}





class AppBar extends StatelessWidget{
  const AppBar({super.key});

  @override 
  Widget build(BuildContext context){
    return  Padding(
            padding:const EdgeInsets.only(left:20,right:25,top:25),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:[
                Text(
                  "My",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize:45,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  width:60,
                  height:60,
                  decoration:BoxDecoration(
                    color:graydarkColor,
                    borderRadius:BorderRadius.circular(30),
                  ),
                  child:Icon(
                    Icons.more_horiz_outlined,
                    color:Colors.white,
                    size:30
                  )
                )

              ]
            ),
           );
  }
}

class categoryItems extends StatelessWidget{
  const categoryItems({super.key});

  @override 
  Widget build(BuildContext context){
    return SingleChildScrollView(
      padding:const EdgeInsets.only(top:10),
              scrollDirection:Axis.horizontal,
              physics:BouncingScrollPhysics(),
              child:Row(
                children:[
                  const SizedBox(width:15),
                  Container(
                    width:120,
                    height:60,
                    decoration:BoxDecoration(
                      border:Border.all(color:Colors.white),
                      borderRadius:BorderRadius.circular(30)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text(
                          "All",
                          style: TextStyle(
                            fontWeight:FontWeight.bold,
                            fontSize: 17,
                            color:Colors.white,
                          )

                        ),
                        SizedBox(width:10),
                        Container(
                          width:20,
                          height:20,
                          decoration:BoxDecoration(
                            borderRadius:BorderRadius.circular(10),
                            color:graydarkColor,
                          ),
                          child: Center(
                          child:Text(
                            "20",
                            style: TextStyle(
                            
                            fontSize: 10,
                            color:Colors.white,
                            )
                          ),
                          )
                        )
                      ]
                    )
                    
                  ),
                   const SizedBox(width:15),
                  Container(
                    width:150,
                    height:60,
                    decoration:BoxDecoration(
                      border:Border.all(color:Colors.grey),
                      borderRadius:BorderRadius.circular(30)
                    ),
                    child:Center(
                      child:Text(
                        "Important",
                        style: TextStyle(
                            fontSize: 17,
                            color:Colors.white,
                        )
                      )
                    )
                  ),
                   const SizedBox(width:15),
                  Container(
                    width:150,
                    height:60,
                    decoration:BoxDecoration(
                      border:Border.all(color:Colors.grey),
                      borderRadius:BorderRadius.circular(30)
                    ),
                    child:Center(
                      child:Text(
                        "To-Do List",
                        style: TextStyle(
                            fontSize: 17,
                            color:Colors.white,
                        )
                      )
                    )

                  ),
                ]
              )
             );
  }
}
class FirstBox extends StatelessWidget{
  const FirstBox({super.key});

  @override 
  Widget build(BuildContext context){
    return  Container(
                    height:270,
                    width:185,
                    decoration:BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.only(
                        topRight:Radius.circular(60),
                        bottomLeft:Radius.circular(40),
                        bottomRight:Radius.circular(40),
                      )
                    ),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children:[
                        SizedBox(
                          height:10,
                        ),
                        Divider(
                          indent:65,
                          thickness:2,
                          color: Colors.black,
                          height:5,
                          endIndent:65
                        ),
                        Divider(
                          indent:80,
                          thickness:2,
                          color:Colors.black,
                          height:5,
                          endIndent:80
                        ),
                       Padding(
                        padding:const EdgeInsets.all(8.0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Column(
                              children:[
                                 Text(
                          "Plan For",
                          style: TextStyle(
                            fontSize:17,
                            fontWeight:FontWeight.bold,
                          ),
                          
                        ),
                        Text(
                          "the Day",
                          style: TextStyle(
                            fontSize:17,
                            fontWeight:FontWeight.bold,
                          ),
                          
                        ),
                              ]
                            ),
                            Container(
                              width:40,
                              height:40,
                              decoration:BoxDecoration(
                                color:Color(0xffE0764E),
                                borderRadius:BorderRadius.circular(20),
                              ),
                              child:Icon(Icons.favorite_outline),
                            ) 

                          ]
                        )
                       ),
                        Container(
                          width:double.maxFinite,
                          height:50,
                          decoration:BoxDecoration(
                            color:Color(0xffE0764E),
                            borderRadius:BorderRadius.circular(30)
                          ),
                          child:Row(children: [
                            SizedBox(width:10),
                            Container(width:30,height:30,
                            decoration:BoxDecoration(color:Color(0xff904830),
                            borderRadius:BorderRadius.circular(30)
                            ),
                            child:Icon(
                              Icons.check,
                              color:Colors.white
                            )
                            ),
                            SizedBox(width:5),
                            Text("Project Submission",
                            style: TextStyle(
                              color:Colors.black26,
                            ))
                          ],)
                        ),
                        SizedBox(height:10),
                        Container(
                          width:double.maxFinite,
                          height:50,
                          decoration:BoxDecoration(
                            color:Color(0xffE0764E),
                            borderRadius:BorderRadius.circular(30)
                          ),
                          child:Row(children: [
                            SizedBox(width:10),
                            Container(width:30,height:30,
                            decoration:BoxDecoration(color:Color(0xff904830),
                            borderRadius:BorderRadius.circular(30)
                            ),
                            child:Icon(
                              Icons.circle_outlined,
                              color:const Color.fromARGB(255, 255, 255, 255)
                            )
                            ),
                            SizedBox(width:5),
                            Text("Maths Asignment",
                            style: TextStyle(
                              color:Colors.black,
                            ))
                          ],)
                        ),
                        SizedBox(height:10),
                        Container(
                          width:double.maxFinite,
                          height:50,
                          decoration:BoxDecoration(
                            color:Color(0xffE0764E),
                            borderRadius:BorderRadius.circular(30)
                          ),
                          child:Row(children: [
                            SizedBox(width:10),
                            Container(width:30,height:30,
                            decoration:BoxDecoration(color:Color(0xff904830),
                            borderRadius:BorderRadius.circular(30)
                            ),
                            child:Icon(
                              Icons.circle_outlined,
                              color:const Color.fromARGB(255, 255, 255, 255)
                            )
                            ),
                            SizedBox(width:5),
                            Text("School's Fee",
                            style: TextStyle(
                              color:Colors.black,
                            ))
                          ],)
                        ),
                      ]
                    )

                  );
  }
}

class SecondBox extends StatelessWidget{
  const SecondBox({super.key});

  @override 
  Widget build(BuildContext context){
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                 FirstBox(),
                  Container(
                    height:270,
                    width:185,
                    decoration:const BoxDecoration(
                      color: yellowColor,
                      borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(60),
                        bottomLeft:Radius.circular(40),
                        topRight:Radius.circular(40),
                      )
                    ),
                     child:Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children:[
                       const SizedBox(
                          height:10,
                        ),
                      const  Divider(
                          indent:65,
                          thickness:2,
                          color: Colors.black,
                          height:5,
                          endIndent:65
                        ),
                     const   Divider(
                          indent:80,
                          thickness:2,
                          color:Colors.black,
                          height:5,
                          endIndent:80
                        ),
                       Padding(
                        padding:const EdgeInsets.all(8.0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                         const   Column(
                              children:[
                                 Text(
                          "Image",
                          style: TextStyle(
                            fontSize:17,
                            fontWeight:FontWeight.bold,
                          ),
                          
                        ),
                        Text(
                          "Notes",
                          style: TextStyle(
                            fontSize:17,
                            fontWeight:FontWeight.bold,
                          ),
                          
                        ),
                        
                              ]
                            ),
                              Container(
                              width:40,
                              height:40,
                              decoration:BoxDecoration(
                                color:Color(0xffE3C64E),
                                borderRadius:BorderRadius.circular(20),
                              ),
                              child:Icon(Icons.favorite_outline),
                            ) 
                           

                          ]
                        )
                       ),
                       Image.asset("assets/2.png",height:180,width:180)
                   
                       
                      ]
                    )

                  ),
                ]
               );
  }
}
class ThirdBox extends StatelessWidget{
  const ThirdBox({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
                  padding:const EdgeInsets.only(left: 15,right:15),
                  child: Container(
                width:double.maxFinite,
                height:120,
                decoration:BoxDecoration(
                  color: creamColor,
                  borderRadius:BorderRadius.circular(60),
                ),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // SizedBox(width:10),
                      Container(
                        width:60,
                        height:60,
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(30),
                          color:Colors.white,
                        ),
                       
                        child:Center(child:Image.asset("assets/3.png",height:40)),

                      
                      ),
                        // SizedBox(width:30),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          mainAxisAlignment:MainAxisAlignment.center,
                          children:[
                            Text(
                              "Physics",
                              style:TextStyle(
                                fontSize: 13,
                                fontWeight:FontWeight.normal,
                              )
                            ),
                            Text(
                              "Lectures",
                              style:TextStyle(
                                fontSize: 17,
                                fontWeight:FontWeight.bold,
                              )
                            ),
                          ]
                        ),
                        //  SizedBox(width:40),
                        Container(
                          width:40,
                          height:40,
                          decoration:BoxDecoration(
                            color:Color.fromARGB(255, 218, 215, 203),
                            borderRadius:BorderRadius.circular(20)
                          ),child:Icon(Icons.favorite_outline)

                        )

                ],)
               )
                );
  }
}

class FourthBox extends StatelessWidget{
  const FourthBox({super.key});

  @override 
  Widget build(BuildContext context){
    return  Container(
                    height:270,
                    width:185,
                    decoration:BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.only(
                        topRight:Radius.circular(60),
                        bottomLeft:Radius.circular(40),
                        bottomRight:Radius.circular(40),
                      )
                    ),
                    child:Column(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children:[
                        SizedBox(
                          height:10,
                        ),
                        Divider(
                          indent:65,
                          thickness:2,
                          color: Colors.black,
                          height:5,
                          endIndent:65
                        ),
                        Divider(
                          indent:80,
                          thickness:2,
                          color:Colors.black,
                          height:5,
                          endIndent:80
                        ),
                       Padding(
                        padding:const EdgeInsets.all(8.0),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                           const Column(
                              children:[
                                 Text(
                          "Future",
                          style: TextStyle(
                            fontSize:17,
                            fontWeight:FontWeight.bold,
                          ),
                          
                        ),
                        Text(
                          "Goals",
                          style: TextStyle(
                            fontSize:17,
                            fontWeight:FontWeight.bold,
                          ),
                          
                        ),
                              ]
                            ),
                            Container(
                              width:40,
                              height:40,
                              decoration:BoxDecoration(
                                color:Color.fromARGB(255, 150, 192, 102),
                                borderRadius:BorderRadius.circular(20),
                              ),
                              child:Icon(Icons.favorite_outline),
                            ) 

                          ]
                        )
                       ),
                        Container(
                          width:double.maxFinite,
                          height:50,
                          decoration:BoxDecoration(
                            color:Color.fromARGB(255, 150, 192, 102),
                            borderRadius:BorderRadius.circular(30)
                          ),
                          child:Row(children: [
                            SizedBox(width:10),
                            Container(width:30,height:30,
                            decoration:BoxDecoration(color:Color.fromARGB(255, 150, 192, 102),
                            borderRadius:BorderRadius.circular(30)
                            ),
                            child:const Icon(
                              Icons.circle_outlined,
                              color:Colors.white
                            )
                            ),
                            SizedBox(width:5),
                           const Text("IIT Prep ",
                            style: TextStyle(
                              color:Colors.black,
                            ))
                          ],)
                        ),
                        SizedBox(height:10),
                        Container(
                          width:double.maxFinite,
                          height:50,
                          decoration:BoxDecoration(
                            color:Color.fromARGB(255, 150, 192, 102),
                            borderRadius:BorderRadius.circular(30)
                          ),
                          child:Row(children: [
                            SizedBox(width:10),
                            Container(width:30,height:30,
                            decoration:BoxDecoration(color:Color.fromARGB(255, 150, 192, 102),
                            borderRadius:BorderRadius.circular(30)
                            ),
                            child:Icon(
                              Icons.circle_outlined,
                              color:const Color.fromARGB(255, 255, 255, 255)
                            )
                            ),
                            SizedBox(width:5),
                            Text("Learn ML",
                            style: TextStyle(
                              color:Colors.black,
                            ))
                          ],)
                        ),
                        SizedBox(height:10),
                        Container(
                          width:double.maxFinite,
                          height:50,
                          decoration:BoxDecoration(
                            color:Color.fromARGB(255, 150, 192, 102),
                            borderRadius:BorderRadius.circular(30)
                          ),
                          child:Row(children: [
                            SizedBox(width:10),
                            Container(width:30,height:30,
                            decoration:BoxDecoration(color:Color.fromARGB(255, 150, 192, 102),
                            borderRadius:BorderRadius.circular(30)
                            ),
                            child:Icon(
                              Icons.circle_outlined,
                              color:const Color.fromARGB(255, 255, 255, 255)
                            )
                            ),
                            SizedBox(width:5),
                            Text("App Dev",
                            style: TextStyle(
                              color:Colors.black,
                            ))
                          ],)
                        ),
                      ]
                    )
    );
  }
}