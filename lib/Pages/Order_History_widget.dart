import '/backend/backend.dart';
import '/components/button/button_widget.dart';
import '/components/order_card/order_card_widget.dart';
import '/components/order_card2/order_card2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';

import 'order_history_model.dart';
export 'order_history_model.dart';

class OrderHistoryWidget extends StatefulWidget {
  const OrderHistoryWidget({super.key});

  static String routeName = 'OrderHistory';
  static String routePath = '/orderHistory';

  @override
  State<OrderHistoryWidget> createState() => _OrderHistoryWidgetState();
}

class _OrderHistoryWidgetState extends State<OrderHistoryWidget> {
  late OrderHistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderHistoryModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                child: Stack(
                  alignment: AlignmentDirectional(-1, -1),
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return FbmGradientShaderFill(
                            width: constraints.maxWidth.isFinite
                                ? constraints.maxWidth
                                : 200.0,
                            height: constraints.maxHeight.isFinite
                                ? constraints.maxHeight
                                : 200.0,
                            params: ShaderParams(values: {
                              'gradientAngle': 180,
                              'gradientScale': 1.27,
                              'gradientOffset': 0.19,
                              'noiseIntensity': 0.81,
                              'ditherStrength': 0,
                              'ditherScale': 1,
                              'animSpeed': 0.33,
                              'octaves': 6.06,
                              'lacunarity': 2.35,
                              'persistence': 0.5,
                              'noiseScale': 4.5,
                              'colorCount': 3,
                              'softness': 1,
                              'exposure': 1,
                              'contrast': 1,
                              'bumpStrength': 0.1,
                              'lightDirX': 0.5,
                              'lightDirY': 0.6,
                              'lightDirZ': 0.9,
                              'lightIntensity': 0.89,
                              'ambient': 0.29,
                              'specular': 0.16,
                              'shininess': 3.06,
                              'metallic': 0,
                              'roughness': 0.49,
                              'edgeFade': 0,
                              'edgeFadeMode': 1
                            }, colors: {
                              'color0': FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              'color1': Color(0xFFF2EBE1),
                              'color2': FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              'color3': Color(0x00808080),
                              'color4': Color(0x00808080),
                              'color5': Color(0x00808080),
                              'color6': Color(0x00808080),
                              'color7': Color(0x00808080),
                              'color8': Color(0x00808080),
                              'color9': Color(0x00808080)
                            }),
                            animationMode: ShaderAnimationMode.continuous,
                            cache: false,
                          );
                        },
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
                            child: StreamBuilder<List<OrdersRecord>>(
                              stream: queryOrdersRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                                List<OrdersRecord>
                                    columnPaddingOrdersRecordList =
                                    snapshot.data!;

                                return Container(
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
                                          FlutterFlowIconButton(
                                            borderRadius: 24,
                                            buttonSize: 40,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            icon: Icon(
                                              Icons.arrow_back_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              context.goNamed(
                                                  CustomerDashboardWidget
                                                      .routeName);
                                            },
                                          ),
                                          Text(
                                            'Order History',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  font: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.w800,
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
                                                  fontWeight: FontWeight.w800,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .fontStyle,
                                                  lineHeight: 1.3,
                                                ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderRadius: 24,
                                            buttonSize: 40,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            icon: Icon(
                                              Icons.tune_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(32),
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      FFAppState()
                                                          .totalRecycledKg
                                                          .toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .dmSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .onSurface,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                            lineHeight: 1.4,
                                                          ),
                                                    ),
                                                    Text(
                                                      'Total Kg',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .onSurface80,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                                lineHeight: 1.2,
                                                              ),
                                                    ),
                                                  ].divide(SizedBox(height: 4)),
                                                ),
                                                Container(
                                                  width: 1,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .onPrimary20,
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      columnPaddingOrdersRecordList
                                                          .length
                                                          .toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleLarge
                                                          .override(
                                                            font: GoogleFonts
                                                                .dmSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                            ),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .onSurface,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                            lineHeight: 1.4,
                                                          ),
                                                    ),
                                                    Text(
                                                      'Orders',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .nunito(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .onSurface80,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                                lineHeight: 1.2,
                                                              ),
                                                    ),
                                                  ].divide(SizedBox(height: 4)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Text(
                                            'Active Orders',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
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
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.45,
                                                ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(24),
                                              child: Container(
                                                child: Container(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'No active orders',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .nunito(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                ),
                                              ),
                                            ),
                                          ),

                                          // ff_lite_listview_data:${active_orders}
                                          StreamBuilder<List<OrdersRecord>>(
                                            stream: queryOrdersRecord(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(),
                                                  ),
                                                );
                                              }
                                              List<OrdersRecord>
                                                  listViewOrdersRecordList =
                                                  snapshot.data!;

                                              return Builder(
                                                builder: (context) {
                                                  final item =
                                                      listViewOrdersRecordList
                                                          .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: item.length,
                                                    itemBuilder:
                                                        (context, itemIndex) {
                                                      final itemItem =
                                                          item[itemIndex];
                                                      return OrderCardWidget(
                                                        key: Key(
                                                            'Key353_${itemIndex}_of_${item.length}'),
                                                        orderId: itemItem
                                                            .reference.id,
                                                        date: itemItem
                                                            .creationDate,
                                                        status: itemItem.status,
                                                        totalKilos: itemItem
                                                            .totalKilos
                                                            .toString(),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ].divide(SizedBox(height: 16)),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Text(
                                            'Past Collections',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.dmSans(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
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
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.45,
                                                ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(24),
                                              child: Container(
                                                child: Container(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Text(
                                                    'No past collections',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .nunito(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                ),
                                              ),
                                            ),
                                          ),

                                          // ff_lite_listview_data:${past_orders}
                                          StreamBuilder<List<OrdersRecord>>(
                                            stream: queryOrdersRecord(),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50,
                                                    height: 50,
                                                    child:
                                                        CircularProgressIndicator(),
                                                  ),
                                                );
                                              }
                                              List<OrdersRecord>
                                                  listViewOrdersRecordList =
                                                  snapshot.data!;

                                              return Builder(
                                                builder: (context) {
                                                  final item =
                                                      listViewOrdersRecordList
                                                          .toList();

                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: item.length,
                                                    itemBuilder:
                                                        (context, itemIndex) {
                                                      final itemItem =
                                                          item[itemIndex];
                                                      return OrderCard2Widget(
                                                        key: Key(
                                                            'Key389_${itemIndex}_of_${item.length}'),
                                                        orderId: itemItem
                                                            .reference.id,
                                                        date: itemItem
                                                            .creationDate,
                                                        status: itemItem.status,
                                                        totalKilos: itemItem
                                                            .totalKilos
                                                            .toString(),
                                                      );
                                                    },
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ].divide(SizedBox(height: 16)),
                                      ),
                                      Container(
                                        height: 80,
                                      ),
                                    ].divide(SizedBox(height: 24)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Container(
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Container(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.goNamed(CreateOrderWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.buttonModel,
                                updateCallback: () => safeSetState(() {}),
                                child: ButtonWidget(
                                  icon: Icon(
                                    Icons.add_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24,
                                  ),
                                  iconPresent: true,
                                  iconEndPresent: false,
                                  content: 'Request New Pickup',
                                  variant: 'primary',
                                  size: 'large',
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
