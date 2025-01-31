import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'view_button_model.dart';
export 'view_button_model.dart';

class ViewButtonWidget extends StatefulWidget {
  const ViewButtonWidget({super.key});

  @override
  State<ViewButtonWidget> createState() => _ViewButtonWidgetState();
}

class _ViewButtonWidgetState extends State<ViewButtonWidget> {
  late ViewButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewButtonModel());
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
      text: 'View',
      options: FFButtonOptions(
        width: 120.0,
        height: 40.0,
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
