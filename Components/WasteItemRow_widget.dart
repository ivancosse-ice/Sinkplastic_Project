import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'waste_item_row_model.dart';
export 'waste_item_row_model.dart';

class WasteItemRowWidget extends StatefulWidget {
  const WasteItemRowWidget({
    super.key,
    String? type,
    String? weight,
  })  : this.type = type ?? '',
        this.weight = weight ?? '';

  final String type;
  final String weight;

  @override
  State<WasteItemRowWidget> createState() => _WasteItemRowWidgetState();
}

class _WasteItemRowWidgetState extends State<WasteItemRowWidget> {
  late WasteItemRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WasteItemRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.circle,
            color: FlutterFlowTheme.of(context).secondaryText40,
            size: 8,
          ),
          Expanded(
            flex: 1,
            child: Text(
              widget!.type,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.nunito(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ),
          Text(
            valueOrDefault<String>(
              '${widget!.weight} kg',
              ' kg',
            ),
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  font: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ].divide(SizedBox(width: 8)),
      ),
    );
  }
}
