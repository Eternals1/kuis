import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tambahkuispage_widget.dart' show TambahkuispageWidget;
import 'package:flutter/material.dart';

class TambahkuispageModel extends FlutterFlowModel<TambahkuispageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for namakuis widget.
  FocusNode? namakuisFocusNode;
  TextEditingController? namakuisTextController;
  String? Function(BuildContext, String?)? namakuisTextControllerValidator;
  // State field(s) for subjekkuis widget.
  FocusNode? subjekkuisFocusNode;
  TextEditingController? subjekkuisTextController;
  String? Function(BuildContext, String?)? subjekkuisTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  KuisRecord? createdkuis;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    namakuisFocusNode?.dispose();
    namakuisTextController?.dispose();

    subjekkuisFocusNode?.dispose();
    subjekkuisTextController?.dispose();
  }
}
