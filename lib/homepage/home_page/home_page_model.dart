import '/components/drawer_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/homepage/crdclassescreated/crdclassescreated_widget.dart';
import '/homepage/crdclassesjoined/crdclassesjoined_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for crdclassescreated component.
  late CrdclassescreatedModel crdclassescreatedModel1;
  // Model for crdclassescreated component.
  late CrdclassescreatedModel crdclassescreatedModel2;
  // Model for crdclassesjoined component.
  late CrdclassesjoinedModel crdclassesjoinedModel;
  // Model for Drawer_component component.
  late DrawerComponentModel drawerComponentModel;

  @override
  void initState(BuildContext context) {
    crdclassescreatedModel1 =
        createModel(context, () => CrdclassescreatedModel());
    crdclassescreatedModel2 =
        createModel(context, () => CrdclassescreatedModel());
    crdclassesjoinedModel = createModel(context, () => CrdclassesjoinedModel());
    drawerComponentModel = createModel(context, () => DrawerComponentModel());
  }

  @override
  void dispose() {
    crdclassescreatedModel1.dispose();
    crdclassescreatedModel2.dispose();
    crdclassesjoinedModel.dispose();
    drawerComponentModel.dispose();
  }
}
