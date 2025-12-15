import '/flutter_flow/flutter_flow_util.dart';
import 'create_class_page_widget.dart' show CreateClassPageWidget;
import 'package:flutter/material.dart';

class CreateClassPageModel extends FlutterFlowModel<CreateClassPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Kodekelas widget.
  FocusNode? kodekelasFocusNode;
  TextEditingController? kodekelasTextController;
  String? Function(BuildContext, String?)? kodekelasTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    kodekelasFocusNode?.dispose();
    kodekelasTextController?.dispose();
  }
}
