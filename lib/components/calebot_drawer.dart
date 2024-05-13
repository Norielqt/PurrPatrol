import 'package:cc206_cictscape/components/chronoroom_drawer.dart';
import 'package:cc206_cictscape/components/home_drawer.dart';
import 'package:cc206_cictscape/screens/welcomescreen.dart';
import 'package:flutter/material.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('CaleBot'),
        backgroundColor: const Color(0xFF215049),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
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
                color: const Color.fromARGB(255, 217, 217, 217),
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
                  decoration: const BoxDecoration(
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
              child: SizedBox(
              width: 200,
              height: 200,
              child: const Stack(
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
              child: SizedBox(
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
                          borderSide: const BorderSide(color: Color(0xFF215049)),
                          borderRadius: BorderRadius.circular(15.0), // Set border radius
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xFF215049)),
                          borderRadius: BorderRadius.circular(15.0), // Set border radius
                        ),

                        ),

                      style: 
                      const TextStyle(      
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
                  decoration: const BoxDecoration(
                  ),
                  child: const Stack(
                    children: [
                      Center(
                        child: Icon(
                          Icons.send,
                          size: 35,
                          color: Color(0xFF215049),
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
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
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
                      context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                }),
                _buildHoverableDrawerItem('Add Purr', Icons.access_time, () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const AddPurr()));
                }),
                _buildHoverableDrawerItem('My List', Icons.chat, () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyListPage()));
                }),
                _buildHoverableDrawerItem('Logout', Icons.exit_to_app, () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const WelcomePage()));
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
                Text(title, style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }

 

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}