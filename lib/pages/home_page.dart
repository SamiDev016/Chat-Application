
import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

import '../components/my_drawer.dart';
import '../components/user_tile.dart';
import 'chat_page.dart';

class HomePage extends StatelessWidget {
 HomePage({super.key});

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage",style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        
      ),
      drawer: const MyDrawer(),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList(){
    return StreamBuilder(stream: _chatService.getUserStream(), builder: (context,snapshot){
      if (snapshot.hasError) {
        return Text("ERROR");
      }
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Text("Loading ...");
      }
      return ListView(
        children: snapshot.data!.map<Widget>((userData) => _buildUserListItem(userData,context)).toList(),
      );
    });
  }

  Widget _buildUserListItem(Map<String,dynamic> userData,BuildContext context){
    if(userData["email"] != _authService.getCurrentUser()!.email){
      return UserTile(
      text: userData["email"],
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(
          recieverID: userData["uid"],
          recieverEmail: userData["email"],
        ),));
      },
    );
    }else{
      return Container();
    }
  }

}

