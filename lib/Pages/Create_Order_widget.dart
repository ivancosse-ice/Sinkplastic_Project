import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button/button_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/components/waste_type_card/waste_type_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'create_order_model.dart';
export 'create_order_model.dart';

class CreateOrderWidget extends StatefulWidget {
  const CreateOrderWidget({super.key});

  static String routeName = 'CreateOrder';
  static String routePath = '/createOrder';

  @override
  State<CreateOrderWidget> createState() => _CreateOrderWidgetState();
}

class _CreateOrderWidgetState extends State<CreateOrderWidget> {
  late CreateOrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateOrderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
                    Align(
                      alignment: AlignmentDirectional(-1.5, -0.8),
                      child: ClipRect(
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                            sigmaX: 60,
                            sigmaY: 60,
                          ),
                          child: Container(
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary10,
                              borderRadius: BorderRadius.circular(9999),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.5, 0.5),
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
                              color: FlutterFlowTheme.of(context).primary10,
                              borderRadius: BorderRadius.circular(9999),
                              shape: BoxShape.rectangle,
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
                          Container(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 32, 24, 16),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderRadius: 16,
                                      buttonSize: 40,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.arrow_back_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24,
                                      ),
                                      onPressed: () async {
                                        context.pop();
                                      },
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'New Pickup',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                font: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontStyle,
                                                lineHeight: 1.3,
                                              ),
                                        ),
                                        Text(
                                          'Schedule a collection for your plastic waste',
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
                                                        .secondaryText,
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
                                  ].divide(SizedBox(width: 16)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(9999),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Text(
                                            '1',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .onPrimary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                  lineHeight: 1.2,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'Select Waste Types',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.dmSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.45,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: wrapWithModel(
                                                model:
                                                    _model.wasteTypeCardModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: WasteTypeCardWidget(
                                                  selected: false,
                                                  tapAction:
                                                      'form.toggle_waste_type(\'PET\')',
                                                  icon: Icon(
                                                    Icons.local_drink_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 28,
                                                  ),
                                                  label: 'PET',
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: wrapWithModel(
                                                model:
                                                    _model.wasteTypeCardModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: WasteTypeCardWidget(
                                                  selected: false,
                                                  tapAction:
                                                      'form.toggle_waste_type(\'HDPE\')',
                                                  icon: Icon(
                                                    Icons.opacity_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 28,
                                                  ),
                                                  label: 'HDPE',
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 16)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: wrapWithModel(
                                                model:
                                                    _model.wasteTypeCardModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: WasteTypeCardWidget(
                                                  selected: false,
                                                  tapAction:
                                                      'form.toggle_waste_type(\'LDPE\')',
                                                  icon: Icon(
                                                    Icons.shopping_bag_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 28,
                                                  ),
                                                  label: 'LDPE',
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: wrapWithModel(
                                                model:
                                                    _model.wasteTypeCardModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: WasteTypeCardWidget(
                                                  selected: false,
                                                  tapAction:
                                                      'form.toggle_waste_type(\'PP\')',
                                                  icon: Icon(
                                                    Icons.architecture_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 28,
                                                  ),
                                                  label: 'PP',
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 16)),
                                        ),
                                      ].divide(SizedBox(height: 16)),
                                    ),
                                  ].divide(SizedBox(height: 16)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(9999),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Text(
                                            '2',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .onPrimary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                  lineHeight: 1.2,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'Estimated Weight',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.dmSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.45,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8)),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(24),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(24),
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Total Kilograms',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .nunito(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                          lineHeight: 1.6,
                                                        ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        key: ValueKey(
                                                            formatNumber(
                                                          _model.sliderValue,
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .automatic,
                                                        )),
                                                        _model.weight!
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .dmSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.3,
                                                                ),
                                                      ),
                                                      Text(
                                                        'kg',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .dmSans(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.45,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 8)),
                                                  ),
                                                ],
                                              ),
                                              Slider(
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                inactiveColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                min: 0,
                                                max: 100,
                                                value: _model.sliderValue ??=
                                                    10,
                                                divisions: 200,
                                                onChanged: (newValue) {
                                                  newValue = double.parse(
                                                      newValue
                                                          .toStringAsFixed(2));
                                                  safeSetState(() => _model
                                                      .sliderValue = newValue);
                                                },
                                              ),
                                            ].divide(SizedBox(height: 16)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 16)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(9999),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: Text(
                                            '3',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.nunito(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .onPrimary,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                  lineHeight: 1.2,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'Pickup Location',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.dmSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                                lineHeight: 1.45,
                                              ),
                                        ),
                                      ].divide(SizedBox(width: 8)),
                                    ),
                                    wrapWithModel(
                                      model: _model.textFieldModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: TextFieldWidget(
                                        label: 'Address',
                                        labelPresent: true,
                                        helper: '',
                                        helperPresent: false,
                                        leadingIcon: Icon(
                                          Icons.location_on_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24,
                                        ),
                                        leadingIconPresent: true,
                                        trailingIconPresent: false,
                                        hint: 'Type here...',
                                        value: _model.address,
                                        onChange: '',
                                        onSubmit: '',
                                        variant: 'outlined',
                                        error: false,
                                      ),
                                    ),
                                    Text(
                                      _model.error!,
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
                                            color: FlutterFlowTheme.of(context)
                                                .error,
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
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .info30,
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Container(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.info_rounded,
                                                size: 20,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  'Our collector will arrive between 9:00 AM and 12:00 PM tomorrow.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.nunito(
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
                                            ].divide(SizedBox(width: 16)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 16)),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(24),
                                    child: Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                                'Estimated Impact',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      font: GoogleFonts.nunito(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
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
                                                              .labelLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontStyle,
                                                      lineHeight: 1.4,
                                                    ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.eco_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 16,
                                                  ),
                                                  Text(
                                                    '+45 Points',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          font: GoogleFonts
                                                              .nunito(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 4)),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            height: 16,
                                            thickness: 1,
                                            indent: 0,
                                            endIndent: 0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Service Fee',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      font: GoogleFonts.nunito(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
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
                                                              .labelLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontStyle,
                                                      lineHeight: 1.4,
                                                    ),
                                              ),
                                              Text(
                                                'Free',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelLarge
                                                    .override(
                                                      font: GoogleFonts.nunito(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .fontStyle,
                                                      lineHeight: 1.4,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 8)),
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
                                    if (_model.address == null ||
                                        _model.address == '') {
                                      _model.error =
                                          '\"Pickup address is required\"';
                                      safeSetState(() {});
                                      return;
                                    }
                                    if ((_model.selectedTypes.isNotEmpty) ==
                                        null) {
                                      _model.error =
                                          '\"Please select at least one waste type\"';
                                      safeSetState(() {});
                                      return;
                                    }
                                    _model.error = '\"\"';
                                    safeSetState(() {});
                                    while (
                                        FFAppState().totalRecycledKg != null) {
                                      await WasteDetailsRecord.collection
                                          .doc()
                                          .set(createWasteDetailsRecordData(
                                            orderId:
                                                'await orders.add(placeholder_customer: placeholder_customer, \${form.address}: \${form.address}, totalKilos: \${form.weight}, creationDate: DateTime.now().toString(), status: \"Pending\")',
                                            wasteType: 'type',
                                            quantityKilos: 100.0,
                                          ));
                                    }

                                    context
                                        .goNamed(OrderHistoryWidget.routeName);
                                  },
                                  child: wrapWithModel(
                                    model: _model.buttonModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonWidget(
                                      icon: Icon(
                                        Icons.check_circle_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24,
                                      ),
                                      iconPresent: true,
                                      iconEndPresent: false,
                                      content: 'Confirm Order',
                                      variant: 'primary',
                                      size: 'large',
                                      fullWidth: true,
                                      loading: false,
                                      disabled: false,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 80,
                                ),
                              ].divide(SizedBox(height: 32)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 1,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24, 16, 24, 16),
                              child: Container(
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ],
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
