import 'package:cc206_cictscape/components/chronoroom_drawer.dart';
import 'package:cc206_cictscape/components/home_drawer.dart';
import 'package:cc206_cictscape/screens/welcomescreen.dart';
import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('CaleBot'),
        backgroundColor: const Color(0xFF215049),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsq1PoIZWZj2a5zWdu0VlGBDnohDK0Htn_TMxHkjiG7A&s',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              top: 30,
              left: 20,
              child: Container(
                width: 350,
                height: 600,
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 217, 217, 217),
                borderRadius: BorderRadius.circular(20),
              ),
            ), 
          ),
          Stack(
            children: [
              Positioned(
                top: 50,
                left: 180,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsq1PoIZWZj2a5zWdu0VlGBDnohDK0Htn_TMxHkjiG7A&s',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
              top: 50,
              left: 40,
              child: Container(
              width: 200,
              height: 200,
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      'Hello, Im \nCalebot, your \nAI Assistant.',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF215049),
                        letterSpacing: 1,
                      ),
                    ),
                  )
                  
                ],
              ),
            ), 
          ),
          ],
          ),

        Stack(
            children: [
              Positioned(
              top: 550,
              left: 50,
              child: Container(
              width: 240,
              height: 50,
              child: Stack(
                children: [
                  Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Type your message here.',
                        filled: true,
                        fillColor: Colors.white, // Set background color
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF215049)),
                          borderRadius: BorderRadius.circular(15.0), // Set border radius
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF215049)),
                          borderRadius: BorderRadius.circular(15.0), // Set border radius
                        ),

                        ),

                      style: 
                      TextStyle(      
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF215049),
                      ),
                    ),
                  )
                ],
              ),
            ), 
          ),
          ],
          ),

          Stack(
            children: [
              Positioned(
                top: 473,
                left: 230,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(
                          Icons.send,
                          size: 35,
                          color: const Color(0xFF215049),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
      
      drawer: Drawer(
          child: Container(
            color: const Color(0xFF215049),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 80,
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF215049),
                  ),
                  child: const Text(
                    'CICTScape',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                _buildHoverableDrawerItem('Home', Icons.home, () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
                _buildHoverableDrawerItem('Add Purr', Icons.access_time, () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => AddPurr()));
                }),
                _buildHoverableDrawerItem('My List', Icons.chat, () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyListPage()));
                }),
                _buildHoverableDrawerItem('Logout', Icons.exit_to_app, () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => WelcomePage()));
                }),
              ],
            ),
          ),
        ),
    );
  }
}


      




  Widget _buildHoverableDrawerItem(String title, IconData icon, VoidCallback onTap) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          child: ListTile(
            title: Row(
              children: [
                Icon(icon, color: Colors.white),
                const SizedBox(width: 16),
                Text(title, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }

 

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}