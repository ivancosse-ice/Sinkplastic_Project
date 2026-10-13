import '/components/activity_item/activity_item_widget.dart';
import '/components/button/button_widget.dart';
import '/components/stat_card/stat_card_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'customer_dashboard_widget.dart' show CustomerDashboardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomerDashboardModel extends FlutterFlowModel<CustomerDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for StatCard.
  late StatCardModel statCardModel1;
  // Model for StatCard.
  late StatCardModel statCardModel2;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for ActivityItem.
  late ActivityItemModel activityItemModel1;
  // Model for ActivityItem.
  late ActivityItemModel activityItemModel2;
  // Model for ActivityItem.
  late ActivityItemModel activityItemModel3;

  @override
  void initState(BuildContext context) {
    statCardModel1 = createModel(context, () => StatCardModel());
    statCardModel2 = createModel(context, () => StatCardModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    activityItemModel1 = createModel(context, () => ActivityItemModel());
    activityItemModel2 = createModel(context, () => ActivityItemModel());
    activityItemModel3 = createModel(context, () => ActivityItemModel());
  }

  @override
  void dispose() {
    statCardModel1.dispose();
    statCardModel2.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
    activityItemModel1.dispose();
    activityItemModel2.dispose();
    activityItemModel3.dispose();
  }
}
