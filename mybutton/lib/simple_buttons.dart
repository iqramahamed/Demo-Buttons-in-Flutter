import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SimpleButton extends StatefulWidget {
  const SimpleButton({Key? key}) : super(key: key);

  @override
  State<SimpleButton> createState() => _SimpleButtonState();
}

class _SimpleButtonState extends State<SimpleButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          titleSpacing: 0.2,
          leading: Icon(
            Icons.smart_button,
            color: Colors.greenAccent,
            size: 30,
          ),
          elevation: 1,
          title: Text(
            'Buttons',
            style: TextStyle(color: Colors.lightBlue),
          )),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: TextButton(
                    style: TextButton.styleFrom(
                      side: BorderSide(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      primary: Colors.white,
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      print('here we go');
                    },
                    child: Text(
                      'My Button',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ), //textButton Basic

            //textButton.Icon  here we can use icon and text together!

            TextButton.icon(
                style: TextButton.styleFrom(
                  side: BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  ),
                  primary: Colors.white,
                  backgroundColor: Color.fromARGB(64, 190, 10, 214),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.save,
                  color: Color.fromARGB(255, 10, 130, 190),
                  size: 20,
                ),
                label: Text(
                  'Icon Button',
                  style: TextStyle(color: Colors.black),
                )),

//elevatedbutton with icon

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.download),
                  label: Text('Download ')),
            ),

// elevvated button only

            ElevatedButton(onPressed: () {}, child: Text('Only Text Button')),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(onPressed: () {}),
            ),
            // floatingactionbutton

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.abc),
                  color: Colors.blueAccent),
            ),

            MaterialButton(
              onPressed: () {},
              child: Text('material button'),
            )
          ],
        ),
      ),
    );
  }
}
