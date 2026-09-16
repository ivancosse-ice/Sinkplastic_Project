import '/components/status_badge/status_badge_widget.dart';
import '/components/waste_item_row/waste_item_row_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'order_card2_widget.dart' show OrderCard2Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderCard2Model extends FlutterFlowModel<OrderCard2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusBadge.
  late StatusBadgeModel statusBadgeModel;
  // Model for WasteItemRow.
  late WasteItemRowModel wasteItemRowModel;

  @override
  void initState(BuildContext context) {
    statusBadgeModel = createModel(context, () => StatusBadgeModel());
    wasteItemRowModel = createModel(context, () => WasteItemRowModel());
  }

  @override
  void dispose() {
    statusBadgeModel.dispose();
    wasteItemRowModel.dispose();
  }
}
