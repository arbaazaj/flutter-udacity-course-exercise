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

// Lesson-1; Exercise-1
//import 'package:flutter_udacity_course/lesson1/exercise_1/hello_rectangle.dart';

// Lesson-1; Exercise-2
//import 'package:flutter_udacity_course/lesson1/exercise_2/category.dart';

// Lesson-1; Exercise-3
//import 'package:flutter_udacity_course/lesson1/exercise_3/category_list.dart';

// Lesson-1; Exercise-4
import 'package:flutter_udacity_course/lesson1/exercise_4/category_list.dart';

// Lesson-1; Exercise-2
/*const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;*/

/// The function that is called when main.dart is run.
void main() {
  // Lesson-1; Exercise-1
  /*runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );*/

  // Lesson-1; Exercise-2
  // Lesson-1; Exercise-3
  // Lesson-1; Exercise-4
  runApp(UnitConverterApp());
}

/// Lesson-1; Exercise-2
///
/// This widget is the root of our application.
/// Currently, we just show one widget in our app.
/*class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          child: Category(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,
          ),
        ),
      ),
    );
  }
}*/

/// Lesson-1; Exercise-3
/// This widget is the root of our application.
///
/// The first screen we see is a list of [Category].
/*class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryList(),
    );
  }
}*/

/// Lesson-1; Exercise-4
/// This widget is the root of our application.
///
/// The first screen we see is a list [Categories], each of which
/// has a list of [Unit]s.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryList(),
    );
  }
}
