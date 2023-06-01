import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const ListTile(
             leading: CircleAvatar(
               radius: 24,
               backgroundImage: AssetImage("assets/images/man.jpg"),
             ),
              title: Text("My status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
              subtitle: Text("Tap to add the status update"),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 20,bottom: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Recent Updates"),
              ),
            ),
            ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder : (context, index)  {
                  return  ListTile(
                    title: const Text("Husnain"),
                    subtitle:const Text("Today, 2:05 pm"),
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.greenAccent,width: 2)
                      ),
                      child: const CircleAvatar(radius: 24,
                          backgroundImage: AssetImage("assets/images/man.jpg")),
                    ),
                  );
                },
            ),
           const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
             Icon(Icons.lock,color: Colors.black,size: 14,),SizedBox(width: 2,),
                Text("Your chats are end to end ecnxrypted",style: TextStyle(color: Colors.teal,fontSize: 13),)
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: Column(
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
    FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.white70,
        child: const Icon(Icons.edit,color: Colors.black,),
      ),
    const SizedBox(height: 10,),
      FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.teal,
      child: const Icon(Icons.camera_enhance),
       ),
     ],
    ),
    );
  }
}
