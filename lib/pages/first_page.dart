import 'package:flutter/material.dart';
import 'package:flutter_beginer/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   int _selectedIndex = 0;

   void _navigateBottomBar(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }

  final List _pages = [
    // FirstPage(),
    SecondPage(),
    SecondPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page'),),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_page_break),
            label: 'Second Page'
          ),
        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[200],
      //   child: Column(
      //     children: [
      //       DrawerHeader(child: Icon(
      //         Icons.favorite,
      //         size: 48,
      //       )),
      //       ListTile(
      //         leading: Icon(Icons.request_page),
      //         title: Text('Second Page'),
      //         onTap: () => {
      //           // close the drawer
      //           Navigator.pop(context),
      //           Navigator.pushNamed(context, '/secondpage')
      //           // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()))
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('Settings'),
      //       )
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: OutlinedButton(
      //       onPressed: () => [
      //         // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()))
      //         Navigator.pushNamed(context, '/secondpage')
      //       ],
      //       child: Text('Go To Second Page')
      //   ),
      // ),
    );
  }
}
