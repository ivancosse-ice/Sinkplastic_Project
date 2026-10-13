import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'login_onboarding_model.dart';
export 'login_onboarding_model.dart';

class LoginOnboardingWidget extends StatefulWidget {
  const LoginOnboardingWidget({super.key});

  static String routeName = 'LoginOnboarding';
  static String routePath = '/loginOnboarding';

  @override
  State<LoginOnboardingWidget> createState() => _LoginOnboardingWidgetState();
}

class _LoginOnboardingWidgetState extends State<LoginOnboardingWidget> {
  late LoginOnboardingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginOnboardingModel());

    _model.emailInputTextController ??= TextEditingController();
    _model.emailInputFocusNode ??= FocusNode();

    _model.passwordInputTextController ??= TextEditingController();
    _model.passwordInputFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 0,
                height: 0,
              ),
              Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 320,
                        child: Stack(
                          alignment: AlignmentDirectional(-1, -1),
                          children: [
                            Opacity(
                              opacity: 0.2,
                              child: Align(
                                alignment: AlignmentDirectional(-1.2, -0.8),
                                child: ClipRect(
                                  child: ImageFiltered(
                                    imageFilter: ImageFilter.blur(
                                      sigmaX: 40,
                                      sigmaY: 40,
                                    ),
                                    child: Container(
                                      width: 280,
                                      height: 280,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(140),
                                          topRight: Radius.circular(100),
                                          bottomLeft: Radius.circular(180),
                                          bottomRight: Radius.circular(120),
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.15,
                              child: Align(
                                alignment: AlignmentDirectional(1.3, -0.5),
                                child: ClipRect(
                                  child: ImageFiltered(
                                    imageFilter: ImageFilter.blur(
                                      sigmaX: 30,
                                      sigmaY: 30,
                                    ),
                                    child: Container(
                                      width: 220,
                                      height: 220,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(100),
                                          topRight: Radius.circular(160),
                                          bottomLeft: Radius.circular(90),
                                          bottomRight: Radius.circular(140),
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsets.all(32),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(32),
                                        shape: BoxShape.rectangle,
                                      ),
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Stack(
                                        alignment: AlignmentDirectional(0, 0),
                                        children: [
                                          Icon(
                                            Icons.recycling_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .onSurface,
                                            size: 56,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 40, 0, 0),
                                            child: Container(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'SinkPlastic',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                font: GoogleFonts.nunito(
                                                  fontWeight: FontWeight.w800,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w800,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .fontStyle,
                                                lineHeight: 1.25,
                                              ),
                                        ),
                                        Text(
                                          'Circular Economy for Plastic Waste',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.nunito(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onSurface,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4)),
                                    ),
                                  ].divide(SizedBox(height: 24)),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.39, -0.19),
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .surfaceVariant,
                                  borderRadius: BorderRadius.circular(9999),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'I am a...',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.dmSans(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ].divide(SizedBox(height: 16)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextFormField(
                                  controller: _model.emailInputTextController,
                                  focusNode: _model.emailInputFocusNode,
                                  autofocus: false,
                                  enabled: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'Email Addres',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.nunito(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 15,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    hintText: 'Ingrese su correo',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.nunito(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Color(0xFF2D342B),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.nunito(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  textAlign: TextAlign.start,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model
                                      .emailInputTextControllerValidator
                                      .asValidator(context),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextFormField(
                                      controller:
                                          _model.passwordInputTextController,
                                      focusNode: _model.passwordInputFocusNode,
                                      autofocus: false,
                                      enabled: true,
                                      obscureText:
                                          !_model.passwordInputVisibility,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelText: 'Password',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.nunito(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 15,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        hintText: 'Ingrese su contraseña',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.nunito(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        prefixIcon: Icon(
                                          Icons.lock_open_outlined,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () async {
                                            safeSetState(() => _model
                                                    .passwordInputVisibility =
                                                !_model
                                                    .passwordInputVisibility);
                                          },
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _model.passwordInputVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.nunito(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      enableInteractiveSelection: true,
                                      validator: _model
                                          .passwordInputTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ].divide(SizedBox(height: 8)),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Container(
                                    child: Text(
                                      'Forgot Password?',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            font: GoogleFonts.nunito(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .onSurface,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 24)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    GoRouter.of(context).prepareAuthEvent();

                                    final user =
                                        await authManager.signInWithEmail(
                                      context,
                                      _model.emailInputTextController.text,
                                      _model.passwordInputTextController.text,
                                    );
                                    if (user == null) {
                                      return;
                                    }

                                    context.goNamedAuth(
                                        CustomerDashboardWidget.routeName,
                                        context.mounted);
                                  },
                                  text: 'Sign in',
                                  icon: Icon(
                                    Icons.check_circle,
                                    size: 15,
                                  ),
                                  options: FFButtonOptions(
                                    width: 175,
                                    height: 60,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.dmSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    elevation: 0,
                                    borderSide: BorderSide(
                                      width: 100,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16)),
                            ),
                            Container(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                                child: Container(
                                  child: Container(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Don\'t have an account?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.nunito(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onSurface,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                CrearCuentaWidget.routeName);
                                          },
                                          child: Text(
                                            'Create Account',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .onSurface,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 4)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 32)),
                        ),
                      ),
                      Opacity(
                        opacity: 0.3,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
                          child: Container(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).surfaceVariant,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
