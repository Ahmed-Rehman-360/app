import 'package:flutter/material.dart';

class AddFriendsFamilyScreen extends StatefulWidget {
  @override
  _AddFriendsFamilyScreenState createState() => _AddFriendsFamilyScreenState();
}

class _AddFriendsFamilyScreenState extends State<AddFriendsFamilyScreen> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  String _relationship = 'Father';
  String _gender = 'Male';
  String _countryCode = '+92';

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          'Friends & Family',
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Handle Add New action
            },
            child: Text(
              'Add New',
              style: TextStyle(color: Color(0xFFFF9500), fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Add Friends & Family',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFF9500),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.close, color: Colors.grey),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      // Name Field
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter full name',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFF9500)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                        ),
                      ),
                      SizedBox(height: 20),

                      // Phone Number Field
                      Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]!),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 20,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Center(
                                    child: Icon(Icons.flag, size: 12, color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(_countryCode, style: TextStyle(fontSize: 16)),
                                Icon(Icons.arrow_drop_down, color: Colors.grey),
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: TextField(
                              controller: _phoneController,
                              decoration: InputDecoration(
                                hintText: '1234567890',
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFFF9500)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      // Relationship Field
                      Text(
                        'Relationship',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
                      ),
                      SizedBox(height: 8),
                      DropdownButtonFormField<String>(
                        value: _relationship,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFF9500)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                        ),
                        items: <String>['Father', 'Mother', 'Sibling', 'Spouse', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _relationship = newValue!;
                          });
                        },
                      ),
                      SizedBox(height: 20),

                      // Gender Field
                      Text(
                        'Gender',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _gender = 'Male';
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                decoration: BoxDecoration(
                                  color: _gender == 'Male' ? Color(0xFFFF9500).withOpacity(0.1) : Colors.transparent,
                                  border: Border.all(
                                    color: _gender == 'Male' ? Color(0xFFFF9500) : Colors.grey[300]!,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'Male',
                                    style: TextStyle(
                                      color: _gender == 'Male' ? Color(0xFFFF9500) : Colors.grey[600],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _gender = 'Female';
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                decoration: BoxDecoration(
                                  color: _gender == 'Female' ? Color(0xFFFF9500).withOpacity(0.1) : Colors.transparent,
                                  border: Border.all(
                                    color: _gender == 'Female' ? Color(0xFFFF9500) : Colors.grey[300]!,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'Female',
                                    style: TextStyle(
                                      color: _gender == 'Female' ? Color(0xFFFF9500) : Colors.grey[600],
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),

                      // Add some extra space at the bottom for better scrolling
                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Bottom Buttons - Fixed at bottom
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle Save & Exit
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF9500),
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Save & Exit',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        // Handle Add More
                        _nameController.clear();
                        _phoneController.clear();
                        setState(() {
                          _relationship = 'Father';
                          _gender = 'Male';
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Color(0xFFFF9500),
                        side: BorderSide(color: Color(0xFFFF9500)),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Add More',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}