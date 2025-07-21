import 'package:flutter/material.dart';
import 'friends_family_screen.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFFF9500),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Color(0xFFFF9500), size: 40),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Medical App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Color(0xFFFF9500)),
            title: Text('My Profile'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.people, color: Color(0xFFFF9500)),
            title: Text('Friends & Families'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/friendsFamily');
            },
          ),
          ListTile(
            leading: Icon(Icons.local_hospital, color: Color(0xFFFF9500)),
            title: Text('My Doctors'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip, color: Color(0xFFFF9500)),
            title: Text('Privacy Policy'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Color(0xFFFF9500)),
            title: Text('Change Location'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today, color: Color(0xFFFF9500)),
            title: Text('My Appointments'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.search, color: Color(0xFFFF9500)),
            title: Text('Search Doctor'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Color(0xFFFF9500)),
            title: Text('Wallet'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.local_hospital_outlined, color: Color(0xFFFF9500)),
            title: Text('View Hospitals'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.forum, color: Color(0xFFFF9500)),
            title: Text('Health Forum'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.book, color: Color(0xFFFF9500)),
            title: Text('Health Blog'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Color(0xFFFF9500)),
            title: Text('Are you a Doctor?'),
            onTap: () {
              Navigator.pop(context);
              // Handle navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Color(0xFFFF9500)),
            title: Text('Log out'),
            onTap: () {
              Navigator.pop(context);
              // Handle logout
            },
          ),
        ],
      ),
    );
  }
}