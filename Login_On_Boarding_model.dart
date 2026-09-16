import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'login_onboarding_widget.dart' show LoginOnboardingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginOnboardingModel extends FlutterFlowModel<LoginOnboardingWidget> {
  ///  Local state fields for this page.

  String? email;

  String? password;

  String? role = 'Customer';

  String? error;

  ///  State fields for stateful widgets in this page.

  // State field(s) for email_input widget.
  FocusNode? emailInputFocusNode;
  TextEditingController? emailInputTextController;
  String? Function(BuildContext, String?)? emailInputTextControllerValidator;
  // State field(s) for Password_input widget.
  FocusNode? passwordInputFocusNode;
  TextEditingController? passwordInputTextController;
  late bool passwordInputVisibility;
  String? Function(BuildContext, String?)? passwordInputTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordInputVisibility = false;
  }

  @override
  void dispose() {
    emailInputFocusNode?.dispose();
    emailInputTextController?.dispose();

    passwordInputFocusNode?.dispose();
    passwordInputTextController?.dispose();
  }
}
