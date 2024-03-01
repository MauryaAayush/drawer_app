import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.yellow,
  ));
  runApp(const ProfileSlide());
}

class ProfileSlide extends StatefulWidget {
  const ProfileSlide({Key? key}) : super(key: key);

  @override
  State<ProfileSlide> createState() => _ProfileSlideState();
}

class _ProfileSlideState extends State<ProfileSlide> {
  @override
  // void initState() {
  //   super.initState();
  //   // Make the status bar transparent
  //   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: Colors.green,
  //     statusBarIconBrightness: Brightness.dark,
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // This is important for the transparency to work
      backgroundColor: const Color(0xFF121315),
      drawer: Drawer(
        backgroundColor: const Color(0xFFDBA2FA),
        width: 300,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFDBA2FA),
                    Color(0xff5e5596ff),
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
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              color: const Color(0xff5e5596ff),
              child: const ListTile(
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
        backgroundColor: Colors.red, // Make the app bar transparent
        title: const Text(
          'My profile',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Center(
        child: Text(
          'Hello every one',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }


// color: Color(0xFF5A4645),
}
