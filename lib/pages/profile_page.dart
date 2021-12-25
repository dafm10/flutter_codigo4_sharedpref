
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String fullName = "";
  String address = "";
  int gender = 0;
  bool darkMode = false;

  getDataRegister() async {
    SharedPreferences _data = await SharedPreferences.getInstance();
    fullName = _data.getString("fullName") ?? "";
    address = _data.getString("address") ?? "";
    gender = _data.getInt("gender") ?? 0;
    darkMode = _data.getBool("darkMode") ?? false;
    setState(() {

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataRegister();
  }

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
            // para que se adapte al tamaño de sus hijos
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(fullName),
                subtitle: Text("Full Name",),
              ),
              ListTile(
                title: Text(address),
                subtitle: Text("Address",),
              ),
              ListTile(
                title: Text(darkMode ? "Actived" : "Desactived"),
                subtitle: Text("Dark Mode",),
              ),
              ListTile(
                title: Text(gender == 1 ? "Male" : "Female"),
                subtitle: Text("Gender",),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
