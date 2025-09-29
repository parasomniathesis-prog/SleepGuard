import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  static String routeName = 'Dashboard';
  static String routePath = '/dashboard';

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());
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
        backgroundColor: Color(0xFFF0F5F9),
        appBar: AppBar(
          backgroundColor: Color(0xFFF0F5F9),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderRadius: 8,
                buttonSize: 40,
                fillColor: Color(0xFF2797FF),
                icon: Icon(
                  Icons.person_2_rounded,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24,
                ),
                onPressed: () async {
                  context.pushNamed(ProfilepageWidget.routeName);
                },
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF2797FF),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.bedtime_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SleepGuard',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: GoogleFonts.outfit(
                        fontWeight: FontWeight.bold,
                        fontStyle: FlutterFlowTheme.of(context)
                            .titleLarge
                            .fontStyle,
                      ),
                      color: Color(0xFF161C24),
                      fontSize: 22,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                      FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
                  ),
                  Text(
                    'Monitoring your rest',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.manrope(
                        fontWeight: FontWeight.w500,
                        fontStyle: FlutterFlowTheme.of(context)
                            .labelSmall
                            .fontStyle,
                      ),
                      color: Color(0xFF636F81),
                      fontSize: 12,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                      FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                  ),
                ],
              ),
            ].divide(SizedBox(width: 12)),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
              child: FlutterFlowIconButton(
                borderRadius: 12,
                buttonSize: 40,
                fillColor: Colors.white,
                icon: Icon(
                  Icons.notifications_rounded,
                  color: Color(0xFF161C24),
                  size: 24,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sleep Dashboard',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                              font: GoogleFonts.outfit(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF161C24),
                              fontSize: 32,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .fontStyle,
                            ),
                          ),
                          Text(
                            'Today, March 15',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                              font: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF636F81),
                              fontSize: 14,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                          ),
                        ],
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 12,
                        buttonSize: 48,
                        fillColor: Colors.white,
                        icon: Icon(
                          Icons.menu,
                          color: Color(0xFF161C24),
                          size: 24,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Risk Level',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                ),
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEE4444),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.warning_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 8,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEE4444),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 12, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'High Risk',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .fontStyle,
                                          ),
                                          color: Color(0xFFEE4444),
                                          fontSize: 24,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .fontStyle,
                                        ),
                                      ),
                                      Text(
                                        'Elevated heart rate detected during sleep',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          font: GoogleFonts.manrope(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .fontStyle,
                                          ),
                                          color: Color(0xFF636F81),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ].divide(SizedBox(height: 12)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Today\'s Sleep Metrics',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                              font: GoogleFonts.interTight(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                              ),
                              color:
                              FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Icon(
                                        Icons.favorite,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24,
                                      ),
                                    ),
                                    Text(
                                      'Heart Rate',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                    ),
                                    Text(
                                      '68 BPM',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8)),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Icon(
                                        Icons.air,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 24,
                                      ),
                                    ),
                                    Text(
                                      'Oxygen Level',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                    ),
                                    Text(
                                      '97%',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Icon(
                                        Icons.directions_run,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 24,
                                      ),
                                    ),
                                    Text(
                                      'Movement',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                    ),
                                    Text(
                                      'Low',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8)),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        color:
                                        FlutterFlowTheme.of(context).error,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Icon(
                                        Icons.warning,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ),
                                    Text(
                                      'Risk Score',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontWeight,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                    ),
                                    Text(
                                      '4.2/10',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8)),
                                ),
                              ),
                            ],
                          ),
                        ].divide(SizedBox(height: 16)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Sleeping Patterns',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                font: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                                color: Colors.white,
                                fontSize: 16,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Container(
                                width: double.infinity,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF0F5F9),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'This Week',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                              font: GoogleFonts.manrope(
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .fontStyle,
                                              ),
                                              color: Color(0xFF636F81),
                                              fontSize: 12,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                              FlutterFlowTheme.of(
                                                  context)
                                                  .labelSmall
                                                  .fontStyle,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 12,
                                                height: 12,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF27AE52),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'Normal',
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelSmall
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                              ),
                                              Container(
                                                width: 12,
                                                height: 12,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEE4444),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                'High Risk',
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelSmall
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 8)),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 80,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF27AE52),
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                              ),
                                              Text(
                                                'Mon',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelSmall
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 65,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF27AE52),
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                              ),
                                              Text(
                                                'Tue',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelSmall
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 90,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEE4444),
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                              ),
                                              Text(
                                                'Wed',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelSmall
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 75,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF27AE52),
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                              ),
                                              Text(
                                                'Thu',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelSmall
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 85,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFEE4444),
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                              ),
                                              Text(
                                                'Fri',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelSmall
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF27AE52),
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                              ),
                                              Text(
                                                'Sat',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelSmall
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 32,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF27AE52),
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                ),
                                              ),
                                              Text(
                                                'Sun',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelSmall
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelSmall
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 12,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .fontStyle,
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                        ].divide(SizedBox(width: 8)),
                                      ),
                                    ].divide(SizedBox(height: 12)),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Parasomnia Episodes',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                ),
                                Text(
                                  'View All',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w500,
                                      fontStyle:
                                      FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF2797FF),
                                    fontSize: 14,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF0F5F9),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Sleep Talking',
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w600,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF161C24),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w600,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .fontStyle,
                                                ),
                                              ),
                                              Text(
                                                '2:34 AM - 3 minutes',
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelMedium
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelMedium
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .fontStyle,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFE0E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.record_voice_over_rounded,
                                              color: Color(0xFFEE4444),
                                              size: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF0F5F9),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Restless Movement',
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w600,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF161C24),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w600,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .fontStyle,
                                                ),
                                              ),
                                              Text(
                                                '1:15 AM - 8 minutes',
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelMedium
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelMedium
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .fontStyle,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFF0E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.directions_run_rounded,
                                              color: Color(0xFFACC420),
                                              size: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF0F5F9),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Sleep Apnea Event',
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyMedium
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w600,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF161C24),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w600,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .fontStyle,
                                                ),
                                              ),
                                              Text(
                                                '12:45 AM - 2 minutes',
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .labelMedium
                                                    .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelMedium
                                                        .fontStyle,
                                                  ),
                                                  color: Color(0xFF636F81),
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontStyle:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .fontStyle,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFE0E0),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.air_rounded,
                                              color: Color(0xFFEE4444),
                                              size: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12)),
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'AI Sleep Recommendations',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                ),
                                Icon(
                                  Icons.psychology_rounded,
                                  color: Color(0xFF2797FF),
                                  size: 20,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF2797FF),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Consider reducing caffeine intake 6 hours before bedtime',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          font: GoogleFonts.manrope(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .fontStyle,
                                          ),
                                          color: Color(0xFF161C24),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF2797FF),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Your sleep quality improves with room temperature at 65-68°F',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          font: GoogleFonts.manrope(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .fontStyle,
                                          ),
                                          color: Color(0xFF161C24),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Container(
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF2797FF),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Try meditation 30 minutes before sleep to reduce episodes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          font: GoogleFonts.manrope(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                            FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .fontStyle,
                                          ),
                                          color: Color(0xFF161C24),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 12)),
                                ),
                              ].divide(SizedBox(height: 12)),
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Recent Notifications',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w600,
                                      fontStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                ),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEE4444),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      '3',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        font: GoogleFonts.manrope(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .fontStyle,
                                        ),
                                        color: Colors.white,
                                        fontSize: 12,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle:
                                        FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFE0E0),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.warning_rounded,
                                            color: Color(0xFFEE4444),
                                            size: 20,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'High Risk Alert',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    font:
                                                    GoogleFonts.manrope(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    Color(0xFF161C24),
                                                    fontSize: 14,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FontWeight.w600,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                  ),
                                                ),
                                                Text(
                                                  'Elevated heart rate detected at 2:15 AM',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .override(
                                                    font:
                                                    GoogleFonts.manrope(
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    Color(0xFF636F81),
                                                    fontSize: 14,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelMedium
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 12)),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF0F5F9),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.info_rounded,
                                            color: Color(0xFF2797FF),
                                            size: 20,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Sleep Goal Achieved',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    font:
                                                    GoogleFonts.manrope(
                                                      fontWeight:
                                                      FontWeight.w600,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    Color(0xFF161C24),
                                                    fontSize: 14,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FontWeight.w600,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .bodyMedium
                                                        .fontStyle,
                                                  ),
                                                ),
                                                Text(
                                                  'You got 8 hours of sleep last night',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .labelMedium
                                                      .override(
                                                    font:
                                                    GoogleFonts.manrope(
                                                      fontWeight:
                                                      FontWeight.w500,
                                                      fontStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .labelMedium
                                                          .fontStyle,
                                                    ),
                                                    color:
                                                    Color(0xFF636F81),
                                                    fontSize: 14,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontStyle:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .labelMedium
                                                        .fontStyle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 12)),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 12)),
                            ),
                          ].divide(SizedBox(height: 16)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.goNamedAuth(
                            FrontPageWidget.routeName, context.mounted);
                      },
                      text: 'Log out',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50,
                        padding: EdgeInsets.all(8),
                        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: Color(0xFF2797FF),
                        textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                          font: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 16,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                        elevation: 0,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 20))
                    .addToStart(SizedBox(height: 16))
                    .addToEnd(SizedBox(height: 24)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
