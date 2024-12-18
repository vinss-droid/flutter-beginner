import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void onTapped() => {
    print('You tapped me')
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent[100],
        // appBar: AppBar(
        //   title: Text(
        //     'My Apps',
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Colors.deepPurple,
        //   leading: Icon(
        //     Icons.menu, color: Colors.white,
        //   ),
        //   actions: [
        //     IconButton(
        //         onPressed: (){},
        //         icon: Icon(Icons.logout, color: Colors.white,)
        //     )
        //   ],
        // ),
        // body: Center(
        //   child: Container(
        //     width: 300,
        //     height: 300,
        //     // padding: EdgeInsets.all(25),
        //     padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(20),
        //     ),
        //     // child: Text(
        //     //     'Kevin Sipahutar',
        //     //   style: TextStyle(
        //     //     color: Colors.blueAccent,
        //     //     fontWeight: FontWeight.w600,
        //     //     fontSize: 23,
        //     //   ),
        //     // )
        //     child: Icon(
        //       Icons.favorite,
        //       color: Colors.red,
        //       size: 50,
        //     )
        //   ),
        // ),
        // body: Column(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     // Container(
        //     //   height: 200,
        //     //   width: 200,
        //     //   color: Colors.deepPurple[100],
        //     // ),
        //
        //     Container(
        //       height: 350,
        //       color: Colors.deepPurple,
        //     ),
        //
        //     Container(
        //       height: 350,
        //       color: Colors.deepPurple[200],
        //     ),
        //
        //     Container(
        //       height: 350,
        //       color: Colors.deepPurple[100],
        //     ),
        //
        //     // Expanded(
        //     //   child: Container(
        //     //     // height: 200,
        //     //     color: Colors.deepPurple,
        //     //   ),
        //     // ),
        //
        //     // Expanded(
        //     //   flex: 3,
        //     //   child: Container(
        //     //     // height: 200,
        //     //     color: Colors.deepPurple[200],
        //     //   ),
        //     // ),
        //     //
        //     // Expanded(
        //     //   child: Container(
        //     //     // height: 200,
        //     //     color: Colors.deepPurple[100],
        //     //   ),
        //     // ),
        //   ],
        // ),
        // body: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //       Container(
        //         width: 350,
        //         color: Colors.deepPurple,
        //       ),
        //
        //       Container(
        //         width: 350,
        //         color: Colors.deepPurple[200],
        //       ),
        //
        //       Container(
        //         width: 350,
        //         color: Colors.deepPurple[100],
        //       ),
        //   ],
        // ),
        // body: ListView.builder(
        //   itemCount: 10,
        //   itemBuilder: (context, index) => ListTile(
        //     title: Text(index.toString()),
        //   )
        // )
        // body: GridView.builder(
        //   itemCount: 64,
        //   // how many items in a row
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        //   itemBuilder: (context, index) => Container(
        //     color: Colors.deepPurple,
        //     margin: EdgeInsets.all(2),
        //   ),
        // ),
        // body: Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.deepPurple,
        //     ),
        //     Container(
        //       width: 200,
        //       height: 200,
        //       color: Colors.deepPurple[400],
        //     ),
        //     Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.deepPurple[200],
        //     ),
        //   ],
        // ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.deepPurple,
            child: GestureDetector(
              onTap: onTapped,
              child: Center(
                  child: Text('Tap Me',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  )
              ),
            ),
          ),
        ),
      ),
    );
  }
}


