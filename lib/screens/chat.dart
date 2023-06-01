
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
          itemCount: 20,
          shrinkWrap: true,
          itemBuilder : (context, index)  {
        return const ListTile(
          title: Text("Suleman"),
          subtitle: Text("hallo there I am using WhatsApp"),
          leading: CircleAvatar(radius: 24,
              backgroundImage: AssetImage("assets/images/man.jpg")),
          trailing: Text("12:00 pm"),
        );
      }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color(0xFF008069),
        child: const Icon(Icons.message,color: Colors.white,),
      ),
    );
  }
}
