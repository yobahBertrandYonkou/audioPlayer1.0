import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:file_picker/file_picker.dart';

bmbAudioPlayer() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.black45);
  var audioPlayer = AudioPlayer();
  bool isPlaying = false;
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
        height: 580,
        child: Card(
          elevation: 10,
          color: Color(0xFFFFCC00),
          child: Image.asset("images/icons.png"),
        ),
      ),
      Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        child: Text("Duration and Music name"),
      ),
      Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        width: double.infinity,
        height: 200,
        child: Card(
          elevation: 10,
          color: Color(0xFFFFCC00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                color: Colors.white,
                onPressed: () async {
                  String filePath = await FilePicker.getFilePath();
                  int status = await audioPlayer.play(filePath, isLocal: true);
                  if (status == 1) {
                    isPlaying = true;
                  }
                },
                icon: Icon(
                  Icons.queue_music,
                ),
                iconSize: 70,
                splashColor: Colors.white,
              ),
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous,
                ),
                iconSize: 50,
                splashColor: Colors.white,
              ),
              IconButton(
                icon: Icon(
                  isPlaying
                      ? Icons.pause_circle_outline
                      : Icons.play_circle_outline,
                ),
                color: Colors.white,
                onPressed: () {
                  print(isPlaying);
                  if (isPlaying) {
                    audioPlayer.pause();
                    isPlaying = false;
                  } else {
                    audioPlayer.resume();
                    isPlaying = true;
                  }
                  print(isPlaying);
                },
                iconSize: 150,
                splashColor: Colors.white,
              ),
              IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next,
                ),
                iconSize: 50,
                splashColor: Colors.white,
              ),
              IconButton(
                color: Colors.white,
                onPressed: () {
                  if (isPlaying) {
                    audioPlayer.stop();
                    isPlaying = false;
                  } else {
                    Fluttertoast.showToast(
                        msg: "No Music",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black38,
                        textColor: Color(0xFFFFCC00),
                        fontSize: 16.0);
                  }
                },
                icon: Icon(
                  Icons.stop,
                ),
                iconSize: 70,
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
