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
  Future<void> openWhatsApp(BuildContext context) async {
    Navigator.pop(context);
    const phone = '233537613225';
    const msg = 'Hello Boss, I have paid to 0537613225 (ROMANUS DINYELU UDEMEZUE). Please confirm my investment.';
    
    final waApp = Uri.parse('whatsapp://send?phone=$phone&text=${Uri.encodeComponent(msg)}');
    final waWeb = Uri.parse('https://wa.me/$phone?text=${Uri.encodeComponent(msg)}');

    if (await canLaunchUrl(waApp)) {
      await launchUrl(waApp, mode: LaunchMode.externalApplication);
    } else if (await canLaunchUrl(waWeb)) {
      await launchUrl(waWeb, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please message 0537613225 on WhatsApp manually'), backgroundColor: Color(0xFFFDAF37)),
      );
    }
  }

  void showMoMo(BuildContext context) {
    showDialog(context: context, builder: (c) => AlertDialog(
      backgroundColor: Color(0xFF0A1931),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Text('Deposit via MoMo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(padding: EdgeInsets.all(16), decoration: BoxDecoration(color: Color(0xFFFFC107), borderRadius: BorderRadius.circular(12)),
          child: Column(children: [
            Text('MTN MoMo Number', style: TextStyle(fontSize: 12, color: Colors.black)),
            SizedBox(height: 4),
            Text('0537613225', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26, color: Colors.black)),
            Divider(color: Colors.black54, thickness: 1.5),
            Text('ROMANUS DINYELU UDEMEZUE', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 13)),
          ])),
        SizedBox(height: 12),
        Text('Send money then tap I Have Paid', style: TextStyle(color: Colors.white70, fontSize: 12)),
      ]),
      actions: [
        TextButton(onPressed: ()=> Navigator.pop(c), child: Text('Cancel', style: TextStyle(color: Colors.white70))),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Color(0xFF0A1931), shape: StadiumBorder()),
          onPressed: () => openWhatsApp(c),
          child: Text('I Have Paid', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(width: 100, height: 100, decoration: BoxDecoration(color: Color(0xFFFDAF37), shape: BoxShape.circle), child: Center(child: Text('LC', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black)))),
        SizedBox(height: 15),
        Text('LAMBAMBA CAPITAL', style: TextStyle(color: Color(0xFFFDAF37), fontSize: 22, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text('Trust Your Investment', style: TextStyle(color: Colors.white70)),
        SizedBox(height: 40),
        Padding(padding: EdgeInsets.symmetric(horizontal: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFDAF37), foregroundColor: Colors.black, minimumSize: Size(double.infinity, 50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
            onPressed: ()=> showMoMo(context),
            child: Text('INVEST NOW', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          )),
      ])),
    );
  }
}
