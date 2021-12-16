
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool darkMode = false;
  int gender = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Page"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://i.pinimg.com/736x/ca/6b/0f/ca6b0f7177229f00b2ec1ea2f48385fd.jpg",
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                      "https://m.media-amazon.com/images/I/61srwGulapL._AC_SX569_.jpg",
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "R2D2",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Programador",
                    style: GoogleFonts.montserrat(
                      color: Colors.white70,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Settings Page",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                color: Color(0xff424242),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Full name",
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Address",
              ),
            ),
            //Switch(value: true, onChanged: (bool value){}),
            SwitchListTile(
              value: darkMode,
              title: Text("Darl Mode"),
              onChanged: (bool value) {
                darkMode = value;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Gender",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            RadioListTile(
              value: 1,
              groupValue: gender,
              title: Text("Male"),
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              value: 2,
              groupValue: gender,
              title: Text("Female"),
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              value: 3,
              groupValue: gender,
              title: Text("No definido"),
              onChanged: (int? value) {
                gender = value!;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 45.0,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black87,
                ),
                onPressed: () {},
                icon: Icon(Icons.save),
                label: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 18.0,
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
