import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

bmbAudioPlayer() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.black45);
  var player = AudioPlayer();
  var body = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        width: double.infinity,
        height: 600,
        child: Card(
          color: Color(0xFFFFCC00),
          child: Image.asset("images/icons.png"),
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        width: double.infinity,
        height: 250,
        child: Card(
          elevation: 10,
          color: Color(0xFFFFCC00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous,
                ),
                iconSize: 100,
                splashColor: Colors.white,
              ),
              IconButton(
                color: Colors.white,
                onPressed: () async {
                  player.play(
                    "C:/images/test.mp3",
                  );
                },
                icon: Icon(
                  Icons.play_circle_outline,
                ),
                iconSize: 200,
                splashColor: Colors.white,
              ),
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next,
                ),
                iconSize: 100,
                splashColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    ],
  );
  var appBar = AppBar(
    title: Text("AudioPlayer"),
    backgroundColor: Color(0xFF9500ff),
  );
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: appBar,
      backgroundColor: Color(0xFF46008c),
      body: body,
    ),
  );
}
