import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'waste_type_card_model.dart';
export 'waste_type_card_model.dart';

class WasteTypeCardWidget extends StatefulWidget {
  const WasteTypeCardWidget({
    super.key,
    bool? selected,
    String? tapAction,
    this.icon,
    String? label,
  })  : this.selected = selected ?? false,
        this.tapAction = tapAction ?? 'form.toggle_waste_type(\'PET\')',
        this.label = label ?? 'PET';

  final bool selected;
  final String tapAction;
  final Widget? icon;
  final String label;

  @override
  State<WasteTypeCardWidget> createState() => _WasteTypeCardWidgetState();
}

class _WasteTypeCardWidgetState extends State<WasteTypeCardWidget> {
  late WasteTypeCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WasteTypeCardModel());
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
          valueOrDefault<bool>(
            widget!.selected,
            false,
          )
              ? FlutterFlowTheme.of(context).primaryContainer
              : FlutterFlowTheme.of(context).secondaryBackground,
          Color(0x00000000),
        ),
        borderRadius: BorderRadius.circular(24),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget!.selected,
              false,
            )
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            Color(0x00000000),
          ),
          width: valueOrDefault<double>(
            valueOrDefault<bool>(
              widget!.selected,
              false,
            )
                ? 1.0
                : 1.0,
            0.0,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget!.icon!,
              Text(
                valueOrDefault<String>(
                  widget!.label,
                  'PET',
                ),
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      font: GoogleFonts.nunito(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        valueOrDefault<bool>(
                          widget!.selected,
                          false,
                        )
                            ? FlutterFlowTheme.of(context).onPrimaryContainer
                            : FlutterFlowTheme.of(context).primaryText,
                        Color(0x00000000),
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      lineHeight: 1.3,
                    ),
              ),
            ].divide(SizedBox(height: 8)),
          ),
        ),
      ),
    );
  }
}
