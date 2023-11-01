import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/custom_tune.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tuneModel = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.green, sound: 'note4.wav'),
    TuneModel(color: Colors.greenAccent, sound: 'note5.wav'),
    TuneModel(color: Colors.blue, sound: 'note6.wav'),
    TuneModel(color: Colors.purple, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Piano Tunes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tuneModel
            .map((tuneModel) => CustomTuneItem(tuneModel: tuneModel))
            .toList(),
      ),
    );
  }
}
