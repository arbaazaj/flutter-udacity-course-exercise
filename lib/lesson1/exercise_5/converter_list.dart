/*
 * Copyright (c) 2019 Manish Karena
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:flutter_udacity_course/lesson1/exercise_5/unit.dart';

/// Converter screen where users can input amounts to convert.
///
/// Currently, it just displays a list of mock units..
class ConverterRoute extends StatefulWidget {
  /// Units for this [Category].
  final List<Unit> units;

  /// Color for this [Category].
  final ColorSwatch categoryColor;

  /// This [Category]'s name.
  final String categoryName;

  /// This [ConverterRoute] requires the name, color, and units to not be null.
  const ConverterRoute(
      {@required this.units,
      @required this.categoryName,
      @required this.categoryColor})
      : assert(units != null),
        assert(categoryName != null),
        assert(categoryColor != null);

  @override
  _ConverterRouteState createState() => _ConverterRouteState();
}

class _ConverterRouteState extends State<ConverterRoute> {
  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = widget.units.map((Unit unit) {
      return Container(
        color: widget.categoryColor,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.categoryColor,
        centerTitle: true,
        title: Text(
          widget.categoryName,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: unitWidgets,
      ),
    );
  }
}
