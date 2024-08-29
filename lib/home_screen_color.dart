

import 'package:flutter/material.dart';
import 'components.dart';
import 'background_screen.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() =>_HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    gradient:LinearGradient(
                        begin: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.2),
                        ]
                    )
                ),
                child: const Text("Colors Screen",style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
              )

          ),
        ),
      body:  Container(
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
            crossAxisCount: 3,
            children: colorsList.map((colorItem)=>
            InkWell(
                onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder:(context)=>BackgroundScreen(colorScreen:colorItem) )
              );
            },
            child: Container(
              margin:const EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
              decoration: BoxDecoration(
                  color: colorItem,
                  borderRadius:const BorderRadius.all(Radius.circular(30)),
                  boxShadow:const [
                    BoxShadow(
                      offset: Offset(4,7),
                      color: Colors.grey,
                      blurRadius: 5,
                    )
                  ]
              )
            )
        ),
      ).toList())));




  }

}