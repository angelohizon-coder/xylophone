import 'package:audioplayers/audioplayers.dart';

class Notes {
  AudioCache audioCache = AudioCache();

  void C() {
    audioCache.play("note1.wav");
  }

  void D() {
    audioCache.play("note2.wav");
  }

  void E() {
    audioCache.play("note3.wav");
  }

  void F() {
    audioCache.play("note4.wav");
  }

  void G() {
    audioCache.play("note5.wav");
  }

  void A() {
    audioCache.play("note6.wav");
  }

  void B() {
    audioCache.play("note7.wav");
  }
}
