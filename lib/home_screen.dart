import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: Center(
          child: InkWell(
            onTap: () async {
              var whatsAppNumber = '+201019664820';
              var whatsAppUrl =
                  'whatsapp://send?phone=$whatsAppNumber&text=Hello Mohamed';
              await launchUrl(Uri.parse(whatsAppUrl));
            },
            child: Container(
              height: 50.0,
              width: 160.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
                child: Text(
                  'Open WhatsApp',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
