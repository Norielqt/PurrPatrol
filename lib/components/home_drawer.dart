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
          backgroundColor:  const Color(0xFFFFF96B),
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
            const CircleAvatar(
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
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFF96B),
                ),
                child: const Column(
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
                    SizedBox(height: 20),
                  ],
                ),
              ),
              _buildHoverableDrawerItem('Home', Icons.home, () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              }),
              _buildHoverableDrawerItem('Add Purr', Icons.access_time, () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddPurr()),
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
                  MaterialPageRoute(builder: (context) => const WelcomePage()),
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
          const Positioned(
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
              padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFE7E7E7), // Background color
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
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
              margin: const EdgeInsets.only(top: 120),
              decoration: const BoxDecoration(
                color: Color(0xFFFFF96B),
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
                ItemWidget2(
                  imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                  headerText: 'Lost Baxter',
                  subtitleText: 'Bito-on,Jaro',
                  additionalText: 'September 26,2023',
                ),
                SizedBox(height: 20),
                ItemWidget2(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAthAnl2GfAOsAUDlS6HbYed-XcujPch2sP5sjLqw05w&s',
                  headerText: 'Lost Lila',
                  subtitleText: 'Bito-on,Jaro',
                  additionalText: 'September 26,2023',
                ),
                SizedBox(height: 20),
                ItemWidget2(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb2u39PJUvqfWTorlSxcv1Iq2qnuATM63k64YtO5vPow&s',
                  headerText: 'Found Puppy',
                  subtitleText: 'Bito-on,Jaro',
                  additionalText: 'September 26,2023',
                ),
                SizedBox(height: 20),
                ItemWidget2(
                  imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                  headerText: 'Found Puppy',
                  subtitleText: 'Bito-on,Jaro',
                  additionalText: 'September 26,2023',
                ),
                SizedBox(height: 20),
                ItemWidget2(
                  imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                  headerText: 'Found Puppy',
                  subtitleText: 'Bito-on,Jaro',
                  additionalText: 'September 26,2023',
                ),
                SizedBox(height: 20),
                ItemWidget2(
                  imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*',
                   headerText: 'Found Puppy',
                  subtitleText: 'Bito-on,Jaro',
                  additionalText: 'September 26,2023',
                ),
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
                Icon(icon, color: const Color(0xFF121212)),
                const SizedBox(width: 16),
                Text(title, style: const TextStyle(color: Color(0xFF121212))),
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

class ItemWidget2 extends StatelessWidget {
  final String imageUrl;
  final String headerText;
  final String subtitleText;
  final String additionalText;

  const ItemWidget2({
    required this.imageUrl,
    required this.headerText,
    required this.subtitleText,
    required this.additionalText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350, // Adjusted width of the container
      height: 170, // Adjusted height of the container
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the top
        children: [
          Container(
            width: 120, // Width of the image container
            height: double.infinity, // Full height of the container
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Border radius of image container
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Border radius of image
              child: Image.network(
                imageUrl, // Image URL
                width: 120, // Adjust width of the image
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20), // Add some spacing between the image and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50), // Add vertical padding
                Text(
                  headerText, // Header text
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 5), // Add some vertical spacing
                Text(
                  subtitleText, // Subtitle text
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                Text(
                  additionalText, // Another line of text
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}