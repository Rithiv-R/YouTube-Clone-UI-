import 'package:flutter/material.dart';

class HomeModel {
  var maintext;
  var text;
  var image;
  var dp;
  var duration;
  HomeModel({this.maintext, this.text, this.image, this.dp, this.duration});
}

List<HomeModel> pallet = [
  HomeModel(
    maintext: 'Ed Sheeran - Shape of You',
    text: 'Ed Sheeran - 5.38B views - 4 years ago',
    image: 'assets/edsheerandp.jpg',
    dp: 'assets/edsheeran.jpg',
    duration: '4:24',
  ),
  HomeModel(
    maintext: 'Serena - Safari(Official Vido)',
    text: 'RotonMusicTv - 177M views - 3 years ago',
    image: 'assets/safari.jpg',
    dp: 'assets/roton.jpg',
    duration: '3:09',
  ),
  HomeModel(
      maintext: 'Shakira - Waka Waka',
      text: 'Shakira - 2.8B views - 11 years ago',
      image: 'assets/shakira.jpg',
      dp: 'assets/shakiradp.jpg',
      duration: '3:31')
];
