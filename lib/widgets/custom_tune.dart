import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';

class CustomTuneItem extends StatelessWidget {
  const CustomTuneItem({super.key, required this.tuneModel});

  final TuneModel tuneModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource(tuneModel.sound));
        },
        child: Container(
          width: double.infinity,
          color: tuneModel.color,
        ),
      ),
    );
  }
}
