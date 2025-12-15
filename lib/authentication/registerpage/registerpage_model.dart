import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registerpage_widget.dart' show RegisterpageWidget;
import 'package:flutter/material.dart';

class RegisterpageModel extends FlutterFlowModel<RegisterpageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Namapengguna widget.
  FocusNode? namapenggunaFocusNode;
  TextEditingController? namapenggunaTextController;
  String? Function(BuildContext, String?)? namapenggunaTextControllerValidator;
  String? _namapenggunaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nama Pengguna is required';
    }

    return null;
  }

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nama Pengguna is required';
    }

    return null;
  }

  // State field(s) for Sandi widget.
  FocusNode? sandiFocusNode;
  TextEditingController? sandiTextController;
  late bool sandiVisibility;
  String? Function(BuildContext, String?)? sandiTextControllerValidator;
  String? _sandiTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Sandi is required';
    }

    return null;
  }

  // State field(s) for Konfirmasisandi widget.
  FocusNode? konfirmasisandiFocusNode;
  TextEditingController? konfirmasisandiTextController;
  late bool konfirmasisandiVisibility;
  String? Function(BuildContext, String?)?
      konfirmasisandiTextControllerValidator;
  String? _konfirmasisandiTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Konfirmasi Sandi is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    namapenggunaTextControllerValidator = _namapenggunaTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    sandiVisibility = false;
    sandiTextControllerValidator = _sandiTextControllerValidator;
    konfirmasisandiVisibility = false;
    konfirmasisandiTextControllerValidator =
        _konfirmasisandiTextControllerValidator;
  }

  @override
  void dispose() {
    namapenggunaFocusNode?.dispose();
    namapenggunaTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    sandiFocusNode?.dispose();
    sandiTextController?.dispose();

    konfirmasisandiFocusNode?.dispose();
    konfirmasisandiTextController?.dispose();
  }
}
