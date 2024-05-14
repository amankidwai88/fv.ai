import 'package:crud/common_widget/text_box.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final currentUser = FirebaseAuth.instance.currentUser;

  Future<void> editField(String field) async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Profile Page"),
        backgroundColor: Colors.grey[300],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Center(
            child: CircleAvatar(
              radius: 72,
              backgroundImage: NetworkImage(
                'https://example.com/profile_image.jpg',
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            currentUser?.email ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700]),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'My Details',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Aman'),
            subtitle: const Text('Username'),
            onTap: () => editField('username'),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Empty Bio'),
            subtitle: const Text('Bio'),
            onTap: () => editField('bio'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.height),
            title: const Text('Height'),
            subtitle: const Text('Height'),
            onTap: () => editField('Height'),
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('DOB'),
            subtitle: const Text('Date of Birth'),
            onTap: () => editField('DOB'),
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Gender'),
            subtitle: const Text('Gender'),
            onTap: () => editField('Gender'),
          ),
          ListTile(
            leading: const Icon(Icons.fitness_center),
            title: const Text('Weight'),
            subtitle: const Text('Weight'),
            onTap: () => editField('Weight'),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'My Stats',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}
