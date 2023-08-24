import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_trimmer/video_trimmer.dart';

class PickAssets extends ChangeNotifier {
  final Trimmer _trimmer = Trimmer();
  final ImagePicker _picker = ImagePicker();
  File? _file;

  File get file => _file!;
  Trimmer get trimmer => _trimmer;

  selectVideo(BuildContext context) async {
    var result = await _picker.pickVideo(source: ImageSource.gallery);

    if (result != null) {
      _file = File(result.path);
      notifyListeners();

      loadVideo(_file!);
      context.push('/trimvideo');
    }
  }

  selectVideoFromCam(BuildContext context) async {
    var result = await _picker.pickVideo(source: ImageSource.camera);

    if (result != null) {
      _file = File(result.path);
      notifyListeners();

      loadVideo(_file!);
      context.push('/trimvideo');
    }
  }

  loadVideo(File video) {
    _trimmer.loadVideo(videoFile: video);
    notifyListeners();
  }
}
