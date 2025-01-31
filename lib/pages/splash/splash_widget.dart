import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'splash_model.dart';
export 'splash_model.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  late SplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 3000));

      context.pushNamed('LoginScreen');
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0x53FA5075),
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2A0D2E), Color(0xFF882C41), Colors.black],
                stops: [0.0, 1.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 1.2),
                    child: Text(
                      'EngagePlus',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFFF1F4F8),
                        fontSize: 50.0,
                        letterSpacing: 0.0,
                        shadows: [
                          Shadow(
                            color: FlutterFlowTheme.of(context).primary,
                            offset: const Offset(2.0, 2.0),
                            blurRadius: 5.0,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/DALLE_2024-11-29_11.49.33_-_A_modern_and_sleek_logo_design_for_a_student_loyalty_app,_featuring_three_golden_coins_arranged_in_a_dynamic,_circular_pattern_to_symbolize_rewards_an-fotor-bg-remover-202411291.png',
                    width: 307.72,
                    height: 251.0,
                    fit: BoxFit.cover,
                    alignment: const Alignment(-1.0, 0.0),
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Group_532-Photoroom.png',
                        width: 453.9,
                        height: 200.0,
                        fit: BoxFit.cover,
                        alignment: const Alignment(0.0, 0.0),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Group_532-Photoroom.png',
                        width: 453.9,
                        height: 200.0,
                        fit: BoxFit.cover,
                        alignment: const Alignment(0.0, 0.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
