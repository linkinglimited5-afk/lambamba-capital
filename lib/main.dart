import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() { runApp(LambambaApp()); }

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
  void _showMoMo(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: Color(0xFF0A1931),
        title: Text('Deposit via MoMo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(color: Color(0xFFFFC107), borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Text('MTN MoMo Number', style: TextStyle(color: Colors.black54, fontSize: 12)),
                  SizedBox(height: 5),
                  Text('0537613225', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 24)),
                  Divider(),
                  Text('ROMANUS DINYELU UDEMEZUE', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 12),
            Text('1. Send money via MoMo\n2. Tap I Have Paid to confirm on WhatsApp', style: TextStyle(color: Colors.white70, fontSize: 12)),
          ],
        ),
        actions: [
          TextButton(onPressed: ()=> Navigator.pop(ctx), child: Text('Cancel', style: TextStyle(color: Colors.white))),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFFC107), foregroundColor: Colors.black),
            onPressed: () async {
              final uri = Uri.parse('https://wa.me/233537613225?text=Hello%20Lambamba%20Capital,%20I%20have%20paid%20via%20MoMo%20(0537613225).%20Please%20confirm%20my%20investment.%20My%20name%20is:');
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            },
            child: Text('I Have Paid - WhatsApp', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 120, height: 120, decoration: BoxDecoration(color: Color(0xFFFDAF37), shape: BoxShape.circle), child: Center(child: Text('LC', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)))),
            SizedBox(height: 20),
            Text('LAMBAMBA', style: TextStyle(color: Color(0xFFFDAF37), fontSize: 28, fontWeight: FontWeight.bold)),
            Text('CAPITAL', style: TextStyle(color: Color(0xFFFDAF37), fontSize: 26, fontWeight: FontWeight.w900, letterSpacing: 2)),
            SizedBox(height: 10),
            Text('Trust Your Investment. Our Priority.', style: TextStyle(color: Colors.white70)),
            SizedBox(height: 50),
            Container(margin: EdgeInsets.symmetric(horizontal: 40), width: double.infinity, height: 55, decoration: BoxDecoration(color: Color(0xFFFDAF37), borderRadius: BorderRadius.circular(12)),
              child: Center(child: InkWell(onTap: ()=> _showMoMo(context), child: Text('INVEST NOW', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))))),
            SizedBox(height: 15),
            Container(margin: EdgeInsets.symmetric(horizontal: 40), width: double.infinity, height: 55, decoration: BoxDecoration(border: Border.all(color: Color(0xFFFDAF37)), borderRadius: BorderRadius.circular(12)),
              child: Center(child: Text('MY PORTFOLIO', style: TextStyle(color: Color(0xFFFDAF37), fontWeight: FontWeight.bold)))),
          ],
        ),
      ),
    );
  }
}
