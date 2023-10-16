import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/router.dart';

class BaseListTile extends StatefulWidget {
  const BaseListTile(
      {super.key,
      this.icon,
      this.title,
      this.description,
      this.time,
      this.trailing});
  final Icon? icon;
  final Text? title;
  final Text? description;
  final Text? time;
  final Widget? trailing;

  @override
  State<BaseListTile> createState() => _BaseListTileState();
}

class _BaseListTileState extends State<BaseListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: ListTile(
        isThreeLine: true,
        tileColor: Color(0xFFECF0F4),
        leading: widget.icon ?? SizedBox.shrink(),
        trailing: widget.trailing ?? Icon(Icons.more_vert),
        title: Row(
          children: [
            SizedBox(width: 5),
            widget.title ?? SizedBox.shrink(),
          ],
        ),
        subtitle:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          widget.description ?? SizedBox.shrink(),
          SizedBox(height: 5),
          widget.time ?? SizedBox.shrink(),
        ]),
        onTap: () => context.go(AppPath.home),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      ),
    );
  }
}
