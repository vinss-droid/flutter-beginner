import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // Text Editing Controller to get access to the text field value
  final myController = TextEditingController();
  String greetingMessage = '';

  void greetUser() {
    String name = myController.text;
    setState(() {
      greetingMessage = 'Hello, $name';
      myController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: (){
          return Future.delayed(const Duration(seconds: 2));
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  greetingMessage,
                  style: const TextStyle(fontSize: 24),
                ),
                TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Type your name!',
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: greetUser,
                  style: ButtonStyle(

                  ),
                  child: const Text('Tap'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
