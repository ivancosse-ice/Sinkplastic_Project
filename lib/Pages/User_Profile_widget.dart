import '/auth/firebase_auth/auth_util.dart';
import '/components/button/button_widget.dart';
import '/components/profile_menu_item/profile_menu_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'user_profile_model.dart';
export 'user_profile_model.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({super.key});

  static String routeName = 'UserProfile';
  static String routePath = '/userProfile';

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  late UserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileModel());
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
          child: SingleChildScrollView(
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
                        Align(
                          alignment: AlignmentDirectional(-1, -1),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Container(
                                child: FlutterFlowIconButton(
                                  borderRadius: 8,
                                  buttonSize: 40,
                                  fillColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                    size: 24,
                                  ),
                                  onPressed: () async {
                                    context.pop();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 280,
                          child: Stack(
                            alignment: AlignmentDirectional(-1, -1),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -1),
                                child: Container(
                                  alignment: AlignmentDirectional(0, -1),
                                  child: Container(
                                    height: 220,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primary10,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(80),
                                        bottomRight: Radius.circular(120),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      60, 0, 60, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(4),
                                          child: Container(
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                shape: BoxShape.circle,
                                              ),
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Text(
                                                'AR',
                                                textAlign: TextAlign.center,
                                                maxLines: 1,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.nunito(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .onPrimary,
                                                      fontSize: 32,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                      lineHeight: 1.3,
                                                    ),
                                                overflow: TextOverflow.clip,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Alex Rivera',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  font: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineSmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                  lineHeight: 1.35,
                                                ),
                                          ),
                                          Text(
                                            'alex.rivera@sinkplastic.eco',
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts.nunito(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 4)),
                                      ),
                                      Container(
                                        height: 34,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .success10,
                                          borderRadius:
                                              BorderRadius.circular(9999),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1,
                                          ),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 12, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.verified_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                size: 18,
                                              ),
                                              Text(
                                                'Verified Customer',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font: GoogleFonts.nunito(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                      fontSize: 14,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                      lineHeight: 1.3,
                                                    ),
                                              ),
                                            ].divide(SizedBox(width: 6)),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 16)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                          child: Container(
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .surfaceVariant30,
                                borderRadius: BorderRadius.circular(24),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(24),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Your Establishment',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  font: GoogleFonts.nunito(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                  lineHeight: 1.3,
                                                ),
                                          ),
                                          Icon(
                                            Icons.edit_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .onSurfaceVariant,
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 48,
                                            height: 48,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              shape: BoxShape.rectangle,
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Icon(
                                              Icons.home_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .onSurface,
                                              size: 24,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Home',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      font: GoogleFonts.dmSans(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                      lineHeight: 1.45,
                                                    ),
                                              ),
                                              Text(
                                                '123 Serenity Lane, Eco District',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.nunito(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                      lineHeight: 1.4,
                                                    ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                        ].divide(SizedBox(width: 16)),
                                      ),
                                    ].divide(SizedBox(height: 16)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(24),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                                child: Container(
                                  child: Text(
                                    'Account Settings',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.nunito(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.profileMenuItemModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ProfileMenuItemWidget(
                                  target: '',
                                  bgColor:
                                      FlutterFlowTheme.of(context).primary15,
                                  icon: Icon(
                                    Icons.person_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24,
                                  ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primary,
                                  title: 'Personal Information',
                                  subtitle: 'Name, phone, and email',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.profileMenuItemModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ProfileMenuItemWidget(
                                  target: '',
                                  bgColor:
                                      FlutterFlowTheme.of(context).accent15,
                                  icon: Icon(
                                    Icons.location_on_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 24,
                                  ),
                                  iconColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                  title: 'Pickup Addresses',
                                  subtitle: 'Manage multiple locations',
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context
                                      .pushNamed(OrderHistoryWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.profileMenuItemModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ProfileMenuItemWidget(
                                    target: 'order_history',
                                    bgColor: FlutterFlowTheme.of(context)
                                        .secondary15,
                                    icon: Icon(
                                      Icons.history_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      size: 24,
                                    ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    title: 'Pickup History',
                                    subtitle: 'Review your past collections',
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.profileMenuItemModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: ProfileMenuItemWidget(
                                  target: '',
                                  bgColor: FlutterFlowTheme.of(context).info15,
                                  icon: Icon(
                                    Icons.notifications_active_rounded,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24,
                                  ),
                                  iconColor: FlutterFlowTheme.of(context).info,
                                  title: 'Notifications',
                                  subtitle: 'Alerts for collectors and impact',
                                ),
                              ),
                            ].divide(SizedBox(height: 16)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
                          child: Container(
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.all(24),
                                child: Container(
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.goNamedAuth(
                                          LoginOnboardingWidget.routeName,
                                          context.mounted);
                                    },
                                    child: wrapWithModel(
                                      model: _model.buttonModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        icon: Icon(
                                          Icons.logout_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24,
                                        ),
                                        iconPresent: true,
                                        iconEndPresent: false,
                                        content: 'Sign Out',
                                        variant: 'ghost',
                                        size: 'medium',
                                        fullWidth: true,
                                        loading: false,
                                        disabled: false,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          alignment: AlignmentDirectional(0, 0),
                          child: Icon(
                            Icons.water_drop_rounded,
                            color: FlutterFlowTheme.of(context).primary20,
                            size: 64,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
