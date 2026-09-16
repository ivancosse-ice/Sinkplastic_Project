import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'status_badge_model.dart';
export 'status_badge_model.dart';

class StatusBadgeWidget extends StatefulWidget {
  const StatusBadgeWidget({
    super.key,
    String? status,
  }) : this.status = status ?? '';

  final String status;

  @override
  State<StatusBadgeWidget> createState() => _StatusBadgeWidgetState();
}

class _StatusBadgeWidgetState extends State<StatusBadgeWidget> {
  late StatusBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusBadgeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          () {
            if (widget!.status == 'completed') {
              return FlutterFlowTheme.of(context).success15;
            } else if (widget!.status == 'Cancelled') {
              return FlutterFlowTheme.of(context).error15;
            } else {
              return FlutterFlowTheme.of(context).accent20;
            }
          }(),
          Color(0x00000000),
        ),
        borderRadius: BorderRadius.circular(9999),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
        child: Container(
          child: Text(
            widget!.status,
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  font: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    () {
                      if (widget!.status == 'completed') {
                        return FlutterFlowTheme.of(context).success;
                      } else if (widget!.status == 'Cancelled') {
                        return FlutterFlowTheme.of(context).error;
                      } else {
                        return Color(0xFF8C7E6A);
                      }
                    }(),
                    Color(0x00000000),
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).labelSmall.fontStyle,
                  lineHeight: 1.2,
                ),
          ),
        ),
      ),
    );
  }
}
