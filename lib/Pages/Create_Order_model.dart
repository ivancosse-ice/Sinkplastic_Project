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
import 'create_order_widget.dart' show CreateOrderWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateOrderModel extends FlutterFlowModel<CreateOrderWidget> {
  ///  Local state fields for this page.

  List<String> selectedTypes = ['[\"PET\"]'];
  void addToSelectedTypes(String item) => selectedTypes.add(item);
  void removeFromSelectedTypes(String item) => selectedTypes.remove(item);
  void removeAtIndexFromSelectedTypes(int index) =>
      selectedTypes.removeAt(index);
  void insertAtIndexInSelectedTypes(int index, String item) =>
      selectedTypes.insert(index, item);
  void updateSelectedTypesAtIndex(int index, Function(String) updateFn) =>
      selectedTypes[index] = updateFn(selectedTypes[index]);

  double? weight = 15.0;

  String? address = '123 Eco Lane, Green City';

  String? error;

  ///  State fields for stateful widgets in this page.

  // Model for WasteTypeCard.
  late WasteTypeCardModel wasteTypeCardModel1;
  // Model for WasteTypeCard.
  late WasteTypeCardModel wasteTypeCardModel2;
  // Model for WasteTypeCard.
  late WasteTypeCardModel wasteTypeCardModel3;
  // Model for WasteTypeCard.
  late WasteTypeCardModel wasteTypeCardModel4;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Model for TextField.
  late TextFieldModel textFieldModel;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    wasteTypeCardModel1 = createModel(context, () => WasteTypeCardModel());
    wasteTypeCardModel2 = createModel(context, () => WasteTypeCardModel());
    wasteTypeCardModel3 = createModel(context, () => WasteTypeCardModel());
    wasteTypeCardModel4 = createModel(context, () => WasteTypeCardModel());
    textFieldModel = createModel(context, () => TextFieldModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    wasteTypeCardModel1.dispose();
    wasteTypeCardModel2.dispose();
    wasteTypeCardModel3.dispose();
    wasteTypeCardModel4.dispose();
    textFieldModel.dispose();
    buttonModel.dispose();
  }
}
