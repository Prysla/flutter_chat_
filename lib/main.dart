import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Psaved ChatApp',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const ChatApp(title: 'ChatApp'),
    );
  }
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        leading: const CircleAvatar(
          radius: 8,
          backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/4132305/pexels-photo-4132305.jpeg?cs=srgb&dl=pexels-ketut-subiyanto-4132305.jpg&fm=jpg"),
        ),
        title: const Text(
          "ChatApp",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_horiz_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.black,
          backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/1771383/pexels-photo-1771383.jpeg?cs=srgb&dl=pexels-nappy-1771383.jpg&fm=jpg"),
        ),
        //  Text(
        //   "Hello Prysla Saved",
        //   style: TextStyle(
        //     color: Colors.orange,
        //   ),
        // ),
      ),
    );
  }
}
