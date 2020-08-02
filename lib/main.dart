import 'package:flutter/material.dart';
import 'ui/design.dart';

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: bmbAudioPlayer(),
    );
  }
}
