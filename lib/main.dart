import 'package:flutter/material.dart';
import 'login_page.dart';
import 'registration_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img.freepik.com/free-photo/beautiful-shot-udaipur-from-window-city-palace_181624-44764.jpg?w=996&t=st=1713596357~exp=1713596957~hmac=89806b565f3f4474e3a0a10fbbce655f4648547826cedb05e9911f9fe76f9753'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to India!',
                style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF653b14),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFFe6901e),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xFFe6901e),
        actions: [
          IconButton(
            onPressed: () {
              // Handle search button press
            },
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
        ],
      ),
      backgroundColor: Color(0xFFe6901e),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          PlaceCard(
            title: 'Taj Mahal, Agra',
            description:
                'The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in the Indian city of Agra.',
            imageUrl:
                'https://images.pexels.com/photos/16753416/pexels-photo-16753416.jpeg?cs=srgb&dl=pexels-its-yashu-16753416.jpg&fm=jpg',
          ),
          // Add more PlaceCard widgets for other places if needed
          PlaceCard(
            title: 'Golden Temple, Amritsar',
            description:
                'The Golden Temple, also known as Sri Harmandir Sahib, is a Gurdwara located in the city of Amritsar, Punjab, India.',
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/The_Golden_Temple_of_Amrithsar_7.jpg/1200px-The_Golden_Temple_of_Amrithsar_7.jpg',
          ),
          PlaceCard(
            title: 'Hampi, Karnataka',
            description:
                'Hampi is a UNESCO World Heritage Site located in the state of Karnataka, known for its ancient ruins, temples, and vibrant history.',
            imageUrl: 'https://www.holidify.com/images/bgImages/HAMPI.jpg',
          ),
          PlaceCard(
            title: 'Kedarnath, Uttarakhand',
            description:
                'Kedarnath Temple is a Hindu temple dedicated to Lord Shiva, one of the twelve Jyotirlingas. It is nestled in the Garhwal Himalayas near the Mandakini river in Uttarakhand, India.',
            imageUrl:
                'https://uttarakhandtourism.gov.in/sites/default/files/2020-09/Kedarnath%20Temple.jpg',
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  // Handle Home button press
                },
                icon: Icon(Icons.home),
                tooltip: 'Home',
              ),
              IconButton(
                onPressed: () {
                  // Navigate to login page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                icon: Icon(Icons.login),
                tooltip: 'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const PlaceCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  description,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
