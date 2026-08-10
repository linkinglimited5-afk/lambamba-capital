import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(LambambaApp());

class LambambaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  void showMoMo(BuildContext context) {
    showDialog(context: context, builder: (c) => AlertDialog(
      backgroundColor: Color(0xFF0A1931),
      title: Text('Deposit via MoMo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(padding: EdgeInsets.all(14), decoration: BoxDecoration(color: Color(0xFFFFC107), borderRadius: BorderRadius.circular(10)),
          child: Column(children: [
            Text('MTN MoMo Number', style: TextStyle(fontSize: 12)),
            Text('0537613225', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24)),
            Divider(color: Colors.black),
            Text('ROMANUS DINYELU UDEMEZUE', style: TextStyle(fontWeight: FontWeight.bold)),
          ])),
        SizedBox(height: 10),
        Text('Send money then tap I Have Paid', style: TextStyle(color: Colors.white70, fontSize: 12)),
      ]),
      actions: [
        TextButton(onPressed: ()=> Navigator.pop(c), child: Text('Cancel', style: TextStyle(color: Colors.white))),
        ElevatedButton(
          onPressed: () async {
            final url = Uri.parse('https://wa.me/233537613225?text=Hello%20I%20paid%20to%200537613225');
            if(await canLaunchUrl(url)){ await launchUrl(url, mode: LaunchMode.externalApplication); }
          },
          child: Text('I Have Paid')),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(width: 100, height: 100, decoration: BoxDecoration(color: Color(0xFFFDAF37), shape: BoxShape.circle), child: Center(child: Text('LC', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)))),
        SizedBox(height: 15),
        Text('LAMBAMBA CAPITAL', style: TextStyle(color: Color(0xFFFDAF37), fontSize: 22, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text('Trust Your Investment', style: TextStyle(color: Colors.white70)),
        SizedBox(height: 40),
        Padding(padding: EdgeInsets.symmetric(horizontal: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFDAF37), foregroundColor: Colors.black, minimumSize: Size(double.infinity, 50)),
            onPressed: ()=> showMoMo(context),
            child: Text('INVEST NOW', style: TextStyle(fontWeight: FontWeight.bold)),
          )),
      ])),
    );
  }
}
