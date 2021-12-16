import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataSharedPreferences();
  }

  saveDataSharedPreferences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    // con set guardamos valores
    // siempre se guardará una clave con su valor
    _prefs.setString("name", "David Fernandez");
    _prefs.setInt("age", 33);
    _prefs.setBool("vaccined", true);

    _prefs.setInt("counter", _counter);
  }
  
  getDataSharedPreferences() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    // con get obtenemos valores
    String name = _prefs.getString("name") ?? "";
    int age = _prefs.getInt("age") ?? 0;
    bool vaccined = _prefs.getBool("vaccined") ?? false;

    _counter = _prefs.getInt("counter") ?? 0;
    setState(() {

    });

/*    print(name);
    print(age);
    print(vaccined);*/

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counter++;
          setState(() {
            saveDataSharedPreferences();
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Shared Preferences"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            Text(
              "Nuestro contador con Shared Preferences",
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("3");
  }
}
