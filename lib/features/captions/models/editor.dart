import 'package:flutter/material.dart';

import '../../../shared/asset_config/assets.gen.dart';

class EditorTools {
  final String toolIcon;
  final String label;

  EditorTools(
    this.toolIcon,
    this.label,
  );
}

List<EditorTools> tools = [
  EditorTools(Assets.png.alignment.path, 'Alignment'),
  EditorTools(Assets.png.trim.path, 'Trim'),
  EditorTools(Assets.png.delete.path, 'Delete'),
  EditorTools(Assets.png.text.path, 'Text'),
  EditorTools(Assets.png.font.path, 'Font'),
  EditorTools(Assets.png.size.path, 'Size'),
  EditorTools(Assets.png.color.path, 'Color'),
  EditorTools(Assets.png.music.path, 'Music'),
  EditorTools(Assets.png.flip.path, 'Flip'),
  EditorTools(Assets.png.animation.path, 'Animation'),
];
