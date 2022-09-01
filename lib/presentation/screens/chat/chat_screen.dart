import 'package:flutter/material.dart';
import 'package:hungryzone/const/const.dart';
import 'package:hungryzone/presentation/screens/chat/single_chat_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreen,
        title: Text('Chat'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Card(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SingleChatScreen()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: kGreen,
                      child: Text('$index'),
                    ),
                    title: Text('cantact - $index'),
                    trailing: Icon(Icons.contact_page),
                  ),
                ),
              ),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: 20),
    );
  }
}
