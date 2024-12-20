import 'package:flutter/material.dart';
import 'package:flutter_beginer/util/button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Button(
                  text: 'Save',
                  onPressed: onSave,
                ),

                const SizedBox(width: 8),

                Button(
                  text: 'Cancel',
                  onPressed: onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
