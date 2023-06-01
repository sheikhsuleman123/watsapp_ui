import 'package:flutter/material.dart';
import 'package:watsapp_design/screens/calls.dart';
import 'package:watsapp_design/screens/chat.dart';
import 'package:watsapp_design/screens/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            backgroundColor: const Color(0xFF008069),
            automaticallyImplyLeading: false,
            title: const Text("WhatsApp"),
            elevation: 1,
            actions:  [
              IconButton(onPressed: (){}, icon: const Icon(Icons.camera_enhance_outlined)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
            ],
            bottom:  TabBar(
              indicator: const UnderlineTabIndicator(
                insets: EdgeInsets.symmetric(horizontal: 15.0)
              ),
              indicatorColor: Colors.white,
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: IconButton(onPressed: (){} ,icon: Icon(Icons.group,)),
                ),
                const Tab( text: "Chats " ,),
                const Tab( text: "Status " ,),
                const Tab( text: "Calls " ,),
              ],
            ),
          ),
          body:  const TabBarView(
            children: [
              ChatsScreen(),
              ChatsScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
