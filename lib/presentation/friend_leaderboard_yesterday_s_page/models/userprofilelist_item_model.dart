import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.usernameText,
    this.songText,
    this.id,
  }) {
    usernameText = usernameText ?? "Username";
    songText = songText ?? "Song Name";
    id = id ?? "";
  }

  String? usernameText;

  String? songText;

  String? id;
}
