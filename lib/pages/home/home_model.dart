import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/view_button/view_button_widget.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ViewButton component.
  late ViewButtonModel viewButtonModel1;
  // Model for ViewButton component.
  late ViewButtonModel viewButtonModel2;
  // Model for ViewButton component.
  late ViewButtonModel viewButtonModel3;
  // Model for ViewButton component.
  late ViewButtonModel viewButtonModel4;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    viewButtonModel1 = createModel(context, () => ViewButtonModel());
    viewButtonModel2 = createModel(context, () => ViewButtonModel());
    viewButtonModel3 = createModel(context, () => ViewButtonModel());
    viewButtonModel4 = createModel(context, () => ViewButtonModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    viewButtonModel1.dispose();
    viewButtonModel2.dispose();
    viewButtonModel3.dispose();
    viewButtonModel4.dispose();
    navBarModel.dispose();
  }
}
