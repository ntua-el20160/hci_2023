import 'package:flutter/material.dart';
import 'package:moodj2/core/app_export.dart';
import 'package:moodj2/presentation/post_screen/models/post_model.dart';

/// A provider class for the PostScreen.
///
/// This provider manages the state of the PostScreen, including the
/// current postModelObj

// ignore_for_file: must_be_immutable
class PostProvider extends ChangeNotifier {
  PostModel postModelObj = PostModel();

  @override
  void dispose() {
    super.dispose();
  }
}
