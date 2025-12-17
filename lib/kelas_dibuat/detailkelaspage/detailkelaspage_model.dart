import '/components/drawer_component_widget.dart';
import '/components/footer_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detailkelaspage_widget.dart' show DetailkelaspageWidget;
import 'package:flutter/material.dart';

class DetailkelaspageModel extends FlutterFlowModel<DetailkelaspageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for FooterMenu component.
  late FooterMenuModel footerMenuModel;
  // Model for Drawer_component component.
  late DrawerComponentModel drawerComponentModel;

  @override
  void initState(BuildContext context) {
    footerMenuModel = createModel(context, () => FooterMenuModel());
    drawerComponentModel = createModel(context, () => DrawerComponentModel());
  }

  @override
  void dispose() {
    footerMenuModel.dispose();
    drawerComponentModel.dispose();
  }
}
