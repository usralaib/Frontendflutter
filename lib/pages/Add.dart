import 'package:flutter/material.dart';

import 'StatPage.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String _name = '';
  int _age = 0;
  String _gender = '';
  List<String> _selectedApps = [];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is required';
        }
        return null;
      },
      onSaved: (String? value) {
        _name = value!;
      },
    );
  }

  Widget _buildAgeField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Age'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Age is required';
        }
        return null;
      },
      onSaved: (String? value) {
        _age = int.parse(value!);
      },
    );
  }

  Widget _buildGenderField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Gender'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Gender is required';
        }
        return null;
      },
      onSaved: (String? value) {
        _gender = value!;
      },
    );
  }

  String? selectedSocialMedia; // stores the selected social media option

  List<String> socialMediaOptions = [
    'Instagram',
    'Facebook',
    'YouTube',
    'Twitter',
    'Snapchat',
    'TikTok',
    'LinkedIn',
    'Pinterest',
    'Reddit',
    'Spotify',
    'Other',
  ];

  Widget _buildAppDropdownlist() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Select Social Media Apps',
      ),
      value: selectedSocialMedia,
      onChanged: (value) {
        setState(() {
          selectedSocialMedia = value;
        });
      },
      items: socialMediaOptions.map((socialMedia) {
        return DropdownMenuItem(
          value: socialMedia,
          child: Text(socialMedia),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hello !",
                  style:
                      TextStyle(fontSize: 32, color: Colors.black, height: 1.3),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Text(
                    'Please add an account for your child.',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildNameField(),
                _buildAgeField(),
                _buildGenderField(),
                SizedBox(height: 16),
                _buildAppDropdownlist(),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StatPage(),
                        ));
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    _formKey.currentState!.save();
                    print(_name);
                    print(_age);
                    print(_gender);
                    print(_selectedApps);
                  },
                  child: Text('Add'),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(342, 64)),
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color(0xff719E82),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
