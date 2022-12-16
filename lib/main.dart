import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'notes.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(
    MaterialApp(
      home: XylophoneApp(),
    ),
  );
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  AudioCache audioCache = AudioCache();
  Notes notes = Notes();
  Songs songs = Songs();

  var color = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blueGrey,
    Colors.deepPurple,
    Colors.teal,
  ];

  void playSound({required int soundNumber}) {
    audioCache.play("note$soundNumber.wav");
  }

  Widget xylophoneTemplate({required int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color[soundNumber - 1],
        onPressed: () {
          playSound(soundNumber: soundNumber);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        panel: Center(
          child: Column(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () async {
                    songs.playSong(songs.firstSong());
                  },
                  child: ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted Nightingale'),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () async {
                    songs.playSong(songs.firstSong());
                  },
                  child: ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted Nightingale'),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () async {
                    songs.playSong(songs.firstSong());
                  },
                  child: ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted Nightingale'),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () async {
                    songs.playSong(songs.firstSong());
                  },
                  child: ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted Nightingale'),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () async {
                    songs.playSong(songs.firstSong());
                  },
                  child: ListTile(
                    leading: Icon(Icons.album),
                    title: Text('The Enchanted Nightingale'),
                    subtitle:
                        Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ),
              ),
            ],
          ),
        ),
        collapsed: Container(
          color: Colors.blueGrey,
          child: Center(
            child: Text(
              "Swipe Me Up!",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (int i = 1; i <= 7; i++) xylophoneTemplate(soundNumber: i),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Songs {
  Notes notes = Notes();

  Future<void> playSong(var temp) async {
    for (int i = 0; i < temp.length; i++) {
      await Future.delayed(Duration(milliseconds: 500));
      switch (temp[i]) {
        case 'A':
          notes.A();
          break;
        case 'B':
          notes.B();
          break;
        case 'C':
          notes.C();
          break;
        case 'D':
          notes.D();
          break;
        case 'E':
          notes.E();
          break;
        case 'F':
          notes.F();
          break;
        case 'G':
          notes.G();
          break;
        default:
      }
    }
  }

  List<String> firstSong() {
    var list = [
      "C",
      "C",
      "G",
      "G",
      "A",
      "A",
      "G",
      "",
      "F",
      "F",
      "E",
      "E",
      "D",
      "D",
      "C",
      "",
      "G",
      "G",
      "F",
      "F",
      "E",
      "E",
      "D",
      "",
      "G",
      "G",
      "F",
      "F",
      "E",
      "E",
      "D",
      "",
      "C",
      "C",
      "G",
      "G",
      "A",
      "A",
      "G",
      "",
      "F",
      "F",
      "E",
      "E",
      "D",
      "D",
      "C",
    ];

    return list;
  }
}
