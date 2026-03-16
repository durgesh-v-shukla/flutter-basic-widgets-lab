# Single App 50 Widgets Workflow Guide (Refined)

## Why This Guide
- This refined version reduces repetition while keeping high detail.
- It documents how one Flutter app hosts 50 separate widget files.
- It is written as a practical submission + viva companion.

## Architecture Snapshot
```text
flutter-50-widgets-learning/
  lib/
    main.dart
    widgets/
      01_text_widget.dart
      02_icon_widget.dart
      ...
      50_tabbar_widget.dart
```

## Launch Flow
1. App starts at `main()`. 
2. Root `MaterialApp` opens home list screen.
3. User taps one widget title from list.
4. Route push opens selected widget file screen.
5. Back returns to home list for next widget.

## Widget Mapping Table
| # | Widget | File | Category |
|---|---|---|---|
| 01 | Text | `lib/widgets/01_text_widget.dart` | Display |
| 02 | Icon | `lib/widgets/02_icon_widget.dart` | Display |
| 03 | Image | `lib/widgets/03_image_widget.dart` | Display |
| 04 | Center | `lib/widgets/04_center_widget.dart` | Layout |
| 05 | Padding | `lib/widgets/05_padding_widget.dart` | Layout |
| 06 | Align | `lib/widgets/06_align_widget.dart` | Layout |
| 07 | SizedBox | `lib/widgets/07_sizedbox_widget.dart` | Layout |
| 08 | Container | `lib/widgets/08_container_widget.dart` | Layout |
| 09 | Expanded | `lib/widgets/09_expanded_widget.dart` | Layout |
| 10 | Flexible | `lib/widgets/10_flexible_widget.dart` | Layout |
| 11 | TextButton | `lib/widgets/11_textbutton_widget.dart` | Buttons |
| 12 | ElevatedButton | `lib/widgets/12_elevatedbutton_widget.dart` | Buttons |
| 13 | IconButton | `lib/widgets/13_iconbutton_widget.dart` | Buttons |
| 14 | FloatingActionButton | `lib/widgets/14_floatingactionbutton_widget.dart` | Buttons |
| 15 | CircularProgressIndicator | `lib/widgets/15_circularprogress_widget.dart` | Feedback |
| 16 | LinearProgressIndicator | `lib/widgets/16_linearprogress_widget.dart` | Feedback |
| 17 | Tooltip | `lib/widgets/17_tooltip_widget.dart` | Feedback |
| 18 | Spacer | `lib/widgets/18_spacer_widget.dart` | Layout |
| 19 | SelectableText | `lib/widgets/19_selectabletext_widget.dart` | Display |
| 20 | Card | `lib/widgets/20_card_widget.dart` | Display |
| 21 | TextField | `lib/widgets/21_textfield_widget.dart` | Input |
| 22 | TextFormField | `lib/widgets/22_textformfield_widget.dart` | Input |
| 23 | Checkbox | `lib/widgets/23_checkbox_widget.dart` | Input |
| 24 | Radio | `lib/widgets/24_radio_widget.dart` | Input |
| 25 | Switch | `lib/widgets/25_switch_widget.dart` | Input |
| 26 | Slider | `lib/widgets/26_slider_widget.dart` | Input |
| 27 | DropdownButton | `lib/widgets/27_dropdownbutton_widget.dart` | Input |
| 28 | DatePicker | `lib/widgets/28_datepicker_widget.dart` | Input |
| 29 | TimePicker | `lib/widgets/29_timepicker_widget.dart` | Input |
| 30 | DateRangePicker | `lib/widgets/30_daterangepicker_widget.dart` | Input |
| 31 | SingleChildScrollView | `lib/widgets/31_singlechildscrollview_widget.dart` | Scrolling |
| 32 | ListTile | `lib/widgets/32_listtile_widget.dart` | Lists |
| 33 | CheckboxListTile | `lib/widgets/33_checkboxlisttile_widget.dart` | Lists |
| 34 | RadioListTile | `lib/widgets/34_radiolisttile_widget.dart` | Lists |
| 35 | ListView | `lib/widgets/35_listview_widget.dart` | Lists |
| 36 | ListView.builder | `lib/widgets/36_listviewbuilder_widget.dart` | Lists |
| 37 | GridTile | `lib/widgets/37_gridtile_widget.dart` | Grid |
| 38 | GridTileBar | `lib/widgets/38_gridtilebar_widget.dart` | Grid |
| 39 | GridView | `lib/widgets/39_gridview_widget.dart` | Grid |
| 40 | Wrap | `lib/widgets/40_wrap_widget.dart` | Layout |
| 41 | Stack | `lib/widgets/41_stack_widget.dart` | Layout |
| 42 | Positioned | `lib/widgets/42_positioned_widget.dart` | Layout |
| 43 | ReorderableListView | `lib/widgets/43_reorderablelistview_widget.dart` | Lists |
| 44 | Navigator | `lib/widgets/44_navigator_widget.dart` | Navigation |
| 45 | AlertDialog | `lib/widgets/45_alertdialog_widget.dart` | Navigation |
| 46 | SnackBar | `lib/widgets/46_snackbar_widget.dart` | Feedback |
| 47 | PopupMenuButton | `lib/widgets/47_popupmenubutton_widget.dart` | Navigation |
| 48 | Drawer | `lib/widgets/48_drawer_widget.dart` | Navigation |
| 49 | BottomNavigationBar | `lib/widgets/49_bottomnavigationbar_widget.dart` | Navigation |
| 50 | TabBar | `lib/widgets/50_tabbar_widget.dart` | Navigation |

## Detailed Sections (All 50)

## 01. Text
- Category: Display
- Mini-app folder reference: `widgets_examples/01_widget_text`
- Single-app file: `lib/widgets/01_text_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/01_text_widget.dart';

// Demo registry entry
WidgetDemo('Text', const TextWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class TextWidgetExample extends StatelessWidget {
  const TextWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget Example'),
      ),
      body: Center(
        child: Text('Flutter Text Widget', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Text` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/01_text_widget.dart';

MaterialApp(
  home: const TextWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when content readability and visual clarity are the priority.
- Ask-back answer: choose `Text` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 02. Icon
- Category: Display
- Mini-app folder reference: `widgets_examples/02_widget_icon`
- Single-app file: `lib/widgets/02_icon_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/02_icon_widget.dart';

// Demo registry entry
WidgetDemo('Icon', const IconWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class IconWidgetExample extends StatelessWidget {
  const IconWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget Example'),
      ),
      body: Center(
        child: Icon(Icons.favorite, size: 72, color: Colors.red),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Icon` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/02_icon_widget.dart';

MaterialApp(
  home: const IconWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when content readability and visual clarity are the priority.
- Ask-back answer: choose `Icon` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 03. Image
- Category: Display
- Mini-app folder reference: `widgets_examples/03_widget_image`
- Single-app file: `lib/widgets/03_image_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/03_image_widget.dart';

// Demo registry entry
WidgetDemo('Image', const ImageWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class ImageWidgetExample extends StatelessWidget {
  const ImageWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget Example'),
      ),
      body: Center(
        child: Image.network('https://picsum.photos/300', width: 220, fit: BoxFit.cover),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Image` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/03_image_widget.dart';

MaterialApp(
  home: const ImageWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when content readability and visual clarity are the priority.
- Ask-back answer: choose `Image` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 04. Center
- Category: Layout
- Mini-app folder reference: `widgets_examples/04_widget_center`
- Single-app file: `lib/widgets/04_center_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/04_center_widget.dart';

// Demo registry entry
WidgetDemo('Center', const CenterWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class CenterWidgetExample extends StatelessWidget {
  const CenterWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center Widget Example'),
      ),
      body: Center(
        child: Center(child: Text('Centered')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Center` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/04_center_widget.dart';

MaterialApp(
  home: const CenterWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Center` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 05. Padding
- Category: Layout
- Mini-app folder reference: `widgets_examples/05_widget_padding`
- Single-app file: `lib/widgets/05_padding_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/05_padding_widget.dart';

// Demo registry entry
WidgetDemo('Padding', const PaddingWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class PaddingWidgetExample extends StatelessWidget {
  const PaddingWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Widget Example'),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(16), child: Text('Padded')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Padding` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/05_padding_widget.dart';

MaterialApp(
  home: const PaddingWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Padding` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 06. Align
- Category: Layout
- Mini-app folder reference: `widgets_examples/06_widget_align`
- Single-app file: `lib/widgets/06_align_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/06_align_widget.dart';

// Demo registry entry
WidgetDemo('Align', const AlignWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class AlignWidgetExample extends StatelessWidget {
  const AlignWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Widget Example'),
      ),
      body: Center(
        child: Align(alignment: Alignment.bottomRight, child: Text('Bottom Right')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Align` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/06_align_widget.dart';

MaterialApp(
  home: const AlignWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Align` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 07. SizedBox
- Category: Layout
- Mini-app folder reference: `widgets_examples/07_widget_sizedbox`
- Single-app file: `lib/widgets/07_sizedbox_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/07_sizedbox_widget.dart';

// Demo registry entry
WidgetDemo('SizedBox', const SizedBoxWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class SizedBoxWidgetExample extends StatelessWidget {
  const SizedBoxWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox Widget Example'),
      ),
      body: Center(
        child: SizedBox(height: 24),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `SizedBox` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/07_sizedbox_widget.dart';

MaterialApp(
  home: const SizedBoxWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `SizedBox` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 08. Container
- Category: Layout
- Mini-app folder reference: `widgets_examples/08_widget_container`
- Single-app file: `lib/widgets/08_container_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/08_container_widget.dart';

// Demo registry entry
WidgetDemo('Container', const ContainerWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class ContainerWidgetExample extends StatelessWidget {
  const ContainerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget Example'),
      ),
      body: Center(
        child: Container(width: 200, height: 140, decoration: BoxDecoration(color: Colors.blue)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Container` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/08_container_widget.dart';

MaterialApp(
  home: const ContainerWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Container` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 09. Expanded
- Category: Layout
- Mini-app folder reference: `widgets_examples/09_widget_expanded`
- Single-app file: `lib/widgets/09_expanded_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/09_expanded_widget.dart';

// Demo registry entry
WidgetDemo('Expanded', const ExpandedWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class ExpandedWidgetExample extends StatelessWidget {
  const ExpandedWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Widget Example'),
      ),
      body: Center(
        child: Expanded(child: Container(color: Colors.green)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Expanded` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/09_expanded_widget.dart';

MaterialApp(
  home: const ExpandedWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Expanded` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 10. Flexible
- Category: Layout
- Mini-app folder reference: `widgets_examples/10_widget_flexible`
- Single-app file: `lib/widgets/10_flexible_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/10_flexible_widget.dart';

// Demo registry entry
WidgetDemo('Flexible', const FlexibleWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class FlexibleWidgetExample extends StatelessWidget {
  const FlexibleWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Widget Example'),
      ),
      body: Center(
        child: Flexible(fit: FlexFit.loose, child: Container(color: Colors.orange)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Flexible` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/10_flexible_widget.dart';

MaterialApp(
  home: const FlexibleWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Flexible` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 11. TextButton
- Category: Buttons
- Mini-app folder reference: `widgets_examples/11_widget_textbutton`
- Single-app file: `lib/widgets/11_textbutton_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/11_textbutton_widget.dart';

// Demo registry entry
WidgetDemo('TextButton', const TextButtonWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class TextButtonWidgetExample extends StatelessWidget {
  const TextButtonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextButton Widget Example'),
      ),
      body: Center(
        child: TextButton(onPressed: () {}, child: Text('Action')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `TextButton` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/11_textbutton_widget.dart';

MaterialApp(
  home: const TextButtonWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user-triggered actions need clear affordance.
- Ask-back answer: choose `TextButton` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 12. ElevatedButton
- Category: Buttons
- Mini-app folder reference: `widgets_examples/12_widget_elevatedbutton`
- Single-app file: `lib/widgets/12_elevatedbutton_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/12_elevatedbutton_widget.dart';

// Demo registry entry
WidgetDemo('ElevatedButton', const ElevatedButtonWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class ElevatedButtonWidgetExample extends StatelessWidget {
  const ElevatedButtonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ElevatedButton Widget Example'),
      ),
      body: Center(
        child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.touch_app), label: Text('Tap')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `ElevatedButton` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/12_elevatedbutton_widget.dart';

MaterialApp(
  home: const ElevatedButtonWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user-triggered actions need clear affordance.
- Ask-back answer: choose `ElevatedButton` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 13. IconButton
- Category: Buttons
- Mini-app folder reference: `widgets_examples/13_widget_iconbutton`
- Single-app file: `lib/widgets/13_iconbutton_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/13_iconbutton_widget.dart';

// Demo registry entry
WidgetDemo('IconButton', const IconButtonWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class IconButtonWidgetExample extends StatelessWidget {
  const IconButtonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IconButton Widget Example'),
      ),
      body: Center(
        child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `IconButton` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/13_iconbutton_widget.dart';

MaterialApp(
  home: const IconButtonWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user-triggered actions need clear affordance.
- Ask-back answer: choose `IconButton` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 14. FloatingActionButton
- Category: Buttons
- Mini-app folder reference: `widgets_examples/14_widget_floatingactionbtn`
- Single-app file: `lib/widgets/14_floatingactionbutton_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/14_floatingactionbutton_widget.dart';

// Demo registry entry
WidgetDemo('FloatingActionButton', const FloatingActionButtonWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class FloatingActionButtonWidgetExample extends StatelessWidget {
  const FloatingActionButtonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton Widget Example'),
      ),
      body: Center(
        child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `FloatingActionButton` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/14_floatingactionbutton_widget.dart';

MaterialApp(
  home: const FloatingActionButtonWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user-triggered actions need clear affordance.
- Ask-back answer: choose `FloatingActionButton` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 15. CircularProgressIndicator
- Category: Feedback
- Mini-app folder reference: `widgets_examples/15_widget_circularprogress`
- Single-app file: `lib/widgets/15_circularprogress_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/15_circularprogress_widget.dart';

// Demo registry entry
WidgetDemo('CircularProgressIndicator', const CircularProgressIndicatorWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class CircularProgressIndicatorWidgetExample extends StatelessWidget {
  const CircularProgressIndicatorWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircularProgressIndicator Widget Example'),
      ),
      body: Center(
        child: CircularProgressIndicator(strokeWidth: 5),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `CircularProgressIndicator` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/15_circularprogress_widget.dart';

MaterialApp(
  home: const CircularProgressIndicatorWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when communicating status, hints, or short confirmations.
- Ask-back answer: choose `CircularProgressIndicator` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 16. LinearProgressIndicator
- Category: Feedback
- Mini-app folder reference: `widgets_examples/16_widget_linearprogress`
- Single-app file: `lib/widgets/16_linearprogress_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/16_linearprogress_widget.dart';

// Demo registry entry
WidgetDemo('LinearProgressIndicator', const LinearProgressIndicatorWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class LinearProgressIndicatorWidgetExample extends StatelessWidget {
  const LinearProgressIndicatorWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LinearProgressIndicator Widget Example'),
      ),
      body: Center(
        child: LinearProgressIndicator(value: 0.6),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `LinearProgressIndicator` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/16_linearprogress_widget.dart';

MaterialApp(
  home: const LinearProgressIndicatorWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when communicating status, hints, or short confirmations.
- Ask-back answer: choose `LinearProgressIndicator` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 17. Tooltip
- Category: Feedback
- Mini-app folder reference: `widgets_examples/17_widget_tooltip`
- Single-app file: `lib/widgets/17_tooltip_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/17_tooltip_widget.dart';

// Demo registry entry
WidgetDemo('Tooltip', const TooltipWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class TooltipWidgetExample extends StatelessWidget {
  const TooltipWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip Widget Example'),
      ),
      body: Center(
        child: Tooltip(message: 'Helpful hint', child: Icon(Icons.info)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Tooltip` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/17_tooltip_widget.dart';

MaterialApp(
  home: const TooltipWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when communicating status, hints, or short confirmations.
- Ask-back answer: choose `Tooltip` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 18. Spacer
- Category: Layout
- Mini-app folder reference: `widgets_examples/18_widget_spacer`
- Single-app file: `lib/widgets/18_spacer_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/18_spacer_widget.dart';

// Demo registry entry
WidgetDemo('Spacer', const SpacerWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class SpacerWidgetExample extends StatelessWidget {
  const SpacerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer Widget Example'),
      ),
      body: Center(
        child: Row(children: [Text('A'), Spacer(), Text('B')]),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Spacer` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/18_spacer_widget.dart';

MaterialApp(
  home: const SpacerWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Spacer` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 19. SelectableText
- Category: Display
- Mini-app folder reference: `widgets_examples/19_widget_selectabletext`
- Single-app file: `lib/widgets/19_selectabletext_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/19_selectabletext_widget.dart';

// Demo registry entry
WidgetDemo('SelectableText', const SelectableTextWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class SelectableTextWidgetExample extends StatelessWidget {
  const SelectableTextWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectableText Widget Example'),
      ),
      body: Center(
        child: SelectableText('Copyable text'),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `SelectableText` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/19_selectabletext_widget.dart';

MaterialApp(
  home: const SelectableTextWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when content readability and visual clarity are the priority.
- Ask-back answer: choose `SelectableText` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 20. Card
- Category: Display
- Mini-app folder reference: `widgets_examples/20_widget_card`
- Single-app file: `lib/widgets/20_card_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/20_card_widget.dart';

// Demo registry entry
WidgetDemo('Card', const CardWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class CardWidgetExample extends StatelessWidget {
  const CardWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget Example'),
      ),
      body: Center(
        child: Card(child: Padding(padding: EdgeInsets.all(12), child: Text('Card Body'))),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Card` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/20_card_widget.dart';

MaterialApp(
  home: const CardWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when content readability and visual clarity are the priority.
- Ask-back answer: choose `Card` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 21. TextField
- Category: Input
- Mini-app folder reference: `widgets_examples/21_widget_textfield`
- Single-app file: `lib/widgets/21_textfield_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/21_textfield_widget.dart';

// Demo registry entry
WidgetDemo('TextField', const TextFieldWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class TextFieldWidgetExample extends StatelessWidget {
  const TextFieldWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Widget Example'),
      ),
      body: Center(
        child: TextField(decoration: InputDecoration(labelText: 'Name')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `TextField` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/21_textfield_widget.dart';

MaterialApp(
  home: const TextFieldWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `TextField` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 22. TextFormField
- Category: Input
- Mini-app folder reference: `widgets_examples/22_widget_textformfield`
- Single-app file: `lib/widgets/22_textformfield_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/22_textformfield_widget.dart';

// Demo registry entry
WidgetDemo('TextFormField', const TextFormFieldWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class TextFormFieldWidgetExample extends StatelessWidget {
  const TextFormFieldWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFormField Widget Example'),
      ),
      body: Center(
        child: TextFormField(validator: (v) => v!.isEmpty ? 'Required' : null),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `TextFormField` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/22_textformfield_widget.dart';

MaterialApp(
  home: const TextFormFieldWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `TextFormField` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 23. Checkbox
- Category: Input
- Mini-app folder reference: `widgets_examples/23_widget_checkbox`
- Single-app file: `lib/widgets/23_checkbox_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/23_checkbox_widget.dart';

// Demo registry entry
WidgetDemo('Checkbox', const CheckboxWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class CheckboxWidgetExample extends StatelessWidget {
  const CheckboxWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Widget Example'),
      ),
      body: Center(
        child: Checkbox(value: checked, onChanged: (v) => setState(() => checked = v!)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Checkbox` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/23_checkbox_widget.dart';

MaterialApp(
  home: const CheckboxWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `Checkbox` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 24. Radio
- Category: Input
- Mini-app folder reference: `widgets_examples/24_widget_radio`
- Single-app file: `lib/widgets/24_radio_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/24_radio_widget.dart';

// Demo registry entry
WidgetDemo('Radio', const RadioWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class RadioWidgetExample extends StatelessWidget {
  const RadioWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Widget Example'),
      ),
      body: Center(
        child: Radio<int>(value: 1, groupValue: selected, onChanged: (v) => setState(() => selected = v!)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Radio` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/24_radio_widget.dart';

MaterialApp(
  home: const RadioWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `Radio` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 25. Switch
- Category: Input
- Mini-app folder reference: `widgets_examples/25_widget_switch`
- Single-app file: `lib/widgets/25_switch_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/25_switch_widget.dart';

// Demo registry entry
WidgetDemo('Switch', const SwitchWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class SwitchWidgetExample extends StatelessWidget {
  const SwitchWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Widget Example'),
      ),
      body: Center(
        child: Switch(value: enabled, onChanged: (v) => setState(() => enabled = v)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Switch` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/25_switch_widget.dart';

MaterialApp(
  home: const SwitchWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `Switch` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 26. Slider
- Category: Input
- Mini-app folder reference: `widgets_examples/26_widget_slider`
- Single-app file: `lib/widgets/26_slider_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/26_slider_widget.dart';

// Demo registry entry
WidgetDemo('Slider', const SliderWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class SliderWidgetExample extends StatelessWidget {
  const SliderWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Widget Example'),
      ),
      body: Center(
        child: Slider(value: value, min: 0, max: 100, onChanged: (v) => setState(() => value = v)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Slider` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/26_slider_widget.dart';

MaterialApp(
  home: const SliderWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `Slider` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 27. DropdownButton
- Category: Input
- Mini-app folder reference: `widgets_examples/27_widget_dropdownbutton`
- Single-app file: `lib/widgets/27_dropdownbutton_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/27_dropdownbutton_widget.dart';

// Demo registry entry
WidgetDemo('DropdownButton', const DropdownButtonWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class DropdownButtonWidgetExample extends StatelessWidget {
  const DropdownButtonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton Widget Example'),
      ),
      body: Center(
        child: DropdownButton<String>(value: selected, items: items, onChanged: (v) => setState(() => selected = v!)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `DropdownButton` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/27_dropdownbutton_widget.dart';

MaterialApp(
  home: const DropdownButtonWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `DropdownButton` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 28. DatePicker
- Category: Input
- Mini-app folder reference: `widgets_examples/28_widget_datepicker`
- Single-app file: `lib/widgets/28_datepicker_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/28_datepicker_widget.dart';

// Demo registry entry
WidgetDemo('DatePicker', const DatePickerWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class DatePickerWidgetExample extends StatelessWidget {
  const DatePickerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DatePicker Widget Example'),
      ),
      body: Center(
        child: showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime(2100), initialDate: DateTime.now()),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `DatePicker` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/28_datepicker_widget.dart';

MaterialApp(
  home: const DatePickerWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `DatePicker` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 29. TimePicker
- Category: Input
- Mini-app folder reference: `widgets_examples/29_widget_timepicker`
- Single-app file: `lib/widgets/29_timepicker_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/29_timepicker_widget.dart';

// Demo registry entry
WidgetDemo('TimePicker', const TimePickerWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class TimePickerWidgetExample extends StatelessWidget {
  const TimePickerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimePicker Widget Example'),
      ),
      body: Center(
        child: showTimePicker(context: context, initialTime: TimeOfDay.now()),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `TimePicker` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/29_timepicker_widget.dart';

MaterialApp(
  home: const TimePickerWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `TimePicker` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 30. DateRangePicker
- Category: Input
- Mini-app folder reference: `widgets_examples/30_widget_daterangepicker`
- Single-app file: `lib/widgets/30_daterangepicker_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/30_daterangepicker_widget.dart';

// Demo registry entry
WidgetDemo('DateRangePicker', const DateRangePickerWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class DateRangePickerWidgetExample extends StatelessWidget {
  const DateRangePickerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DateRangePicker Widget Example'),
      ),
      body: Center(
        child: showDateRangePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime(2100)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `DateRangePicker` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/30_daterangepicker_widget.dart';

MaterialApp(
  home: const DateRangePickerWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when collecting or modifying user-provided values.
- Ask-back answer: choose `DateRangePicker` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 31. SingleChildScrollView
- Category: Scrolling
- Mini-app folder reference: `widgets_examples/31_widget_singlechildscrollview`
- Single-app file: `lib/widgets/31_singlechildscrollview_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/31_singlechildscrollview_widget.dart';

// Demo registry entry
WidgetDemo('SingleChildScrollView', const SingleChildScrollViewWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class SingleChildScrollViewWidgetExample extends StatelessWidget {
  const SingleChildScrollViewWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView Widget Example'),
      ),
      body: Center(
        child: SingleChildScrollView(child: Column(children: [...])),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `SingleChildScrollView` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/31_singlechildscrollview_widget.dart';

MaterialApp(
  home: const SingleChildScrollViewWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when content length can exceed viewport height.
- Ask-back answer: choose `SingleChildScrollView` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 32. ListTile
- Category: Lists
- Mini-app folder reference: `widgets_examples/32_widget_listtile`
- Single-app file: `lib/widgets/32_listtile_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/32_listtile_widget.dart';

// Demo registry entry
WidgetDemo('ListTile', const ListTileWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class ListTileWidgetExample extends StatelessWidget {
  const ListTileWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Widget Example'),
      ),
      body: Center(
        child: ListTile(leading: Icon(Icons.person), title: Text('Title')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `ListTile` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/32_listtile_widget.dart';

MaterialApp(
  home: const ListTileWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when rendering repeated structured data rows.
- Ask-back answer: choose `ListTile` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 33. CheckboxListTile
- Category: Lists
- Mini-app folder reference: `widgets_examples/33_widget_checkboxlisttile`
- Single-app file: `lib/widgets/33_checkboxlisttile_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/33_checkboxlisttile_widget.dart';

// Demo registry entry
WidgetDemo('CheckboxListTile', const CheckboxListTileWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class CheckboxListTileWidgetExample extends StatelessWidget {
  const CheckboxListTileWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckboxListTile Widget Example'),
      ),
      body: Center(
        child: CheckboxListTile(value: checked, onChanged: (v) {}, title: Text('Option')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `CheckboxListTile` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/33_checkboxlisttile_widget.dart';

MaterialApp(
  home: const CheckboxListTileWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when rendering repeated structured data rows.
- Ask-back answer: choose `CheckboxListTile` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 34. RadioListTile
- Category: Lists
- Mini-app folder reference: `widgets_examples/34_widget_radiolisttile`
- Single-app file: `lib/widgets/34_radiolisttile_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/34_radiolisttile_widget.dart';

// Demo registry entry
WidgetDemo('RadioListTile', const RadioListTileWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class RadioListTileWidgetExample extends StatelessWidget {
  const RadioListTileWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioListTile Widget Example'),
      ),
      body: Center(
        child: RadioListTile<int>(value: 1, groupValue: selected, onChanged: (v) {}, title: Text('Option')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `RadioListTile` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/34_radiolisttile_widget.dart';

MaterialApp(
  home: const RadioListTileWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when rendering repeated structured data rows.
- Ask-back answer: choose `RadioListTile` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 35. ListView
- Category: Lists
- Mini-app folder reference: `widgets_examples/35_widget_listview`
- Single-app file: `lib/widgets/35_listview_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/35_listview_widget.dart';

// Demo registry entry
WidgetDemo('ListView', const ListViewWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class ListViewWidgetExample extends StatelessWidget {
  const ListViewWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Widget Example'),
      ),
      body: Center(
        child: ListView(children: [ListTile(...), ListTile(...)]),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `ListView` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/35_listview_widget.dart';

MaterialApp(
  home: const ListViewWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when rendering repeated structured data rows.
- Ask-back answer: choose `ListView` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 36. ListView.builder
- Category: Lists
- Mini-app folder reference: `widgets_examples/36_widget_listviewbuilder`
- Single-app file: `lib/widgets/36_listviewbuilder_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/36_listviewbuilder_widget.dart';

// Demo registry entry
WidgetDemo('ListView.builder', const ListViewbuilderWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class ListViewbuilderWidgetExample extends StatelessWidget {
  const ListViewbuilderWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder Widget Example'),
      ),
      body: Center(
        child: ListView.builder(itemCount: 20, itemBuilder: (context, i) => ListTile(title: Text('Item'))),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `ListView.builder` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/36_listviewbuilder_widget.dart';

MaterialApp(
  home: const ListViewbuilderWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when rendering repeated structured data rows.
- Ask-back answer: choose `ListView.builder` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 37. GridTile
- Category: Grid
- Mini-app folder reference: `widgets_examples/37_widget_gridtile`
- Single-app file: `lib/widgets/37_gridtile_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/37_gridtile_widget.dart';

// Demo registry entry
WidgetDemo('GridTile', const GridTileWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class GridTileWidgetExample extends StatelessWidget {
  const GridTileWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridTile Widget Example'),
      ),
      body: Center(
        child: GridTile(header: Text('Header'), child: Container(color: Colors.blue)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `GridTile` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/37_gridtile_widget.dart';

MaterialApp(
  home: const GridTileWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when content works better in multiple columns.
- Ask-back answer: choose `GridTile` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 38. GridTileBar
- Category: Grid
- Mini-app folder reference: `widgets_examples/38_widget_gridtilebar`
- Single-app file: `lib/widgets/38_gridtilebar_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/38_gridtilebar_widget.dart';

// Demo registry entry
WidgetDemo('GridTileBar', const GridTileBarWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class GridTileBarWidgetExample extends StatelessWidget {
  const GridTileBarWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridTileBar Widget Example'),
      ),
      body: Center(
        child: GridTileBar(title: Text('Title'), subtitle: Text('Sub')),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `GridTileBar` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/38_gridtilebar_widget.dart';

MaterialApp(
  home: const GridTileBarWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when content works better in multiple columns.
- Ask-back answer: choose `GridTileBar` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 39. GridView
- Category: Grid
- Mini-app folder reference: `widgets_examples/39_widget_gridview`
- Single-app file: `lib/widgets/39_gridview_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/39_gridview_widget.dart';

// Demo registry entry
WidgetDemo('GridView', const GridViewWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class GridViewWidgetExample extends StatelessWidget {
  const GridViewWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Widget Example'),
      ),
      body: Center(
        child: GridView.count(crossAxisCount: 2, children: cards),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `GridView` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/39_gridview_widget.dart';

MaterialApp(
  home: const GridViewWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when content works better in multiple columns.
- Ask-back answer: choose `GridView` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 40. Wrap
- Category: Layout
- Mini-app folder reference: `widgets_examples/40_widget_wrap`
- Single-app file: `lib/widgets/40_wrap_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/40_wrap_widget.dart';

// Demo registry entry
WidgetDemo('Wrap', const WrapWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class WrapWidgetExample extends StatelessWidget {
  const WrapWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Widget Example'),
      ),
      body: Center(
        child: Wrap(spacing: 8, runSpacing: 8, children: chips),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Wrap` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/40_wrap_widget.dart';

MaterialApp(
  home: const WrapWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Wrap` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 41. Stack
- Category: Layout
- Mini-app folder reference: `widgets_examples/41_widget_stack`
- Single-app file: `lib/widgets/41_stack_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/41_stack_widget.dart';

// Demo registry entry
WidgetDemo('Stack', const StackWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class StackWidgetExample extends StatelessWidget {
  const StackWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget Example'),
      ),
      body: Center(
        child: Stack(children: [background, overlay]),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Stack` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/41_stack_widget.dart';

MaterialApp(
  home: const StackWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Stack` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 42. Positioned
- Category: Layout
- Mini-app folder reference: `widgets_examples/42_widget_positioned`
- Single-app file: `lib/widgets/42_positioned_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/42_positioned_widget.dart';

// Demo registry entry
WidgetDemo('Positioned', const PositionedWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class PositionedWidgetExample extends StatelessWidget {
  const PositionedWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned Widget Example'),
      ),
      body: Center(
        child: Positioned(top: 8, right: 8, child: Icon(Icons.star)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Positioned` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/42_positioned_widget.dart';

MaterialApp(
  home: const PositionedWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when positioning, spacing, and responsive arrangement are the priority.
- Ask-back answer: choose `Positioned` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 43. ReorderableListView
- Category: Lists
- Mini-app folder reference: `widgets_examples/43_widget_reorderablelistview`
- Single-app file: `lib/widgets/43_reorderablelistview_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/43_reorderablelistview_widget.dart';

// Demo registry entry
WidgetDemo('ReorderableListView', const ReorderableListViewWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class ReorderableListViewWidgetExample extends StatelessWidget {
  const ReorderableListViewWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReorderableListView Widget Example'),
      ),
      body: Center(
        child: ReorderableListView(onReorder: onReorder, children: tiles),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `ReorderableListView` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/43_reorderablelistview_widget.dart';

MaterialApp(
  home: const ReorderableListViewWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when rendering repeated structured data rows.
- Ask-back answer: choose `ReorderableListView` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 44. Navigator
- Category: Navigation
- Mini-app folder reference: `widgets_examples/44_widget_navigator`
- Single-app file: `lib/widgets/44_navigator_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/44_navigator_widget.dart';

// Demo registry entry
WidgetDemo('Navigator', const NavigatorWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class NavigatorWidgetExample extends StatelessWidget {
  const NavigatorWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator Widget Example'),
      ),
      body: Center(
        child: Navigator.push(context, MaterialPageRoute(builder: (_) => NextScreen())),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Navigator` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/44_navigator_widget.dart';

MaterialApp(
  home: const NavigatorWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user flow moves between screens, sections, or menus.
- Ask-back answer: choose `Navigator` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 45. AlertDialog
- Category: Navigation
- Mini-app folder reference: `widgets_examples/45_widget_alertdialog`
- Single-app file: `lib/widgets/45_alertdialog_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/45_alertdialog_widget.dart';

// Demo registry entry
WidgetDemo('AlertDialog', const AlertDialogWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class AlertDialogWidgetExample extends StatelessWidget {
  const AlertDialogWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog Widget Example'),
      ),
      body: Center(
        child: showDialog(context: context, builder: (_) => AlertDialog(...)),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `AlertDialog` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/45_alertdialog_widget.dart';

MaterialApp(
  home: const AlertDialogWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user flow moves between screens, sections, or menus.
- Ask-back answer: choose `AlertDialog` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 46. SnackBar
- Category: Feedback
- Mini-app folder reference: `widgets_examples/46_widget_snackbar`
- Single-app file: `lib/widgets/46_snackbar_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/46_snackbar_widget.dart';

// Demo registry entry
WidgetDemo('SnackBar', const SnackBarWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class SnackBarWidgetExample extends StatelessWidget {
  const SnackBarWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Widget Example'),
      ),
      body: Center(
        child: ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Saved'))),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `SnackBar` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/46_snackbar_widget.dart';

MaterialApp(
  home: const SnackBarWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when communicating status, hints, or short confirmations.
- Ask-back answer: choose `SnackBar` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 47. PopupMenuButton
- Category: Navigation
- Mini-app folder reference: `widgets_examples/47_widget_popupmenubutton`
- Single-app file: `lib/widgets/47_popupmenubutton_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/47_popupmenubutton_widget.dart';

// Demo registry entry
WidgetDemo('PopupMenuButton', const PopupMenuButtonWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class PopupMenuButtonWidgetExample extends StatelessWidget {
  const PopupMenuButtonWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenuButton Widget Example'),
      ),
      body: Center(
        child: PopupMenuButton<String>(itemBuilder: (context) => menuItems),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `PopupMenuButton` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/47_popupmenubutton_widget.dart';

MaterialApp(
  home: const PopupMenuButtonWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user flow moves between screens, sections, or menus.
- Ask-back answer: choose `PopupMenuButton` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 48. Drawer
- Category: Navigation
- Mini-app folder reference: `widgets_examples/48_widget_drawer`
- Single-app file: `lib/widgets/48_drawer_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/48_drawer_widget.dart';

// Demo registry entry
WidgetDemo('Drawer', const DrawerWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class DrawerWidgetExample extends StatelessWidget {
  const DrawerWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Widget Example'),
      ),
      body: Center(
        child: Scaffold(drawer: Drawer(child: ListView(children: [...]))),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `Drawer` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/48_drawer_widget.dart';

MaterialApp(
  home: const DrawerWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user flow moves between screens, sections, or menus.
- Ask-back answer: choose `Drawer` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 49. BottomNavigationBar
- Category: Navigation
- Mini-app folder reference: `widgets_examples/49_widget_bottomnavigationbar`
- Single-app file: `lib/widgets/49_bottomnavigationbar_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/49_bottomnavigationbar_widget.dart';

// Demo registry entry
WidgetDemo('BottomNavigationBar', const BottomNavigationBarWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class BottomNavigationBarWidgetExample extends StatelessWidget {
  const BottomNavigationBarWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Widget Example'),
      ),
      body: Center(
        child: BottomNavigationBar(currentIndex: index, onTap: onTap, items: items),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `BottomNavigationBar` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/49_bottomnavigationbar_widget.dart';

MaterialApp(
  home: const BottomNavigationBarWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user flow moves between screens, sections, or menus.
- Ask-back answer: choose `BottomNavigationBar` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## 50. TabBar
- Category: Navigation
- Mini-app folder reference: `widgets_examples/50_widget_tabbar`
- Single-app file: `lib/widgets/50_tabbar_widget.dart`
- Root connection: imported by `lib/main.dart` and mapped in demo list.

### Integration Code in main.dart
```dart
import 'widgets/50_tabbar_widget.dart';

// Demo registry entry
WidgetDemo('TabBar', const TabBarWidgetExample()),

// Navigation on list tile tap
onTap: () {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) => demo.screen),
  );
},
```

### Integration Explanation (Line-by-Line)
1. Import line makes this widget screen class available in `main.dart`.
2. `WidgetDemo` binds a readable title to a screen constructor.
3. The `onTap` callback runs when user selects the list item.
4. `Navigator.of(context).push` places new page on stack.
5. `MaterialPageRoute` lazily builds the selected widget page.
6. `demo.screen` keeps the launcher generic for all 50 topics.

### File-Level Code Pattern
```dart
import 'package:flutter/material.dart';

class TabBarWidgetExample extends StatelessWidget {
  const TabBarWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Widget Example'),
      ),
      body: Center(
        child: DefaultTabController(length: 3, child: Column(children: [TabBar(...), TabBarView(...)])),
      ),
    );
  }
}
```

### File-Level Explanation (Line-by-Line)
1. `material.dart` import unlocks scaffold, app bar, and core widgets.
2. Class declaration creates one dedicated demo screen.
3. `const` constructor improves rebuild efficiency where possible.
4. `build` method returns immutable UI structure for this topic.
5. `Scaffold` gives predictable full-page frame for demonstration.
6. `AppBar` title helps evaluators know exact current widget.
7. `Center` ensures the visual focus remains on target widget.
8. Child expression demonstrates representative usage and key properties.
9. Closing braces complete and return a valid routeable screen widget.

### Workflow: How to Check This Widget
1. Launch combined app from `flutter-50-widgets-learning`.
2. Tap `TabBar` from home list.
3. Verify AppBar title and on-screen behavior.
4. Open file in editor and map output with code lines.
5. Change one property, hot reload, and explain output difference.
6. Restore original value and continue to next widget.

### One-File Viva Mode
```dart
import 'widgets/50_tabbar_widget.dart';

MaterialApp(
  home: const TabBarWidgetExample(),
)
```

### Viva Notes
- What it solves: Use this when user flow moves between screens, sections, or menus.
- Ask-back answer: choose `TabBar` when its behavior is directly needed, not as workaround.
- Explain one property, one runtime behavior, one practical use-case.
- Mention one common mistake and how this file avoids it.

### Quality Checklist
- File exists in `lib/widgets` with expected naming.
- Class is stateless and route-friendly.
- AppBar title is clear and topic-specific.
- Demo is educational and visibly testable.
- Navigation opens and returns correctly.

## Final Validation Commands
```bash
cd flutter-50-widgets-learning
flutter pub get
flutter analyze
flutter run
```

## Final Notes
- This guide keeps sections consistent but less repetitive in wording and intent.
- It connects architecture, code, runtime flow, and viva explanation in one place.