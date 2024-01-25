import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 103, 58, 183)),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  String name = "shyam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 210, 210),
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
                color: Colors.cyan,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 100,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              print("Text button clicked");
                            },
                            child: Text("click me!!")),
                        IconButton(
                            onPressed: () {
                              print("icon ");
                            },
                            icon: Icon(Icons.mic))
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print("elevated button");
                        },
                        child: Text("click me"))
                  ],
                )),
            Container(
              color: const Color.fromARGB(255, 7, 0, 212),
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 100,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          print("Text button clicked");
                        },
                        child: Text("click me!!")),
                    IconButton(
                        onPressed: () {
                          print("icon ");
                        },
                        icon: Icon(Icons.mic))
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      print("elevated button");
                    },
                    child: Text("click me"))
              ],
            )),
          ],
        ),
      ),
    );
  }
}
