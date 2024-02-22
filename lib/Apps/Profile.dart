import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const ProfileSlide());
}

class ProfileSlide extends StatefulWidget {
  const ProfileSlide({Key? key}) : super(key: key);

  @override
  State<ProfileSlide> createState() => _ProfileSlideState();
}

class _ProfileSlideState extends State<ProfileSlide> {
  @override
  void initState() {
    super.initState();
    // Make the status bar transparent
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.green,
      statusBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // This is important for the transparency to work
      backgroundColor: Color(0xFF121315),
      drawer: Drawer(
        backgroundColor: Color(0xFFDBA2FA),
        width: 350,
        child: ListView(
          children: [
          Container(
          height: 200.0, // Set the height of the container
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFDBA2FA),
                Color(0xFF5E5596FF),
              ],
            ),
          ),
          child: DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFDBA2FA),
                  Color(0xFF5E5596FF),
                ],
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage('assets/images/me.jpg',),

                  radius: 43,
                  // You can add an image or initials as well
                ),
                Text(
                  'Aayush Maurya',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'maayush235@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ),
          ],

        ),

      ),
      appBar: AppBar(
        backgroundColor: Color(0xFFDBA2FA), // Make the app bar transparent
        title: Text(
          'My profile',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Text(
          'Your content goes here',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Reset the status bar color when the widget is disposed
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
    ));
    super.dispose();
  }
}
