import 'package:flutter/material.dart';
void main() => runApp(LambambaApp());
class LambambaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LAMBAMBA CAPITAL',
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width:120,height:120,decoration:BoxDecoration(color:Color(0xFFD4AF37),shape:BoxShape.circle),child:Center(child:Text('LB',style:TextStyle(fontSize:50,fontWeight:FontWeight.bold)))),
            SizedBox(height:30),
            Text('LAMBAMBA CAPITAL',style:TextStyle(color:Color(0xFFD4AF37),fontSize:26,fontWeight:FontWeight.bold)),
            SizedBox(height:10),
            Text('Your Investment, Our Priority',style:TextStyle(color:Colors.white70)),
            SizedBox(height:50),
            Container(margin:EdgeInsets.symmetric(horizontal:40),width:double.infinity,height:55,decoration:BoxDecoration(color:Color(0xFFD4AF37),borderRadius:BorderRadius.circular(12)),child:Center(child:Text('INVEST NOW',style:TextStyle(fontWeight:FontWeight.bold)))),
            SizedBox(height:15),
            Container(margin:EdgeInsets.symmetric(horizontal:40),width:double.infinity,height:55,decoration:BoxDecoration(border:Border.all(color:Color(0xFFD4AF37)),borderRadius:BorderRadius.circular(12)),child:Center(child:Text('MY PORTFOLIO',style:TextStyle(color:Color(0xFFD4AF37),fontWeight:FontWeight.bold)))),
          ],
        ),
      ),
    );
  }
}
