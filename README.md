# Flutter Basic Widgets Lab - Complete Detailed Guide

## 1. Project Purpose

This repository is a complete Flutter learning lab for 50 important widgets.

It follows two educational approaches:

1. One combined Flutter app containing 50 widget demo files.
2. Fifty separate mini Flutter apps (one widget per app).

This dual approach helps in both quick revision and deep isolated practice.

The project is intentionally educational.

Each demo focuses on practical properties and usage patterns.

Each screen is intentionally simple so behavior is easy to observe.

The main goals are:

- Learn Flutter UI building blocks.
- Understand layout and spacing systems.
- Practice user input and form widgets.
- Practice scrolling and collection widgets.
- Practice dialogs, menus, and navigation.

---

## 2. Repository Learning Modes

### Mode A: Single Combined App

Folder: `flutter-50-widgets-learning`

In this mode, one app contains all 50 demos in `lib/widgets`.

`main.dart` provides a list and routes to each demo.

This is best for:

- Fast revision before viva or exam.
- Live demonstration in class.
- Quick comparison between widgets.

### Mode B: Separate Mini Apps

Folder: `widgets_examples`

In this mode, every widget has its own independent Flutter project.

This is best for:

- Isolated understanding of one widget.
- Independent build/run per widget.
- Assignment checking where each folder is evaluated separately.

---

## 3. High-Level Repository Structure

```text
flutter-basic-widgets-lab/
|
|-- README.md
|-- docs/
|   |-- All_50_Widgets_Guide.md
|
|-- flutter-50-widgets-learning/
|   |-- lib/
|   |   |-- main.dart
|   |   |-- widgets/
|   |       |-- 01_text_widget.dart
|   |       |-- 02_icon_widget.dart
|   |       |-- 03_image_widget.dart
|   |       |-- ...
|   |       |-- 50_tabbar_widget.dart
|
|-- widgets_examples/
		|-- 01_widget_text/
		|-- 02_widget_icon/
		|-- 03_widget_image/
		|-- ...
		|-- 50_widget_tabbar/
```

---

## 4. Prerequisites

Before running this repository, install:

1. Flutter SDK (stable channel)
2. Dart SDK (comes with Flutter)
3. Android Studio or VS Code
4. Android emulator or physical Android device
5. Git (for version control)

Recommended checks:

```bash
flutter --version
dart --version
flutter doctor
```

`flutter doctor` should be mostly green before execution.

---

## 5. Quick Start (Single Combined App)

### Step 1: Move to project

```bash
cd flutter-50-widgets-learning
```

### Step 2: Install dependencies

```bash
flutter pub get
```

### Step 3: Run app

```bash
flutter run
```

### Step 4: Browse widgets

- Open list on home screen.
- Tap any widget name.
- Observe behavior and key properties.

---

## 6. Quick Start (Separate 50 Apps)

To run any single widget project from `widgets_examples`:

```bash
cd widgets_examples/12_widget_elevatedbutton
flutter pub get
flutter run
```

Replace folder name to run any other widget app.

---

## 7. How to Check One File One-by-One in Combined App

This method is useful when professor asks direct file-level checking.

### Step-by-step process

1. Open `flutter-50-widgets-learning/lib/main.dart`.
2. Keep one widget import only (for example `12_elevatedbutton_widget.dart`).
3. Set that widget as home screen.
4. Run the app again.
5. Show widget behavior and properties.

### Example import

```dart
import 'widgets/12_elevatedbutton_widget.dart';
```

### Example home mapping

```dart
home: const ElevatedbuttonWidgetExample(),
```

### Why this is useful

- Isolates one screen for clear demonstration.
- Makes evaluation easy during assignment checking.
- Helps debugging one widget quickly.

---

## 8. Design Pattern Used in Each Widget File

Most widget files follow this educational template:

1. `StatelessWidget` class
2. `Scaffold`
3. `AppBar` with widget title
4. Focused `body` demo
5. Comments explaining important properties

This keeps examples consistent and readable.

---

## 9. Complete 50 Widgets Master Table

| # | Widget | File Name | Category | Key Properties Demonstrated | Expected Learning Outcome |
|---|---|---|---|---|---|
| 01 | Text | `01_text_widget.dart` | Display | `style`, `maxLines`, `overflow`, `textAlign` | Rich text styling basics |
| 02 | Icon | `02_icon_widget.dart` | Display | `size`, `color`, `semanticLabel` | Icon rendering and semantics |
| 03 | Image | `03_image_widget.dart` | Display | `Image.network`, `fit`, `width`, `height` | Network image sizing and fit |
| 04 | Center | `04_center_widget.dart` | Layout | child centering | Basic alignment in parent |
| 05 | Padding | `05_padding_widget.dart` | Layout | `EdgeInsets` values | Inner and outer spacing concepts |
| 06 | Align | `06_align_widget.dart` | Layout | `alignment` | Position child within bounds |
| 07 | SizedBox | `07_sizedbox_widget.dart` | Layout | `width`, `height` | Fixed spacing and dimension control |
| 08 | Container | `08_container_widget.dart` | Layout/Style | `padding`, `margin`, `decoration`, `borderRadius`, `boxShadow` | Composite styling widget |
| 09 | Expanded | `09_expanded_widget.dart` | Flex Layout | `flex` | Distribute free space in `Row/Column` |
| 10 | Flexible | `10_flexible_widget.dart` | Flex Layout | `fit`, `FlexFit.tight`, `FlexFit.loose` | Flexible sizing behavior |
| 11 | TextButton | `11_textbutton_widget.dart` | Button | `onPressed`, button style | Text-based actions |
| 12 | ElevatedButton | `12_elevatedbutton_widget.dart` | Button | `ElevatedButton.icon`, colors, padding, elevation | Primary CTA button pattern |
| 13 | IconButton | `13_iconbutton_widget.dart` | Button | `icon`, `iconSize`, `tooltip` | Action icon interactions |
| 14 | FloatingActionButton | `14_floatingactionbutton_widget.dart` | Button | `floatingActionButton`, `tooltip` | Floating action affordance |
| 15 | CircularProgressIndicator | `15_circularprogress_widget.dart` | Feedback | `strokeWidth`, `color`, indeterminate state | Loading visualization |
| 16 | LinearProgressIndicator | `16_linearprogress_widget.dart` | Feedback | `value`, `minHeight`, `borderRadius` | Linear progress display |
| 17 | Tooltip | `17_tooltip_widget.dart` | Feedback | `message`, `waitDuration`, `showDuration` | Context hints and accessibility |
| 18 | Spacer | `18_spacer_widget.dart` | Flex Layout | `Spacer(flex: ...)` | Dynamic spacing in flex layouts |
| 19 | SelectableText | `19_selectabletext_widget.dart` | Text | selectable content | Copyable/interactive text |
| 20 | Card | `20_card_widget.dart` | Material | `elevation`, `shape`, `margin` | Material card container usage |
| 21 | TextField | `21_textfield_widget.dart` | Input | `decoration`, `keyboardType`, `onChanged` | Basic user text input |
| 22 | TextFormField | `22_textformfield_widget.dart` | Input/Form | `validator`, `autovalidateMode` | Form validation flow |
| 23 | Checkbox | `23_checkbox_widget.dart` | Input | `value`, `onChanged`, colors | Boolean selection control |
| 24 | Radio | `24_radio_widget.dart` | Input | option selection | Single-choice selection |
| 25 | Switch | `25_switch_widget.dart` | Input | toggle state | On/off state control |
| 26 | Slider | `26_slider_widget.dart` | Input | `min`, `max`, `divisions`, `label` | Range value selection |
| 27 | DropdownButton | `27_dropdownbutton_widget.dart` | Input | items mapping, `onChanged` | Selection from list |
| 28 | DatePicker | `28_datepicker_widget.dart` | Input/Dialog | `showDatePicker` | Date selection dialog |
| 29 | TimePicker | `29_timepicker_widget.dart` | Input/Dialog | `showTimePicker` | Time selection dialog |
| 30 | DateRangePicker | `30_daterangepicker_widget.dart` | Input/Dialog | `showDateRangePicker` | Date range selection |
| 31 | SingleChildScrollView | `31_singlechildscrollview_widget.dart` | Scrolling | wrapped content scrolling | Scroll one large child |
| 32 | ListTile | `32_listtile_widget.dart` | List | `leading`, `title`, `subtitle`, `trailing` | Standard list row pattern |
| 33 | CheckboxListTile | `33_checkboxlisttile_widget.dart` | List/Input | combined tile + checkbox | Compact setting-row patterns |
| 34 | RadioListTile | `34_radiolisttile_widget.dart` | List/Input | combined tile + radio | Choice list UI |
| 35 | ListView | `35_listview_widget.dart` | List | static children | Basic scrollable list |
| 36 | ListView.builder | `36_listviewbuilder_widget.dart` | List | lazy `itemBuilder` | Efficient dynamic lists |
| 37 | GridTile | `37_gridtile_widget.dart` | Grid | `header`, `footer`, child | Grid tile framing |
| 38 | GridTileBar | `38_gridtilebar_widget.dart` | Grid | title/subtitle/trailing overlay | Media/grid captioning |
| 39 | GridView | `39_gridview_widget.dart` | Grid | grid delegate, spacing | Multi-column scroll layout |
| 40 | Wrap | `40_wrap_widget.dart` | Layout | `spacing`, `runSpacing`, `alignment` | Responsive line wrapping |
| 41 | Stack | `41_stack_widget.dart` | Layout | layered children | Overlapping UI composition |
| 42 | Positioned | `42_positioned_widget.dart` | Layout | `top`, `left`, `bottom`, `right` | Absolute placement in `Stack` |
| 43 | ReorderableListView | `43_reorderablelistview_widget.dart` | List/Interaction | drag reorder callback | Reorderable lists |
| 44 | Navigator | `44_navigator_widget.dart` | Navigation | `Navigator.push`, route transitions | Multi-screen navigation |
| 45 | AlertDialog | `45_alertdialog_widget.dart` | Dialog | title/content/actions | Confirmation dialogs |
| 46 | SnackBar | `46_snackbar_widget.dart` | Feedback | message, duration, action | Temporary notifications |
| 47 | PopupMenuButton | `47_popupmenubutton_widget.dart` | Menu | `itemBuilder`, `onSelected` | Contextual actions |
| 48 | Drawer | `48_drawer_widget.dart` | Navigation | `Drawer`, `DrawerHeader`, `ListTile` | Side navigation panel |
| 49 | BottomNavigationBar | `49_bottomnavigationbar_widget.dart` | Navigation | tabs, `currentIndex`, `onTap` | Bottom tab navigation |
| 50 | TabBar | `50_tabbar_widget.dart` | Navigation | `DefaultTabController`, `TabBar`, `TabBarView` | Swipe/tab interface basics |

---

## 10. Detailed Notes for Every Widget

### 01) Text Widget

File: `01_text_widget.dart`

Primary focus is typography control.

Shows custom `TextStyle` with size and weight.

Uses `maxLines` and `overflow` for safe UI in limited width.

Uses `textAlign` for center alignment.

Use case: headings, labels, banners, captions.

### 02) Icon Widget

File: `02_icon_widget.dart`

Primary focus is icon rendering.

Demonstrates icon size customization.

Demonstrates icon color and visual emphasis.

Includes semantic label concept for accessibility.

Use case: compact visual actions and indicators.

### 03) Image Widget

File: `03_image_widget.dart`

Primary focus is image rendering from network.

Uses fixed width and height for predictable layout.

Uses `BoxFit.cover` for visual crop behavior.

Uses rounded corners for polished card-style media.

Use case: profile headers, banners, product cards.

### 04) Center Widget

File: `04_center_widget.dart`

Primary focus is center alignment in available space.

Shows how parent bounds affect child position.

Useful as first wrapper when creating demos.

Minimal but foundational alignment concept.

Use case: empty states, focused content blocks.

### 05) Padding Widget

File: `05_padding_widget.dart`

Primary focus is internal spacing around child.

Uses symmetric and all-direction edge insets.

Illustrates readability improvement via spacing.

Prevents cramped UI and text collisions.

Use case: form sections, card content spacing.

### 06) Align Widget

File: `06_align_widget.dart`

Primary focus is directional child placement.

Demonstrates bottom-right alignment.

Useful when full `Stack` is unnecessary.

Simple way to pin one child in parent area.

Use case: badges, corner status labels.

### 07) SizedBox Widget

File: `07_sizedbox_widget.dart`

Primary focus is fixed width/height gaps.

Used as vertical and horizontal separator.

Used as fixed-size box wrapper.

Very common in `Column` and `Row` layouts.

Use case: spacing rhythm and hard dimensions.

### 08) Container Widget

File: `08_container_widget.dart`

Primary focus is all-in-one box styling.

Shows `margin`, `padding`, and `alignment`.

Shows `decoration` with border, radius, and shadow.

Good demonstration of visual block composition.

Use case: cards, profile blocks, custom panels.

### 09) Expanded Widget

File: `09_expanded_widget.dart`

Primary focus is flexible space filling in `Row`/`Column`.

Uses `flex` to define proportional widths.

Forces child to occupy remaining space.

Essential for responsive flex-based UIs.

Use case: split layouts and adaptive rows.

### 10) Flexible Widget

File: `10_flexible_widget.dart`

Primary focus is flexible sizing with optional loose fit.

Compares `FlexFit.tight` and `FlexFit.loose`.

Gives child flexibility without strict expansion.

Useful when some children should keep natural size.

Use case: mixed content rows.

### 11) TextButton Widget

File: `11_textbutton_widget.dart`

Primary focus is lightweight tappable action.

Uses `onPressed` with user feedback.

Shows style customization through `styleFrom`.

Best for secondary actions.

Use case: cancel, skip, text-only CTA.

### 12) ElevatedButton Widget

File: `12_elevatedbutton_widget.dart`

Primary focus is prominent material button.

Demonstrates icon + label variant.

Shows background/foreground colors and elevation.

Shows custom padding for touch target comfort.

Use case: primary submit/action buttons.

### 13) IconButton Widget

File: `13_iconbutton_widget.dart`

Primary focus is icon-only interactive button.

Shows tooltip for discoverability.

Shows custom icon size and color.

Good for app bar and compact actions.

Use case: favorite, share, refresh, edit.

### 14) FloatingActionButton Widget

File: `14_floatingactionbutton_widget.dart`

Primary focus is floating primary action.

Configured through `Scaffold.floatingActionButton`.

Shows icon-based creation action.

Includes tooltip and click feedback.

Use case: add note, compose, create item.

### 15) CircularProgressIndicator Widget

File: `15_circularprogress_widget.dart`

Primary focus is circular loading state.

Shows indeterminate loading behavior.

Demonstrates active and background colors.

Demonstrates stroke thickness control.

Use case: waiting for async data.

### 16) LinearProgressIndicator Widget

File: `16_linearprogress_widget.dart`

Primary focus is linear progress tracking.

Uses determinate `value` mode.

Shows min height and rounded shape.

Good for upload/download/task progress.

Use case: multi-step workflow progress bar.

### 17) Tooltip Widget

File: `17_tooltip_widget.dart`

Primary focus is hover/long-press guidance.

Shows `message`, wait, and show duration.

Improves discoverability of icon actions.

Useful for compact interfaces.

Use case: icon-only action hints.

### 18) Spacer Widget

File: `18_spacer_widget.dart`

Primary focus is proportional empty space.

Only works inside `Row`/`Column`/Flex layouts.

`flex` changes spacing distribution.

Cleaner than many fixed `SizedBox` values.

Use case: evenly spread toolbar elements.

### 19) SelectableText Widget

File: `19_selectabletext_widget.dart`

Primary focus is copyable text content.

Allows long-press selection by user.

Useful for IDs, emails, logs, and notes.

Can still apply normal text styling.

Use case: shareable technical information.

### 20) Card Widget

File: `20_card_widget.dart`

Primary focus is Material card container.

Shows elevation for depth.

Shows rounded shape with `RoundedRectangleBorder`.

Demonstrates common card content composition.

Use case: profile cards and list summaries.

### 21) TextField Widget

File: `21_textfield_widget.dart`

Primary focus is plain user input field.

Uses `InputDecoration` with label and hint.

Uses prefix icon and keyboard type.

Can react to `onChanged` for live input.

Use case: search bars and free text inputs.

### 22) TextFormField Widget

File: `22_textformfield_widget.dart`

Primary focus is validated form input.

Uses validator callback.

Uses auto-validation on user interaction.

Better for form screens than basic `TextField`.

Use case: email/password form validation.

### 23) Checkbox Widget

File: `23_checkbox_widget.dart`

Primary focus is true/false option control.

Shows checked value and state update flow.

Visual customization through active/check colors.

Suitable for permissions and preferences.

Use case: accept terms and settings toggles.

### 24) Radio Widget

File: `24_radio_widget.dart`

Primary focus is one option from many.

Demonstrates grouped selection behavior.

Shows how selected option is maintained.

Useful where only one choice is valid.

Use case: payment mode, theme choice.

### 25) Switch Widget

File: `25_switch_widget.dart`

Primary focus is binary on/off interaction.

Shows direct toggle state updates.

Common in settings pages.

Simple and intuitive touch control.

Use case: enable notifications, dark mode.

### 26) Slider Widget

File: `26_slider_widget.dart`

Primary focus is continuous/discrete range value.

Uses min/max and divisions.

Displays selected value as label/text.

Useful for quick numeric adjustments.

Use case: volume, brightness, filters.

### 27) DropdownButton Widget

File: `27_dropdownbutton_widget.dart`

Primary focus is selection from list menu.

Builds menu items from array data.

Updates selection with `onChanged`.

Compact alternative to radio groups.

Use case: category selector.

### 28) DatePicker Widget

File: `28_datepicker_widget.dart`

Primary focus is date dialog interaction.

Uses `showDatePicker` async call.

Sets first and last selectable dates.

Displays selected date in feedback message.

Use case: DOB, scheduling forms.

### 29) TimePicker Widget

File: `29_timepicker_widget.dart`

Primary focus is time selection dialog.

Uses `showTimePicker` with current default.

Returns `TimeOfDay` result.

Converts to formatted text for users.

Use case: alarms and appointment time.

### 30) DateRangePicker Widget

File: `30_daterangepicker_widget.dart`

Primary focus is selecting start and end date.

Uses `showDateRangePicker`.

Reads and displays both range endpoints.

Very useful for reports and bookings.

Use case: travel period and analytics filters.

### 31) SingleChildScrollView Widget

File: `31_singlechildscrollview_widget.dart`

Primary focus is making one large child scrollable.

Wraps long `Column` safely.

Prevents overflow on small screens.

Simple solution for static long pages.

Use case: terms pages and static forms.

### 32) ListTile Widget

File: `32_listtile_widget.dart`

Primary focus is standard row layout.

Uses `leading`, `title`, `subtitle`, `trailing`.

Consistent look for list entries.

Works well inside `ListView`.

Use case: contacts and settings rows.

### 33) CheckboxListTile Widget

File: `33_checkboxlisttile_widget.dart`

Primary focus is merged tile + checkbox.

Reduces code compared to manual row layout.

Supports subtitle and secondary icon.

Ideal for settings toggles in lists.

Use case: notification preferences list.

### 34) RadioListTile Widget

File: `34_radiolisttile_widget.dart`

Primary focus is merged tile + radio option.

Good for option groups with description text.

Keeps alignment and touch targets consistent.

Less boilerplate than custom row with radio.

Use case: language/theme selection list.

### 35) ListView Widget

File: `35_listview_widget.dart`

Primary focus is simple scrolling list of children.

Best when item count is small and static.

Easy for prototypes and fixed menus.

No builder callback required.

Use case: static menu page.

### 36) ListView.builder Widget

File: `36_listviewbuilder_widget.dart`

Primary focus is lazy list creation.

Efficient for large or dynamic datasets.

Generates items only when needed.

Preferred for API-backed list screens.

Use case: chat lists and feed pages.

### 37) GridTile Widget

File: `37_gridtile_widget.dart`

Primary focus is tile with header/footer overlay.

Useful in image or dashboard grids.

Supports structured metadata around a tile.

Works naturally inside `GridView`.

Use case: product/photo tile with labels.

### 38) GridTileBar Widget

File: `38_gridtilebar_widget.dart`

Primary focus is compact title/subtitle overlay bar.

Usually placed in `GridTile.footer`.

Includes optional trailing action icon.

Useful for media previews.

Use case: gallery item caption bar.

### 39) GridView Widget

File: `39_gridview_widget.dart`

Primary focus is multi-column scroll layout.

Demonstrates grid delegate spacing values.

Good for uniform card collections.

Highly common for dashboards and galleries.

Use case: product catalogs and icon grids.

### 40) Wrap Widget

File: `40_wrap_widget.dart`

Primary focus is auto line wrapping layout.

Uses `spacing` and `runSpacing`.

Adapts naturally to narrow screens.

Alternative to horizontal overflow rows.

Use case: tags, chips, filters.

### 41) Stack Widget

File: `41_stack_widget.dart`

Primary focus is layered UI composition.

Children render on top of each other.

Supports central alignment or custom positioning.

Great for overlays and badges.

Use case: profile image with online indicator.

### 42) Positioned Widget

File: `42_positioned_widget.dart`

Primary focus is absolute positioning inside stack.

Uses `top`, `left`, `right`, `bottom`.

Allows precise placement of children.

Must be used as `Stack` child.

Use case: corner labels and action badges.

### 43) ReorderableListView Widget

File: `43_reorderablelistview_widget.dart`

Primary focus is drag-and-drop ordering.

Each item needs stable key.

`onReorder` callback updates order model.

Useful for user-managed ranking.

Use case: playlist/task priority ordering.

### 44) Navigator Widget

File: `44_navigator_widget.dart`

Primary focus is route-based page navigation.

Uses `Navigator.push` with `MaterialPageRoute`.

Introduces multi-screen app flow.

Core concept for Flutter app architecture.

Use case: details screen navigation.

### 45) AlertDialog Widget

File: `45_alertdialog_widget.dart`

Primary focus is modal confirmation UI.

Uses title, content, and action buttons.

Opened via `showDialog`.

Closed with `Navigator.pop`.

Use case: delete confirmation prompts.

### 46) SnackBar Widget

File: `46_snackbar_widget.dart`

Primary focus is temporary bottom feedback.

Shown via `ScaffoldMessenger`.

Supports action button and duration.

Non-blocking user notifications.

Use case: save success and undo action.

### 47) PopupMenuButton Widget

File: `47_popupmenubutton_widget.dart`

Primary focus is context menu actions.

Menu items built through `itemBuilder`.

Selection returned in `onSelected`.

Compact alternative to many visible buttons.

Use case: edit/share/delete menu.

### 48) Drawer Widget

File: `48_drawer_widget.dart`

Primary focus is side navigation panel.

Configured using `Scaffold.drawer`.

Includes `DrawerHeader` and list actions.

Common in dashboard-style apps.

Use case: app-wide navigation links.

### 49) BottomNavigationBar Widget

File: `49_bottomnavigationbar_widget.dart`

Primary focus is top-level tab switching.

Uses `currentIndex` and `onTap`.

Ideal for 3-5 main app sections.

Appears at bottom for thumb reach.

Use case: home/search/profile navigation.

### 50) TabBar Widget

File: `50_tabbar_widget.dart`

Primary focus is tabbed views in same screen.

Requires `DefaultTabController`.

Connects `TabBar` to `TabBarView`.

Supports swipe and tap navigation.

Use case: categorized content screens.

---

## 11. Widget Categories and What to Emphasize in Viva

### A) Display Widgets

Includes: Text, Icon, Image, SelectableText, Card.

Emphasize typography, semantics, and visual hierarchy.

### B) Layout Widgets

Includes: Center, Padding, Align, SizedBox, Container, Expanded, Flexible, Spacer, Wrap, Stack, Positioned.

Emphasize spacing logic, alignment, and responsive behavior.

### C) Input Widgets

Includes: TextField, TextFormField, Checkbox, Radio, Switch, Slider, Dropdown, date/time pickers.

Emphasize state change and validation.

### D) Collection Widgets

Includes: ListTile family, ListView family, Grid family, ReorderableListView.

Emphasize builder efficiency and scalable UI patterns.

### E) Navigation and Feedback Widgets

Includes: Navigator, Dialog, SnackBar, PopupMenu, Drawer, BottomNavigationBar, TabBar.

Emphasize app flow and user communication.

---

## 12. Quick Commands Reference

```bash
# Combined app
cd flutter-50-widgets-learning
flutter pub get
flutter run

# Analyze and test
flutter analyze
flutter test

# Run any separate app (example)
cd ../widgets_examples/24_widget_radio
flutter pub get
flutter run
```

## 13. Final Summary

This repository is a complete Flutter widget learning portfolio with both:

- one combined app containing 50 widget demo files
- 50 separate mini apps for isolated widget practice

All required widgets are implemented, documented, and organized for easy evaluation.
