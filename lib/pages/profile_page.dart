

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12.withOpacity(0.07),
                blurRadius: 12.0,
                offset: Offset(5,5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text("Aquí va el nombre",),
                subtitle: Text("Full Name",),
              ),
              ListTile(
                title: Text("Aquí va la dirección",),
                subtitle: Text("Address",),
              ),
              ListTile(
                title: Text("Activo",),
                subtitle: Text("Dark Mode",),
              ),
              ListTile(
                title: Text("Male",),
                subtitle: Text("Gender",),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
