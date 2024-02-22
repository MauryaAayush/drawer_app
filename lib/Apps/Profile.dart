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
        width: 300,
        child: ListView(
          children: [
            DrawerHeader(
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
              child: Stack(children: [

                // Positioned(
                //   right : 10,
                //     child: Icon(Icons.account_circle_outlined),
                //
                // ),
                // Positioned(
                //   right : 50,
                //   child: CircleAvatar(
                //     radius: 20,
                //   ),
                // ),

                Positioned(
                  left: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: AssetImage(
                          'assets/images/me.jpg',
                        ),

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
              ]),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const ListTile(
                title: Text(
                  'Notification',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                leading: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: const ListTile(
                title: Text(
                  'Review',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                leading: Icon(
                  Icons.reviews_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: const ListTile(
                title: Text(
                  'Payment',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                leading: Icon(
                  Icons.payment_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              color: Color(0xFF5E5596FF),
              child: ListTile(
                title: Text(
                  'Setting',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
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
