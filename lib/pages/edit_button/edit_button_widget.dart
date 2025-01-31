import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'edit_button_model.dart';
export 'edit_button_model.dart';

class EditButtonWidget extends StatefulWidget {
  const EditButtonWidget({super.key});

  @override
  State<EditButtonWidget> createState() => _EditButtonWidgetState();
}

class _EditButtonWidgetState extends State<EditButtonWidget> {
  late EditButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: 'Edit',
      icon: const Icon(
        Icons.edit_rounded,
        size: 15.0,
      ),
      options: FFButtonOptions(
        height: 32.0,
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        iconAlignment: IconAlignment.end,
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: const Color(0xFFFF9500),
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Poppins',
              color: Colors.white,
              letterSpacing: 0.0,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).primaryText,
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
