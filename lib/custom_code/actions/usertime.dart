// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> usertime(
  DateTime logintime,
  DateTime logouttime,
) async {
  try {
    // Calculate the difference between logout and login times
    Duration difference = logouttime.difference(logintime);

    // Check if the difference is negative (logout time before login time)
    if (difference.isNegative) {
      throw Exception('Logout time must be after login time');
    }

    // Extract minutes and seconds
    int minutes = difference.inMinutes;
    int seconds = difference.inSeconds.remainder(60);

    // Create the formatted string
    String result =
        '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    return result;
  } catch (e) {
    // Handle any exceptions and return an error message
    return 'Error: ${e.toString()}';
  }
}
