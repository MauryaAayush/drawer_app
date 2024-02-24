import 'package:flutter/material.dart';

void main()
{
    runApp(const Newone());
}

class Newone extends StatefulWidget {
  const Newone({super.key});

  @override
  State<Newone> createState() => _NewoneState();
}

class _NewoneState extends State<Newone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.transparent,
      drawer: Container(
        height: double.infinity,
        width: 350,
        color: Colors.transparent.withOpacity(0.5),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/me.jpg',),
                backgroundColor: Colors.blue,
                radius: 50,
              ),
            ),

            const SizedBox(height: 18,),

            const Text(
              'Aayush Maurya',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.3,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              'maayush235@gmail.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20,),

            Container(
              alignment: Alignment.center,
              height: 45,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.white,
                  width: 1.3,
                )
              ),
              child: Text('SIGN OUT',style: TextStyle(
                color: Colors.white,
                fontSize: 18
              ),),
            ),

            const SizedBox(height: 10,),
            // OutlinedButton(
            //   child: Text("Sign ",),
            //     onPressed: () {},
            //   style: OutlinedButton.styleFrom(
            //     minimumSize: Size(250, 50),
            //     textStyle: TextStyle(
            //     ),
            //     side: BorderSide(
            //       color: Colors.white,
            //       width: 2,
            //     )
            //   ),
            // ),
            // Divider(color: Colors.white,height: 40,),

            const SizedBox(
              height: 20,
            ),

            const ListTile(
              leading: Icon(Icons.edit,color: Colors.white,size: 30,),
                    title: Text('Add Leads',style: TextStyle(
                      color: Colors.white
                    ),),
            ),
            const ListTile(
              leading: Icon(Icons.star,color: Colors.white,size: 30,),
              title: Text('Points Redemption',style: TextStyle(
                  color: Colors.white
              ),),
            ),
            const ListTile(
              leading: Icon(Icons.plus_one,color: Colors.white,size: 30,),
              title: Text('Points',style: TextStyle(
                  color: Colors.white
              ),),
            ),
            const ListTile(
              leading: Icon(Icons.person,color: Colors.white,size: 30,),
              title: Text('Profile',style: TextStyle(
                  color: Colors.white
              ),),
            ),
            const ListTile(
              leading: Icon(Icons.analytics,color: Colors.white,size: 30,),
              title: Text('Dashboard',style: TextStyle(
                  color: Colors.white
              ),),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,size: 30,),
              title: Text('Home',style: TextStyle(
                  color: Colors.white
              ),),
            ),

          Divider(color: Colors.white,height: 40,),

            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 220, 10),
              child: Text('Communicate',style: TextStyle(
                color: Colors.white,
              ),),
            ),

            ListTile(
              leading: Icon(Icons.lock,color: Colors.white,size: 30,),
              title: Text('Privacy Policy',style: TextStyle(
                  color: Colors.white
              ),),
            ),
            ListTile(
              leading: Icon(Icons.phone,color: Colors.white,size: 30,),
              title: Text('Contact Us',style: TextStyle(
                  color: Colors.white
              ),),
            ),
            ListTile(
              leading: Icon(Icons.memory_outlined,color: Colors.white,size: 30,),
              title: Text('About App',style: TextStyle(
                  color: Colors.white
              ),),
            ),













            // ListView(
            //   children: [
            //     ListTile(
            //       leading: Icon(Icons.edit,color: Colors.white,),
            //       title: Text('Add leads',style: TextStyle(
            //         color: Colors.white
            //       ),),
            //     )
            //   ],
            // )

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text('Transparent',style: TextStyle(
          color: Colors.white,

        ),),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset('assets/images/image.jpg',fit: BoxFit.cover,),
      ),
    );
  }
}
