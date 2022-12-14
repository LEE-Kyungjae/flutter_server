import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:server4/chat_message.dart';

import '';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chat app'),
      ),
      body: Column(
        children: [
          Expanded(child: ListView(
              children:[
                ChatMessage(),
                ChatMessage()
              ]
          )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(hintText: "메세지 입력"),
                    onSubmitted: _handleSubmitted,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _handleSubmitted(_textEditingController.text);
                    //print(_textEditingController.text);
                    _textEditingController.clear();
                  },
                  child: Text("Send"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    elevation: 0.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _handleSubmitted(String text) {
  //Logger().d(text);
  //Logger().v(text);
}

//_textEditingController.clear();
