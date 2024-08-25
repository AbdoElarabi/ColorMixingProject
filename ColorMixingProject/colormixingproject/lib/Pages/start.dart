import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  
    Future<void> fetchData() 
async {
              const url = 'http://192.168.25.81/data';
              if (await canLaunch(url)) {
                await launch(url, forceWebView: true, enableJavaScript: true);
              } else {
                throw 'Could not launch $url';
              }
            }
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children:[ Image.asset("images/bright-paints-brushes-near-paper (1).jpg",fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
          const Center(
            widthFactor: 332,
            heightFactor: 134,
            child: Text("This application is a color creation control panel connected to a board" 
            " where you can get more than one color and all the colors are distinctive colors",
                                  style: TextStyle(fontSize: 20,
                                  color: Color.fromARGB(255, 123, 120, 120),
                                  shadows: [BoxShadow(color: Color.fromARGB(255, 123, 120, 120),offset: Offset(0, 4),blurRadius: 4)]),
                                  textAlign: TextAlign.center)),
            
            Positioned(
              bottom: 50,
              left: ((screensize.width - 281) / 2),
              child: MaterialButton(onPressed: fetchData,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            ),
            color: const Color.fromARGB(255, 15, 113, 97),
            minWidth: 281,
            height: 60,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_forward_ios,size: 28,color: Colors.white,shadows: [BoxShadow(blurRadius: 4,offset: Offset(0, 4),color:Color.fromARGB(255, 123, 120, 120) )],),
                Text("Get Started",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 28
                ,shadows: [BoxShadow(offset: Offset(0, 4),blurRadius: 4,color: Color.fromARGB(255, 123, 120, 120))]),)
              ],
            ),))
          ]),
          
      ),
    );
  }
}