import 'package:flutter/material.dart';
import 'package:flutter_codigo5_ui/pages/house_page.dart';
import 'package:flutter_codigo5_ui/pages/login1_page.dart';
import 'package:flutter_codigo5_ui/pages/login2_page.dart';
import 'package:flutter_codigo5_ui/pages/parking_page.dart';
import 'package:flutter_codigo5_ui/pages/sport_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int _paginaActual = 0;
    List<Widget> _pages = [
      HousePage(),
      Login1Page(),
      Login2Page(),
      // ParkingPage(),
      // ParkingPage(),
      //SportPage(),
    ];
    return MaterialApp(
      title: "Flutter UI",
      debugShowCheckedModeBanner: false,
      home: _pages[_paginaActual],
      /* Scaffold(
        //  body: _paginaActual == 1 ? Login1Page() : HousePage(),
        //_pages[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amberAccent,
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            //   BottomNavigationBarItem(
            // icon: Icon(Icons.person), label: "Person"),
          ],
        ),
      ), */
    );
  }
}
