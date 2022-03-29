import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_testing/presentation/entity/base/ui_list_item.dart';
import 'package:flutter_testing/presentation/entity/intent/intent.dart';

abstract class ListItemRenderer<T extends UIListItem, I extends BaseIntent> {
  const ListItemRenderer();
  Widget getWidget(BuildContext context, T data, StreamSink<I> sink);
}
