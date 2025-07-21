import 'package:flutter/material.dart';
import '../Drawer/drawer_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _locationAccessGranted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical App'),
        backgroundColor: Color(0xFFFF9500),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.orange[100],
                      child: Icon(Icons.person, color: Color(0xFFFF9500), size: 30),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Guest!',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        DropdownButton<String>(
                          value: 'Afghanistan',
                          items: <String>['Afghanistan'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: TextStyle(color: Color(0xFFFF9500))),
                            );
                          }).toList(),
                          onChanged: (_) {},
                          underline: SizedBox(),
                          icon: Icon(Icons.arrow_drop_down, color: Color(0xFFFF9500)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Color(0xFFFF9500)),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search by Hospitals',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle My Appointments
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF9500),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_today, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'My Appointments',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'How can we help you today?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            if (!_locationAccessGranted)
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Icon(Icons.location_on, size: 50, color: Color(0xFFFF9500)),
                    SizedBox(height: 10),
                    Text(
                      'Allow us to access Location?',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'It will help us in:',
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 5),
                    Text('1. Finding doctors, hospitals and labs in your city.'),
                    Text('2. Help find doctors near your location.'),
                    Text('3. Delivering medicines and lab test services at your doorstep.'),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _locationAccessGranted = true;
                            });
                            // Handle location access
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFF9500),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text('Allow Access', style: TextStyle(color: Colors.white)),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle deny
                          },
                          child: Text('Deny', style: TextStyle(color: Color(0xFFFF9500))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}