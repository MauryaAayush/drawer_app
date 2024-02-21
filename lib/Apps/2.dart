import 'package:flutter/material.dart';

void main()
{
  runApp(const Drawer());
}

class Drawer extends StatefulWidget {
  const Drawer({super.key});

  @override
  State<Drawer> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121315),
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
