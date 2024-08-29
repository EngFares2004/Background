import 'package:flutter/material.dart';
import 'components.dart';
import 'background_screen2.dart';
class HomeScreen2 extends StatefulWidget{
 const HomeScreen2({super. key});

  @override
  State<StatefulWidget> createState() =>_HomeScreen2State();


}

class _HomeScreen2State extends State<HomeScreen2>{
  @override
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
                child: const Text("Image Screen",style: TextStyle(
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
                children: imageList.map((imageItem)=>
                    InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder:(context)=>BackgroundScreen(imageScreen:imageItem) )
                          );
                        },
                        child: Container(
                            margin:const EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:BorderRadius.all(Radius.circular(30)),
                                boxShadow:[
                                  BoxShadow(
                                    offset: Offset(4,7),
                                    color: Colors.grey,
                                    blurRadius: 5,
                                  )
                                ]
                            ),
                            child: Image.asset(imageItem,
                                fit: BoxFit.cover,)
                        )
                    ),
                ).toList())));
  }

}
