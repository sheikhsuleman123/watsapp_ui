import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
             ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.teal,width: 1)
                  ),
                child: const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.teal,
                  child: Icon(Icons.call,color: Colors.white,),
                ),
              ),
              title: const Text("Create call link",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              subtitle: const Text("Sgare a link for your watsapp call"),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 20,bottom: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Recent"),
              ),
            ),
            ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder : (context, index)  {
                return const ListTile(
                  title: Text("Usman"),
                  subtitle: Text("Today, 2:05 pm"),
                  leading: CircleAvatar(radius: 24,
                      backgroundImage: AssetImage("assets/images/man.jpg")),
                  trailing: Icon(Icons.call,color: Colors.teal,),
                );
              },
            ),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock,color: Colors.black,size: 14,), SizedBox(width: 2,),
                Text("Your chats are end to end ecnxrypted",style: TextStyle(color: Colors.teal,fontSize: 13),)
              ],
            ),
            const SizedBox(height: 20,),

          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add_ic_call_rounded,color: Colors.white,),
      ),
    );
  }
}
