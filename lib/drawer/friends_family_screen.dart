import 'package:flutter/material.dart';
import 'add_friends_family_screen.dart';

class FriendsFamilyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Friends & Family',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            TextButton.icon(
              onPressed: () {
                // Handle Add New action
              },
              icon: Icon(Icons.add, color: Colors.white),
              label: Text('Add New', style: TextStyle(color: Colors.white)),
            ),
          ],

        ),
        backgroundColor: Color(0xFFFF9500),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/tabibistan21.png', // Replace with actual asset path
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Add 3 members to win exciting rewards!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.circle, color: Color(0xFFFF9500), size: 40),
              title: Text('The 3 members earn 200 in the wallet credit upon profile completion.'),
            ),
            ListTile(
              leading: Icon(Icons.circle, color: Color(0xFFFF9500), size: 40),
              title: Text('When 3 added members complete their profile, you get a free consultation worth Cr.500.'),
            ),
            ListTile(
              leading: Icon(Icons.circle, color: Color(0xFFFF9500), size: 40),
              title: Text('When 3 added members complete their first consultation, you get a premium plan including 3 free consultations worth up to Cr. 2,000.'),
            ),
            SizedBox(height: 10),
            Text(
              '*Point 2 and 3 incentives will be valid for 30 days. Free consultations will only be with General Practitioners.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddFriendsFamilyScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF9500),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Add New Member',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Handle Terms & Conditions action
              },
              child: Text('Terms & Conditions', style: TextStyle(color: Color(0xFFFF9500))),
            ),
          ],
        ),
      ),
    );
  }
}