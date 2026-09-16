import '/auth/firebase_auth/auth_util.dart';
import '/components/button/button_widget.dart';
import '/components/profile_menu_item/profile_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileMenuItem.
  late ProfileMenuItemModel profileMenuItemModel1;
  // Model for ProfileMenuItem.
  late ProfileMenuItemModel profileMenuItemModel2;
  // Model for ProfileMenuItem.
  late ProfileMenuItemModel profileMenuItemModel3;
  // Model for ProfileMenuItem.
  late ProfileMenuItemModel profileMenuItemModel4;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    profileMenuItemModel1 = createModel(context, () => ProfileMenuItemModel());
    profileMenuItemModel2 = createModel(context, () => ProfileMenuItemModel());
    profileMenuItemModel3 = createModel(context, () => ProfileMenuItemModel());
    profileMenuItemModel4 = createModel(context, () => ProfileMenuItemModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    profileMenuItemModel1.dispose();
    profileMenuItemModel2.dispose();
    profileMenuItemModel3.dispose();
    profileMenuItemModel4.dispose();
    buttonModel.dispose();
  }
}
