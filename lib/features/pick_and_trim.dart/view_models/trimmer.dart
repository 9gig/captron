import 'package:flutter/material.dart';
import 'package:video_trimmer/video_trimmer.dart';

class VideoTrimmer extends ChangeNotifier {
  final Trimmer _trimmer = Trimmer();
  bool _isLoadingVideo = false;
  var _startValue = 0.0;
  var _endValue = 0.0;
  bool _isPlaying = false;

  bool get isLoadingVideo => _isLoadingVideo;
  get startValue => _startValue;
  get endValue => _endValue;
  bool get isPlaying => _isPlaying;

  //Reset start
  resetStartValue(val) {
    _startValue = val;
    notifyListeners();
  }

  //Reset End
  resetEndValue(val) {
    _endValue = val;
    notifyListeners();
  }

  //Reset playback
  resetPlayBack() {
    _isPlaying = !_isPlaying;
    notifyListeners();
  }
}
