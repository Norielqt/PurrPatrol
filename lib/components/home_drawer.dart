import 'package:flutter/material.dart';
import 'package:cc206_cictscape/components/chronoroom_drawer.dart';
import 'package:cc206_cictscape/screens/welcomescreen.dart';
import 'package:cc206_cictscape/components/calebot_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          title: const Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor:  Color(0xFFFFF96B),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Color(0xFF121212),
                size: 28,
              ),
              onPressed: () {
                // Handle notification icon tap
              },
            ),
            const SizedBox(width: 10),
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage('https://scontent.fmnl25-3.fna.fbcdn.net/v/t39.30808-1/420169692_3657249581230251_5456148384807546754_n.jpg?stp=cp6_dst-jpg_p200x200&_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFK_VNQCxZcVHX0v7jGSlCzJrLIBVECKEAmssgFUQIoQGB8W63u_LuYi1pd5s2oZL1Rz6HruGpUIOv7XLMnn2W8&_nc_ohc=34uRMIbVNkMQ7kNvgHTgZRB&_nc_ht=scontent.fmnl25-3.fna&oh=00_AYAFgLUEu2hw66PaRlNjGPi7IqBJCGSSVXDz-BqoeXyxRg&oe=6646645E'),
            ),
            const SizedBox(width: 25),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xFFFFF96B),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF96B),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Purr Patrol',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              _buildHoverableDrawerItem('Home', Icons.home, () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              }),
              _buildHoverableDrawerItem('Add Purr', Icons.access_time, () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPurr()),
                );
              }),
              _buildHoverableDrawerItem('My List', Icons.chat, () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyListPage()),
                );
              }),
              _buildHoverableDrawerItem('Logout', Icons.exit_to_app, () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              }),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFFFF96B),
          ),
          Positioned(
            top: 20,
            left: 10,
            right: 290,
            child: Column(
              children: [
                Text(
                  "Let's find your pet...",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF121212),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            top: 60,
            left: 0,
            right: 100,
            child:Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE7E7E7), // Background color
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(top: 120),
              decoration: BoxDecoration(
                color: Color(0xFFF1F2F6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            ItemWidget(text: 'Item 1'),
                            SizedBox(height: 20),
                            ItemWidget(text: 'Item 2'),
                            SizedBox(height: 20),
                            ItemWidget(text: 'Item 3'),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHoverableDrawerItem(
      String title, IconData icon, VoidCallback onTap) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          child: ListTile(
            title: Row(
              children: [
                Icon(icon, color: Color(0xFF121212)),
                const SizedBox(width: 16),
                Text(title, style: TextStyle(color: Color(0xFF121212))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _selectTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class ItemWidget extends StatelessWidget {
  final String text;

  const ItemWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}