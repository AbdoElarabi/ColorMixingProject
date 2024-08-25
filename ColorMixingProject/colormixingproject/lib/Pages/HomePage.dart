import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Color> colorWidget = [
    const Color.fromARGB(255, 94, 95, 128),
    Colors.white
  ];

  bool enableOne = true,enableTwo = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 242, 246),
        appBar: AppBar(backgroundColor:const Color.fromARGB(255, 94, 95, 128) ,centerTitle: true,title: const Text("HomePage",style: TextStyle(color: Color.fromARGB(255, 233, 242, 246)
        ,fontWeight: FontWeight.w700,fontSize: 28),),leading: IconButton(onPressed : (){},icon : const Icon(Icons.search,size: 28,color: Color.fromARGB(255, 233, 242, 246),)),elevation: 2,actions: 
         [
          IconButton(onPressed: (){}, icon: const Icon(Icons.list,color: Color.fromARGB(255, 233, 242, 246),
          size: 28,))
        ],),
              body: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(onPressed: (){
                    if(!enableOne)
                    {
                    var colorvar = colorWidget[1];
                    colorWidget[1] = colorWidget[0];
                    colorWidget[0] = colorvar;
                    enableOne = true;
                    enableTwo = false;
                    setState(() {
                      
                    });
                    }
                    },
                  mouseCursor: MouseCursor.defer,
                  elevation: 0,
                  color: colorWidget[0],
                  minWidth: 120,
                  height: 120,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.format_paint,color: colorWidget[1],size: 50,),
                      Text("Interior paint",style: TextStyle(fontWeight: FontWeight.w600,color: colorWidget[1],fontSize: 16),)
                    ],
                  ),),
                  MaterialButton(onPressed: (){
                    if(!enableTwo)
                    {
                    var colorvar = colorWidget[0];
                    colorWidget[0] = colorWidget[1];
                    colorWidget[1] = colorvar;
                    enableTwo = true;
                    enableOne = false;
                    setState(() {
                      
                    });
                    }
                  },
                  elevation: 0,
                  color: colorWidget[1],
                  minWidth: 120,
                  height: 120,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.home,color:colorWidget[0] ,size: 50,),
                      Text("Exterior paint",style: TextStyle(fontWeight: FontWeight.w600,color: colorWidget[0],fontSize: 16),)
                    ],
                  ),),
                ],
              ),
            )

          ],
        ),
    );
  }
}

// ignore: non_constant_identifier_names
// double Size(BuildContext context)
// {
//   var screensize = MediaQuery.of(context).size;
//     // ignore: non_constant_identifier_names
//     double Responsive = 0;
//     if (screensize.width <= 1000){
//      Responsive = 500;
//     }
//     else if (screensize.width <= 1500 ){
//       Responsive = 900;
//     }
//     else if (screensize.width > 1500 ){
//       Responsive = 1500;
//     }
//     return Responsive;
// }