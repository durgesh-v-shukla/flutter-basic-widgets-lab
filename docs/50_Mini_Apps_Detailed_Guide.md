# 50 Mini Apps Detailed Guide (Refined)

## Purpose
- This refined pass keeps the guide long and detailed while reducing repeated phrasing.
- Every mini app remains documented with path, execution, code concept, and viva notes.

## Mini-App Index
| # | Widget | Folder | Category |
|---|---|---|---|
| 01 | Text | `widgets_examples/01_widget_text` | Display |
| 02 | Icon | `widgets_examples/02_widget_icon` | Display |
| 03 | Image | `widgets_examples/03_widget_image` | Display |
| 04 | Center | `widgets_examples/04_widget_center` | Layout |
| 05 | Padding | `widgets_examples/05_widget_padding` | Layout |
| 06 | Align | `widgets_examples/06_widget_align` | Layout |
| 07 | SizedBox | `widgets_examples/07_widget_sizedbox` | Layout |
| 08 | Container | `widgets_examples/08_widget_container` | Layout |
| 09 | Expanded | `widgets_examples/09_widget_expanded` | Layout |
| 10 | Flexible | `widgets_examples/10_widget_flexible` | Layout |
| 11 | TextButton | `widgets_examples/11_widget_textbutton` | Buttons |
| 12 | ElevatedButton | `widgets_examples/12_widget_elevatedbutton` | Buttons |
| 13 | IconButton | `widgets_examples/13_widget_iconbutton` | Buttons |
| 14 | FloatingActionButton | `widgets_examples/14_widget_floatingactionbtn` | Buttons |
| 15 | CircularProgressIndicator | `widgets_examples/15_widget_circularprogress` | Feedback |
| 16 | LinearProgressIndicator | `widgets_examples/16_widget_linearprogress` | Feedback |
| 17 | Tooltip | `widgets_examples/17_widget_tooltip` | Feedback |
| 18 | Spacer | `widgets_examples/18_widget_spacer` | Layout |
| 19 | SelectableText | `widgets_examples/19_widget_selectabletext` | Display |
| 20 | Card | `widgets_examples/20_widget_card` | Display |
| 21 | TextField | `widgets_examples/21_widget_textfield` | Input |
| 22 | TextFormField | `widgets_examples/22_widget_textformfield` | Input |
| 23 | Checkbox | `widgets_examples/23_widget_checkbox` | Input |
| 24 | Radio | `widgets_examples/24_widget_radio` | Input |
| 25 | Switch | `widgets_examples/25_widget_switch` | Input |
| 26 | Slider | `widgets_examples/26_widget_slider` | Input |
| 27 | DropdownButton | `widgets_examples/27_widget_dropdownbutton` | Input |
| 28 | DatePicker | `widgets_examples/28_widget_datepicker` | Input |
| 29 | TimePicker | `widgets_examples/29_widget_timepicker` | Input |
| 30 | DateRangePicker | `widgets_examples/30_widget_daterangepicker` | Input |
| 31 | SingleChildScrollView | `widgets_examples/31_widget_singlechildscrollview` | Scrolling |
| 32 | ListTile | `widgets_examples/32_widget_listtile` | Lists |
| 33 | CheckboxListTile | `widgets_examples/33_widget_checkboxlisttile` | Lists |
| 34 | RadioListTile | `widgets_examples/34_widget_radiolisttile` | Lists |
| 35 | ListView | `widgets_examples/35_widget_listview` | Lists |
| 36 | ListView.builder | `widgets_examples/36_widget_listviewbuilder` | Lists |
| 37 | GridTile | `widgets_examples/37_widget_gridtile` | Grid |
| 38 | GridTileBar | `widgets_examples/38_widget_gridtilebar` | Grid |
| 39 | GridView | `widgets_examples/39_widget_gridview` | Grid |
| 40 | Wrap | `widgets_examples/40_widget_wrap` | Layout |
| 41 | Stack | `widgets_examples/41_widget_stack` | Layout |
| 42 | Positioned | `widgets_examples/42_widget_positioned` | Layout |
| 43 | ReorderableListView | `widgets_examples/43_widget_reorderablelistview` | Lists |
| 44 | Navigator | `widgets_examples/44_widget_navigator` | Navigation |
| 45 | AlertDialog | `widgets_examples/45_widget_alertdialog` | Navigation |
| 46 | SnackBar | `widgets_examples/46_widget_snackbar` | Feedback |
| 47 | PopupMenuButton | `widgets_examples/47_widget_popupmenubutton` | Navigation |
| 48 | Drawer | `widgets_examples/48_widget_drawer` | Navigation |
| 49 | BottomNavigationBar | `widgets_examples/49_widget_bottomnavigationbar` | Navigation |
| 50 | TabBar | `widgets_examples/50_widget_tabbar` | Navigation |

## 01. Text Mini App
- Folder: `widgets_examples/01_widget_text`
- Entry: `lib/main.dart`
- Category: Display
- Best use: Use this when content readability and visual clarity are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Text Widget Demo')), 
  body: Center(child: Text('Flutter Text Widget', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Text` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 02. Icon Mini App
- Folder: `widgets_examples/02_widget_icon`
- Entry: `lib/main.dart`
- Category: Display
- Best use: Use this when content readability and visual clarity are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Icon Widget Demo')), 
  body: Center(child: Icon(Icons.favorite, size: 72, color: Colors.red)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Icon` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 03. Image Mini App
- Folder: `widgets_examples/03_widget_image`
- Entry: `lib/main.dart`
- Category: Display
- Best use: Use this when content readability and visual clarity are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Image Widget Demo')), 
  body: Center(child: Image.network('https://picsum.photos/300', width: 220, fit: BoxFit.cover)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Image` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 04. Center Mini App
- Folder: `widgets_examples/04_widget_center`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Center Widget Demo')), 
  body: Center(child: Center(child: Text('Centered'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Center` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 05. Padding Mini App
- Folder: `widgets_examples/05_widget_padding`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Padding Widget Demo')), 
  body: Center(child: Padding(padding: EdgeInsets.all(16), child: Text('Padded'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Padding` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 06. Align Mini App
- Folder: `widgets_examples/06_widget_align`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Align Widget Demo')), 
  body: Center(child: Align(alignment: Alignment.bottomRight, child: Text('Bottom Right'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Align` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 07. SizedBox Mini App
- Folder: `widgets_examples/07_widget_sizedbox`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('SizedBox Widget Demo')), 
  body: Center(child: SizedBox(height: 24)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `SizedBox` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 08. Container Mini App
- Folder: `widgets_examples/08_widget_container`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Container Widget Demo')), 
  body: Center(child: Container(width: 200, height: 140, decoration: BoxDecoration(color: Colors.blue))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Container` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 09. Expanded Mini App
- Folder: `widgets_examples/09_widget_expanded`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Expanded Widget Demo')), 
  body: Center(child: Expanded(child: Container(color: Colors.green))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Expanded` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 10. Flexible Mini App
- Folder: `widgets_examples/10_widget_flexible`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Flexible Widget Demo')), 
  body: Center(child: Flexible(fit: FlexFit.loose, child: Container(color: Colors.orange))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Flexible` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 11. TextButton Mini App
- Folder: `widgets_examples/11_widget_textbutton`
- Entry: `lib/main.dart`
- Category: Buttons
- Best use: Use this when user-triggered actions need clear affordance.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('TextButton Widget Demo')), 
  body: Center(child: TextButton(onPressed: () {}, child: Text('Action'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `TextButton` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 12. ElevatedButton Mini App
- Folder: `widgets_examples/12_widget_elevatedbutton`
- Entry: `lib/main.dart`
- Category: Buttons
- Best use: Use this when user-triggered actions need clear affordance.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('ElevatedButton Widget Demo')), 
  body: Center(child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.touch_app), label: Text('Tap'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `ElevatedButton` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 13. IconButton Mini App
- Folder: `widgets_examples/13_widget_iconbutton`
- Entry: `lib/main.dart`
- Category: Buttons
- Best use: Use this when user-triggered actions need clear affordance.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('IconButton Widget Demo')), 
  body: Center(child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `IconButton` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 14. FloatingActionButton Mini App
- Folder: `widgets_examples/14_widget_floatingactionbtn`
- Entry: `lib/main.dart`
- Category: Buttons
- Best use: Use this when user-triggered actions need clear affordance.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('FloatingActionButton Widget Demo')), 
  body: Center(child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `FloatingActionButton` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 15. CircularProgressIndicator Mini App
- Folder: `widgets_examples/15_widget_circularprogress`
- Entry: `lib/main.dart`
- Category: Feedback
- Best use: Use this when communicating status, hints, or short confirmations.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('CircularProgressIndicator Widget Demo')), 
  body: Center(child: CircularProgressIndicator(strokeWidth: 5)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `CircularProgressIndicator` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 16. LinearProgressIndicator Mini App
- Folder: `widgets_examples/16_widget_linearprogress`
- Entry: `lib/main.dart`
- Category: Feedback
- Best use: Use this when communicating status, hints, or short confirmations.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('LinearProgressIndicator Widget Demo')), 
  body: Center(child: LinearProgressIndicator(value: 0.6)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `LinearProgressIndicator` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 17. Tooltip Mini App
- Folder: `widgets_examples/17_widget_tooltip`
- Entry: `lib/main.dart`
- Category: Feedback
- Best use: Use this when communicating status, hints, or short confirmations.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Tooltip Widget Demo')), 
  body: Center(child: Tooltip(message: 'Helpful hint', child: Icon(Icons.info))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Tooltip` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 18. Spacer Mini App
- Folder: `widgets_examples/18_widget_spacer`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Spacer Widget Demo')), 
  body: Center(child: Row(children: [Text('A'), Spacer(), Text('B')])),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Spacer` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 19. SelectableText Mini App
- Folder: `widgets_examples/19_widget_selectabletext`
- Entry: `lib/main.dart`
- Category: Display
- Best use: Use this when content readability and visual clarity are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('SelectableText Widget Demo')), 
  body: Center(child: SelectableText('Copyable text')),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `SelectableText` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 20. Card Mini App
- Folder: `widgets_examples/20_widget_card`
- Entry: `lib/main.dart`
- Category: Display
- Best use: Use this when content readability and visual clarity are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Card Widget Demo')), 
  body: Center(child: Card(child: Padding(padding: EdgeInsets.all(12), child: Text('Card Body')))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Card` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 21. TextField Mini App
- Folder: `widgets_examples/21_widget_textfield`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('TextField Widget Demo')), 
  body: Center(child: TextField(decoration: InputDecoration(labelText: 'Name'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `TextField` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 22. TextFormField Mini App
- Folder: `widgets_examples/22_widget_textformfield`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('TextFormField Widget Demo')), 
  body: Center(child: TextFormField(validator: (v) => v!.isEmpty ? 'Required' : null)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `TextFormField` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 23. Checkbox Mini App
- Folder: `widgets_examples/23_widget_checkbox`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Checkbox Widget Demo')), 
  body: Center(child: Checkbox(value: checked, onChanged: (v) => setState(() => checked = v!))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Checkbox` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 24. Radio Mini App
- Folder: `widgets_examples/24_widget_radio`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Radio Widget Demo')), 
  body: Center(child: Radio<int>(value: 1, groupValue: selected, onChanged: (v) => setState(() => selected = v!))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Radio` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 25. Switch Mini App
- Folder: `widgets_examples/25_widget_switch`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Switch Widget Demo')), 
  body: Center(child: Switch(value: enabled, onChanged: (v) => setState(() => enabled = v))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Switch` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 26. Slider Mini App
- Folder: `widgets_examples/26_widget_slider`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Slider Widget Demo')), 
  body: Center(child: Slider(value: value, min: 0, max: 100, onChanged: (v) => setState(() => value = v))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Slider` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 27. DropdownButton Mini App
- Folder: `widgets_examples/27_widget_dropdownbutton`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('DropdownButton Widget Demo')), 
  body: Center(child: DropdownButton<String>(value: selected, items: items, onChanged: (v) => setState(() => selected = v!))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `DropdownButton` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 28. DatePicker Mini App
- Folder: `widgets_examples/28_widget_datepicker`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('DatePicker Widget Demo')), 
  body: Center(child: showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime(2100), initialDate: DateTime.now())),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `DatePicker` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 29. TimePicker Mini App
- Folder: `widgets_examples/29_widget_timepicker`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('TimePicker Widget Demo')), 
  body: Center(child: showTimePicker(context: context, initialTime: TimeOfDay.now())),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `TimePicker` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 30. DateRangePicker Mini App
- Folder: `widgets_examples/30_widget_daterangepicker`
- Entry: `lib/main.dart`
- Category: Input
- Best use: Use this when collecting or modifying user-provided values.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('DateRangePicker Widget Demo')), 
  body: Center(child: showDateRangePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime(2100))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `DateRangePicker` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 31. SingleChildScrollView Mini App
- Folder: `widgets_examples/31_widget_singlechildscrollview`
- Entry: `lib/main.dart`
- Category: Scrolling
- Best use: Use this when content length can exceed viewport height.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('SingleChildScrollView Widget Demo')), 
  body: Center(child: SingleChildScrollView(child: Column(children: [...]))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `SingleChildScrollView` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 32. ListTile Mini App
- Folder: `widgets_examples/32_widget_listtile`
- Entry: `lib/main.dart`
- Category: Lists
- Best use: Use this when rendering repeated structured data rows.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('ListTile Widget Demo')), 
  body: Center(child: ListTile(leading: Icon(Icons.person), title: Text('Title'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `ListTile` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 33. CheckboxListTile Mini App
- Folder: `widgets_examples/33_widget_checkboxlisttile`
- Entry: `lib/main.dart`
- Category: Lists
- Best use: Use this when rendering repeated structured data rows.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('CheckboxListTile Widget Demo')), 
  body: Center(child: CheckboxListTile(value: checked, onChanged: (v) {}, title: Text('Option'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `CheckboxListTile` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 34. RadioListTile Mini App
- Folder: `widgets_examples/34_widget_radiolisttile`
- Entry: `lib/main.dart`
- Category: Lists
- Best use: Use this when rendering repeated structured data rows.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('RadioListTile Widget Demo')), 
  body: Center(child: RadioListTile<int>(value: 1, groupValue: selected, onChanged: (v) {}, title: Text('Option'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `RadioListTile` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 35. ListView Mini App
- Folder: `widgets_examples/35_widget_listview`
- Entry: `lib/main.dart`
- Category: Lists
- Best use: Use this when rendering repeated structured data rows.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('ListView Widget Demo')), 
  body: Center(child: ListView(children: [ListTile(...), ListTile(...)])),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `ListView` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 36. ListView.builder Mini App
- Folder: `widgets_examples/36_widget_listviewbuilder`
- Entry: `lib/main.dart`
- Category: Lists
- Best use: Use this when rendering repeated structured data rows.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('ListView.builder Widget Demo')), 
  body: Center(child: ListView.builder(itemCount: 20, itemBuilder: (context, i) => ListTile(title: Text('Item')))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `ListView.builder` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 37. GridTile Mini App
- Folder: `widgets_examples/37_widget_gridtile`
- Entry: `lib/main.dart`
- Category: Grid
- Best use: Use this when content works better in multiple columns.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('GridTile Widget Demo')), 
  body: Center(child: GridTile(header: Text('Header'), child: Container(color: Colors.blue))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `GridTile` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 38. GridTileBar Mini App
- Folder: `widgets_examples/38_widget_gridtilebar`
- Entry: `lib/main.dart`
- Category: Grid
- Best use: Use this when content works better in multiple columns.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('GridTileBar Widget Demo')), 
  body: Center(child: GridTileBar(title: Text('Title'), subtitle: Text('Sub'))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `GridTileBar` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 39. GridView Mini App
- Folder: `widgets_examples/39_widget_gridview`
- Entry: `lib/main.dart`
- Category: Grid
- Best use: Use this when content works better in multiple columns.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('GridView Widget Demo')), 
  body: Center(child: GridView.count(crossAxisCount: 2, children: cards)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `GridView` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 40. Wrap Mini App
- Folder: `widgets_examples/40_widget_wrap`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Wrap Widget Demo')), 
  body: Center(child: Wrap(spacing: 8, runSpacing: 8, children: chips)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Wrap` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 41. Stack Mini App
- Folder: `widgets_examples/41_widget_stack`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Stack Widget Demo')), 
  body: Center(child: Stack(children: [background, overlay])),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Stack` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 42. Positioned Mini App
- Folder: `widgets_examples/42_widget_positioned`
- Entry: `lib/main.dart`
- Category: Layout
- Best use: Use this when positioning, spacing, and responsive arrangement are the priority.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Positioned Widget Demo')), 
  body: Center(child: Positioned(top: 8, right: 8, child: Icon(Icons.star))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Positioned` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 43. ReorderableListView Mini App
- Folder: `widgets_examples/43_widget_reorderablelistview`
- Entry: `lib/main.dart`
- Category: Lists
- Best use: Use this when rendering repeated structured data rows.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('ReorderableListView Widget Demo')), 
  body: Center(child: ReorderableListView(onReorder: onReorder, children: tiles)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `ReorderableListView` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 44. Navigator Mini App
- Folder: `widgets_examples/44_widget_navigator`
- Entry: `lib/main.dart`
- Category: Navigation
- Best use: Use this when user flow moves between screens, sections, or menus.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Navigator Widget Demo')), 
  body: Center(child: Navigator.push(context, MaterialPageRoute(builder: (_) => NextScreen()))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Navigator` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 45. AlertDialog Mini App
- Folder: `widgets_examples/45_widget_alertdialog`
- Entry: `lib/main.dart`
- Category: Navigation
- Best use: Use this when user flow moves between screens, sections, or menus.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('AlertDialog Widget Demo')), 
  body: Center(child: showDialog(context: context, builder: (_) => AlertDialog(...))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `AlertDialog` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 46. SnackBar Mini App
- Folder: `widgets_examples/46_widget_snackbar`
- Entry: `lib/main.dart`
- Category: Feedback
- Best use: Use this when communicating status, hints, or short confirmations.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('SnackBar Widget Demo')), 
  body: Center(child: ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Saved')))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `SnackBar` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 47. PopupMenuButton Mini App
- Folder: `widgets_examples/47_widget_popupmenubutton`
- Entry: `lib/main.dart`
- Category: Navigation
- Best use: Use this when user flow moves between screens, sections, or menus.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('PopupMenuButton Widget Demo')), 
  body: Center(child: PopupMenuButton<String>(itemBuilder: (context) => menuItems)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `PopupMenuButton` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 48. Drawer Mini App
- Folder: `widgets_examples/48_widget_drawer`
- Entry: `lib/main.dart`
- Category: Navigation
- Best use: Use this when user flow moves between screens, sections, or menus.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('Drawer Widget Demo')), 
  body: Center(child: Scaffold(drawer: Drawer(child: ListView(children: [...])))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `Drawer` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 49. BottomNavigationBar Mini App
- Folder: `widgets_examples/49_widget_bottomnavigationbar`
- Entry: `lib/main.dart`
- Category: Navigation
- Best use: Use this when user flow moves between screens, sections, or menus.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('BottomNavigationBar Widget Demo')), 
  body: Center(child: BottomNavigationBar(currentIndex: index, onTap: onTap, items: items)),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `BottomNavigationBar` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## 50. TabBar Mini App
- Folder: `widgets_examples/50_widget_tabbar`
- Entry: `lib/main.dart`
- Category: Navigation
- Best use: Use this when user flow moves between screens, sections, or menus.

### Typical Code Shape
```dart
Scaffold(
  appBar: AppBar(title: const Text('TabBar Widget Demo')), 
  body: Center(child: DefaultTabController(length: 3, child: Column(children: [TabBar(...), TabBarView(...)]))),
)
```

### Explanation
1. `Scaffold` provides complete screen shell.
2. AppBar title labels the topic for quick checking.
3. Body isolates target widget for focused observation.
4. Chosen properties are intentionally visible during runtime.
5. This keeps each mini app educational and evaluator-friendly.

### Practice Prompt
- Change one property in `TabBar` demo and explain visual impact.
- State one production use-case in under 20 seconds.

## Closing
- This refined mini-app guide remains comprehensive and less repetitive.