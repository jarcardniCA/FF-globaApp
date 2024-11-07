import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future control(BuildContext context) async {}

Future usertime(BuildContext context) async {
  String? time;

  if (!loggedIn) {
    logFirebaseEvent('usertime_backend_call');

    await currentUserReference!.update(createUsersRecordData(
      logouttime: getCurrentTimestamp,
    ));
    logFirebaseEvent('usertime_custom_action');
    time = await actions.usertime(
      currentUserDocument!.logintime!,
      currentUserDocument!.logouttime!,
    );
    logFirebaseEvent('usertime_backend_call');

    await currentUserReference!.update(createUsersRecordData(
      usertime: time,
    ));
  }
}
