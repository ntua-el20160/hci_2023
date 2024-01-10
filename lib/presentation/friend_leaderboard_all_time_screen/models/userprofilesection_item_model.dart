import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({
    this.dynamicText,
    this.dynamicText1,
    this.dynamicText2,
    this.id,
  }) {
    dynamicText = dynamicText ?? "#1";
    dynamicText1 = dynamicText1 ?? "Username";
    dynamicText2 = dynamicText2 ?? "Song Name";
    id = id ?? "";
  }

  String? dynamicText;

  String? dynamicText1;

  String? dynamicText2;

  String? id;
}
