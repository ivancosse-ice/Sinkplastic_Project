import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'collectors_dashboard_model.dart';
export 'collectors_dashboard_model.dart';

class CollectorsDashboardWidget extends StatefulWidget {
  const CollectorsDashboardWidget({super.key});

  static String routeName = 'CollectorsDashboard';
  static String routePath = '/collectorsDashboard';

  @override
  State<CollectorsDashboardWidget> createState() =>
      _CollectorsDashboardWidgetState();
}

class _CollectorsDashboardWidgetState extends State<CollectorsDashboardWidget> {
  late CollectorsDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CollectorsDashboardModel());
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
                  child: Stack(
                    alignment: AlignmentDirectional(-1, -1),
                    children: [
                      Align(
                        alignment: AlignmentDirectional(1, -1),
                        child: Container(
                          alignment: AlignmentDirectional(1, -1),
                          child: Container(
                            child: Opacity(
                              opacity: 0.1,
                              child: ClipRect(
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 40,
                                    sigmaY: 40,
                                  ),
                                  child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(100),
                                        topRight: Radius.circular(40),
                                        bottomLeft: Radius.circular(120),
                                        bottomRight: Radius.circular(80),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 1),
                        child: Container(
                          alignment: AlignmentDirectional(-1, 1),
                          child: Container(
                            child: Opacity(
                              opacity: 0.08,
                              child: ClipRect(
                                child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 50,
                                    sigmaY: 50,
                                  ),
                                  child: Container(
                                    width: 250,
                                    height: 250,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(60),
                                        topRight: Radius.circular(140),
                                        bottomLeft: Radius.circular(40),
                                        bottomRight: Radius.circular(100),
                                      ),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(24),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Welcome User!',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    font: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
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
                                                            .headlineMedium
                                                            .fontStyle,
                                                    lineHeight: 1.3,
                                                  ),
                                            ),
                                            Text(
                                              'Ready to reduce waste today?',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    letterSpacing: 0.0,
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
                                                    lineHeight: 1.5,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                UserProfileWidget.routeName);
                                          },
                                          child: Container(
                                            width: 48,
                                            height: 48,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .surfaceVariant,
                                              shape: BoxShape.circle,
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Text(
                                              'S',
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 18.24,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
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
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 24),
                                      child: Container(
                                        child: Container(),
                                      ),
                                    ),
                                    Container(
                                      height: 46.7,
                                      decoration: BoxDecoration(),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.goNamed(
                                              CreateOrderWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.buttonModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ButtonWidget(
                                            icon: Icon(
                                              Icons.local_shipping_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24,
                                            ),
                                            iconPresent: true,
                                            iconEndPresent: false,
                                            content: 'Solicitudes disponibles',
                                            variant: 'primary',
                                            size: 'large',
                                            fullWidth: true,
                                            loading: false,
                                            disabled: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.goNamed(
                                            CreateOrderWidget.routeName);
                                      },
                                      child: wrapWithModel(
                                        model: _model.buttonModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ButtonWidget(
                                          icon: Icon(
                                            Icons.map,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24,
                                          ),
                                          iconPresent: true,
                                          iconEndPresent: false,
                                          content: 'Mis rutas',
                                          variant: 'primary',
                                          size: 'large',
                                          fullWidth: true,
                                          loading: false,
                                          disabled: false,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 54.7,
                                      decoration: BoxDecoration(),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.goNamed(
                                              CreateOrderWidget.routeName);
                                        },
                                        child: wrapWithModel(
                                          model: _model.buttonModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ButtonWidget(
                                            icon: Icon(
                                              Icons.receipt_long,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24,
                                            ),
                                            iconPresent: true,
                                            iconEndPresent: false,
                                            content: 'Recolecciones Pasadas',
                                            variant: 'primary',
                                            size: 'large',
                                            fullWidth: true,
                                            loading: false,
                                            disabled: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 32)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
