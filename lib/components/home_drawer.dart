import 'package:cc206_cictscape/components/chronoroom_drawer.dart';
import 'package:cc206_cictscape/screens/welcomescreen.dart';
import 'package:cc206_cictscape/components/calebot_drawer.dart';

import 'package:flutter/material.dart';

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
          backgroundColor: const Color(0xFFFFF96B),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(
                      imageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/005/857/332/small_2x/funny-portrait-of-cute-corgi-dog-outdoors-free-photo.jpg',
                      headerText: 'Cute Corgi Dog',
                      subtitleText: '4-5 kgs',
                      additionalText: 'Brown',
                      dateLost: 'April 25, 2023',
                      location: 'Central Park',
                      breed: 'Corgi',
                      sex: 'Male',
                    )),
                  );
                },
                child: ItemWidget2(
                  imageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/005/857/332/small_2x/funny-portrait-of-cute-corgi-dog-outdoors-free-photo.jpg',
                  headerText: 'Cute Corgi Dog',
                      subtitleText: '4-5 kgs',
                      additionalText: 'Brown',
                )
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(
                       imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpOjNUJrdthHEKKNnqqBlAmXyK2J4XoeAzaJYOAKI-HT7vaJaFrFg9Zafkfz5-q6vKXUQ&usqp=CAU',
                      headerText: 'RSPCA Dogs',
                      subtitleText: '4-5 kgs',
                      additionalText: 'White Brown',
                      dateLost: 'April 25, 2023',
                      location: 'Central Park',
                      breed: 'Corgi',
                      sex: 'Male',
                    )),
                  );
                },
                child: ItemWidget2(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpOjNUJrdthHEKKNnqqBlAmXyK2J4XoeAzaJYOAKI-HT7vaJaFrFg9Zafkfz5-q6vKXUQ&usqp=CAU',
                  headerText: 'RSPCA Dogs',
                      subtitleText: '4-5 kgs',
                      additionalText: 'White Brown',
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAthAnl2GfAOsAUDlS6HbYed-XcujPch2sP5sjLqw05w&s',
                      headerText: 'Lost Baxter',
                      subtitleText: '4-5 kgs',
                      additionalText: ' Brown',
                      dateLost: 'April 25, 2023',
                      location: 'Central Park',
                      breed: 'Corgi',
                      sex: 'Male',
                    )),
                  );
                },
                child: ItemWidget2(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAthAnl2GfAOsAUDlS6HbYed-XcujPch2sP5sjLqw05w&s',
                    headerText: 'Lost Baxter',
                      subtitleText: '4-5 kgs',
                      additionalText: ' Brown',
                ),
              ),
              SizedBox(height: 20),
               SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(
                     imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpOjNUJrdthHEKKNnqqBlAmXyK2J4XoeAzaJYOAKI-HT7vaJaFrFg9Zafkfz5-q6vKXUQ&usqp=CAU',
                      headerText: 'RSPCA Dogs',
                      subtitleText: '4-5 kgs',
                      additionalText: 'White Brown',
                      dateLost: 'April 25, 2023',
                      location: 'Central Park',
                      breed: 'Corgi',
                      sex: 'Male',
                    )),
                  );
                },
                child: ItemWidget2(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpOjNUJrdthHEKKNnqqBlAmXyK2J4XoeAzaJYOAKI-HT7vaJaFrFg9Zafkfz5-q6vKXUQ&usqp=CAU',
                  headerText: 'RSPCA Dogs',
                      subtitleText: '4-5 kgs',
                      additionalText: 'White Brown',
                ),
              ),
                SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage(
                      imageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/005/857/332/small_2x/funny-portrait-of-cute-corgi-dog-outdoors-free-photo.jpg',
                      headerText: 'Cute Corgi Dog',
                      subtitleText: '4-5 kgs',
                      additionalText: 'White Brown',
                      dateLost: 'April 25, 2023',
                      location: 'Central Park',
                      breed: 'Corgi',
                      sex: 'Male',
                    )),
                  );
                },
                child: ItemWidget2(
                  imageUrl: 'https://static.vecteezy.com/system/resources/thumbnails/005/857/332/small_2x/funny-portrait-of-cute-corgi-dog-outdoors-free-photo.jpg',
                  headerText: 'Cute Corgi Dog',
                      subtitleText: '4-5 kgs',
                      additionalText: 'White Brown',
                )
              ),
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
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    headerText, // Header text
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
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

class ResultPage extends StatefulWidget {
  final String imageUrl;
  final String headerText;
  final String subtitleText;
  final String additionalText;
  final String dateLost;
  final String location;
  final String breed;
  final String sex;

  const ResultPage({
    required this.imageUrl,
    required this.headerText,
    required this.subtitleText,
    required this.additionalText,
    required this.dateLost,
    required this.location,
    required this.breed,
    required this.sex,
    Key? key,
  }) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  bool isCallHovered = false;
  bool isMarkAsFoundHovered = false;

 void _callOwner() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Calling...',
            textAlign: TextAlign.center,),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://scontent.xx.fbcdn.net/v/t1.15752-9/441083894_416066551184552_3073040650696970110_n.png?stp=dst-png_p206x206&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEfyWiwY2nsaVx-cgDMeNrZo5TAuuCnWoKjlMC64KdagnnNB4A5UzSYH3RKCrbAyWmql19lthjMbWQNEhkeZQW_&_nc_ohc=4L8DGPa14nEQ7kNvgFTyH8-&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_Q7cD1QGBIM4Tb0xkmAlRysJsSS7fbkM77KgjC9bNeTL-fqjzFw&oe=666968C3',
                height: 200,
                width: 200,
              ),
               IconButton(
              onPressed: () {
                      Navigator.of(context).pop();
              },
              icon: Icon(Icons.call_end, color: Colors.red),
              iconSize: 40,
            ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              widget.imageUrl,
              fit: BoxFit.cover,
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.headerText,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        widget.subtitleText,
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        widget.additionalText,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      SizedBox(height: 10),
                      Text(
                        'Date Lost: ${widget.dateLost}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Location: ${widget.location}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Breed: ${widget.breed}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Sex: ${widget.sex}',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      Divider(),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  isCallHovered = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  isCallHovered = false;
                                });
                              },
                             child: ElevatedButton(
                                onPressed: _callOwner,
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: isCallHovered ? Colors.white : Color(0xFF121212), backgroundColor: isCallHovered ? Color(0xFF121212) : Color(0xFFF6F6F6),
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.call, color: isCallHovered ? Colors.white : Color(0xFF121212)),
                                    SizedBox(width: 10),
                                    Text('Call', style: TextStyle(color: isCallHovered ? Colors.white : Color(0xFF121212))),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: MouseRegion(
                              onEnter: (_) {
                                setState(() {
                                  isMarkAsFoundHovered = true;
                                });
                              },
                              onExit: (_) {
                                setState(() {
                                  isMarkAsFoundHovered = false;
                                });
                              },
                              child: ElevatedButton(
                                onPressed: () {
                                  // Mark as found button functionality
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: isMarkAsFoundHovered ? Colors.white : Color(0xFF121212), backgroundColor: isMarkAsFoundHovered ? Color(0xFF121212) : Color(0xFFF6F6F6),
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.done, color: isMarkAsFoundHovered ? Colors.white : Color(0xFF121212)),
                                    SizedBox(width: 10),
                                    Text('Mark as Found', style: TextStyle(color: isMarkAsFoundHovered ? Colors.white : Color(0xFF121212))),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}