// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:globa_app/components/cursos_gridview_item_widget.dart';

import 'package:reorderable_grid_view/reorderable_grid_view.dart';

class CustomReorderableGridView extends StatefulWidget {
  const CustomReorderableGridView({
    super.key,
    this.width,
    this.height,
    this.courseDocuments,
    required this.crossAxisSpecing,
    required this.mainAxisSpecing,
    required this.childAspectRatio,
    required this.crossAxisCount,
    this.onReorder,
  });

  final double? width;
  final double? height;
  final List<CoursesRecord>? courseDocuments;
  final double crossAxisSpecing;
  final double mainAxisSpecing;
  final double childAspectRatio;
  final int crossAxisCount;
  final Future Function(int? oldIndex, int? newIndex)? onReorder;
  @override
  State<CustomReorderableGridView> createState() =>
      _CustomReorderableGridViewState();
}

class _CustomReorderableGridViewState extends State<CustomReorderableGridView> {
  Widget buildItem(int index) {
    final element = widget.courseDocuments![index];

    return CursosGridviewItemWidget(
      key: Key("${index}"),
      name: element.name,
      fechaCreasion: dateTimeFormat(
        "yMMMd",
        element.fechaCreacion,
        locale: FFLocalizations.of(context).languageCode,
      ),
      coursesRef: element.reference,
      estado: element.estado,
      image: element.imageIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableGridView.builder(
      itemCount: widget.courseDocuments!.length,
      itemBuilder: (BuildContext context, int index) {
        return buildItem(index);
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: widget.crossAxisSpecing,
        mainAxisSpacing: widget.mainAxisSpecing,
        crossAxisCount: widget.crossAxisCount,
        childAspectRatio: widget.childAspectRatio,
      ),

      shrinkWrap: true,
      // children: widget.courseDocuments!.map((e) => buildItem(e)).toList(),
      onReorder: (oldIndex, newIndex) {
        setState(() {
          widget.onReorder!(oldIndex, newIndex);
          final element = widget.courseDocuments!.removeAt(oldIndex);
          widget.courseDocuments!.insert(newIndex, element);
        });
      },
    );
  }
}
