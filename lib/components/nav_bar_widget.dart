import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

/// Create a nav bar for me with 5 options in this order: Leaderboard, Wheel
/// Spin, Home(in the middle that pops out by placing it a little above),Posts
/// and Profile.
///
/// Give them all a label and icon except home only needs an icon. SPace them
/// evenly and change the icon for posts
class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
    required this.pageName,
  });

  final String? pageName;

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 90.0,
      decoration: const BoxDecoration(
        color: Color(0xFF31304E),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              -2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('Leaderboard');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.leaderboard_rounded,
                      color: valueOrDefault<Color>(
                        widget.pageName == 'Leaderboard'
                            ? const Color(0xFFF9CF58)
                            : Colors.white,
                        Colors.white,
                      ),
                      size: 35.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Leaderboard');
                    },
                  ),
                  Text(
                    'Leader\nboard',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          color: valueOrDefault<Color>(
                            widget.pageName == 'Leaderboard'
                                ? const Color(0xFFF9CF58)
                                : Colors.white,
                            Colors.white,
                          ),
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 2.0)),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('Posts');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 50.0,
                    icon: const Icon(
                      FFIcons.kfortuneWheel,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  Text(
                    'Wheel\nSpin',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ].divide(const SizedBox(height: 2.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('Home');
                },
                child: Container(
                  width: 58.0,
                  height: 58.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFF31304E),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                        spreadRadius: 0.0,
                      )
                    ],
                    borderRadius: BorderRadius.circular(29.0),
                    border: Border.all(
                      color: valueOrDefault<Color>(
                        widget.pageName == 'Home'
                            ? const Color(0xFFF9CF58)
                            : const Color(0xfffffffff),
                        Colors.white,
                      ),
                      width: 5.0,
                    ),
                  ),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.home_rounded,
                      color: valueOrDefault<Color>(
                        widget.pageName == 'Home'
                            ? const Color(0xFFF9CF58)
                            : Colors.white,
                        Colors.white,
                      ),
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Home');
                    },
                  ),
                ),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.goNamed('Posts');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 50.0,
                    icon: const Icon(
                      Icons.article_rounded,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Posts');
                    },
                  ),
                  Text(
                    'Posts',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 2.0)),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.goNamed('Profile');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 50.0,
                    icon: const Icon(
                      Icons.person_rounded,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  Text(
                    'Profile',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 10.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(height: 2.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
