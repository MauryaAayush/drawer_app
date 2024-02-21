import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.green,
    ),
  );
  runApp(const GmailSlider());
}

class GmailSlider extends StatefulWidget {
  const GmailSlider({Key? key}) : super(key: key);

  @override
  State<GmailSlider> createState() => _GmailSliderState();
}

class _GmailSliderState extends State<GmailSlider> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: const Drawer(
            backgroundColor: Colors.grey,
            child: ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Alaram'),

            ),
          ),
            backgroundColor: Color(0xFF121315),
            appBar: AppBar(
              backgroundColor: Color(0xFF0D0D0F),
              title: Text('Gmail',style: TextStyle(
                color: Colors.white
              ),),
              centerTitle: true,
            ),
            body: Container(),
      ),
    );

  }
}
