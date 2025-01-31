import '/flutter_flow/flutter_flow_util.dart';
import '/pages/edit_button/edit_button_widget.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for EditButton component.
  late EditButtonModel editButtonModel;

  @override
  void initState(BuildContext context) {
    editButtonModel = createModel(context, () => EditButtonModel());
  }

  @override
  void dispose() {
    editButtonModel.dispose();
  }
}
