import 'package:flutter/material.dart';
import 'widgets/01_text_widget.dart';
import 'widgets/02_icon_widget.dart';
import 'widgets/03_image_widget.dart';
import 'widgets/04_center_widget.dart';
import 'widgets/05_padding_widget.dart';
import 'widgets/06_align_widget.dart';
import 'widgets/07_sizedbox_widget.dart';
import 'widgets/08_container_widget.dart';
import 'widgets/09_expanded_widget.dart';
import 'widgets/10_flexible_widget.dart';
import 'widgets/11_textbutton_widget.dart';
import 'widgets/12_elevatedbutton_widget.dart';
import 'widgets/13_iconbutton_widget.dart';
import 'widgets/14_floatingactionbutton_widget.dart';
import 'widgets/15_circularprogress_widget.dart';
import 'widgets/16_linearprogress_widget.dart';
import 'widgets/17_tooltip_widget.dart';
import 'widgets/18_spacer_widget.dart';
import 'widgets/19_selectabletext_widget.dart';
import 'widgets/20_card_widget.dart';
import 'widgets/21_textfield_widget.dart';
import 'widgets/22_textformfield_widget.dart';
import 'widgets/23_checkbox_widget.dart';
import 'widgets/24_radio_widget.dart';
import 'widgets/25_switch_widget.dart';
import 'widgets/26_slider_widget.dart';
import 'widgets/27_dropdownbutton_widget.dart';
import 'widgets/28_datepicker_widget.dart';
import 'widgets/29_timepicker_widget.dart';
import 'widgets/30_daterangepicker_widget.dart';
import 'widgets/31_singlechildscrollview_widget.dart';
import 'widgets/32_listtile_widget.dart';
import 'widgets/33_checkboxlisttile_widget.dart';
import 'widgets/34_radiolisttile_widget.dart';
import 'widgets/35_listview_widget.dart';
import 'widgets/36_listviewbuilder_widget.dart';
import 'widgets/37_gridtile_widget.dart';
import 'widgets/38_gridtilebar_widget.dart';
import 'widgets/39_gridview_widget.dart';
import 'widgets/40_wrap_widget.dart';
import 'widgets/41_stack_widget.dart';
import 'widgets/42_positioned_widget.dart';
import 'widgets/43_reorderablelistview_widget.dart';
import 'widgets/44_navigator_widget.dart';
import 'widgets/45_alertdialog_widget.dart';
import 'widgets/46_snackbar_widget.dart';
import 'widgets/47_popupmenubutton_widget.dart';
import 'widgets/48_drawer_widget.dart';
import 'widgets/49_bottomnavigationbar_widget.dart';
import 'widgets/50_tabbar_widget.dart';

void main() {
  runApp(const FlutterWidgetsLearningApp());
}

class FlutterWidgetsLearningApp extends StatelessWidget {
  const FlutterWidgetsLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 50 Widgets Learning',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const WidgetsHomePage(),
    );
  }
}

class WidgetsHomePage extends StatelessWidget {
  const WidgetsHomePage({super.key});

  static final List<WidgetDemo> demos = [
    WidgetDemo('Text Widget', const TextWidgetExample()),
    WidgetDemo('Icon Widget', const IconWidgetExample()),
    WidgetDemo('Image Widget', const ImageWidgetExample()),
    WidgetDemo('Center Widget', const CenterWidgetExample()),
    WidgetDemo('Padding Widget', const PaddingWidgetExample()),
    WidgetDemo('Align Widget', const AlignWidgetExample()),
    WidgetDemo('Sizedbox Widget', const SizedBoxWidgetExample()),
    WidgetDemo('Container Widget', const ContainerWidgetExample()),
    WidgetDemo('Expanded Widget', const ExpandedWidgetExample()),
    WidgetDemo('Flexible Widget', const FlexibleWidgetExample()),
    WidgetDemo('TextButton Widget', const TextbuttonWidgetExample()),
    WidgetDemo('ElevatedButton Widget', const ElevatedbuttonWidgetExample()),
    WidgetDemo('IconButton Widget', const IconbuttonWidgetExample()),
    WidgetDemo('FloatingActionButton Widget', const FloatingactionbuttonWidgetExample()),
    WidgetDemo('CircularProgress Widget', const CircularprogressWidgetExample()),
    WidgetDemo('LinearProgress Widget', const LinearprogressWidgetExample()),
    WidgetDemo('Tooltip Widget', const TooltipWidgetExample()),
    WidgetDemo('Spacer Widget', const SpacerWidgetExample()),
    WidgetDemo('SelectableText Widget', const SelectabletextWidgetExample()),
    WidgetDemo('Card Widget', const CardWidgetExample()),
    WidgetDemo('TextField Widget', const TextfieldWidgetExample()),
    WidgetDemo('TextFormField Widget', const TextformfieldWidgetExample()),
    WidgetDemo('Checkbox Widget', const CheckboxWidgetExample()),
    WidgetDemo('Radio Widget', const RadioWidgetExample()),
    WidgetDemo('Switch Widget', const SwitchWidgetExample()),
    WidgetDemo('Slider Widget', const SliderWidgetExample()),
    WidgetDemo('DropdownButton Widget', const DropdownbuttonWidgetExample()),
    WidgetDemo('DatePicker Widget', const DatepickerWidgetExample()),
    WidgetDemo('TimePicker Widget', const TimepickerWidgetExample()),
    WidgetDemo('DateRangePicker Widget', const DaterangepickerWidgetExample()),
    WidgetDemo('SingleChildScrollView Widget', const SinglechildscrollviewWidgetExample()),
    WidgetDemo('ListTile Widget', const ListtileWidgetExample()),
    WidgetDemo('CheckboxListTile Widget', const CheckboxlisttileWidgetExample()),
    WidgetDemo('RadioListTile Widget', const RadiolisttileWidgetExample()),
    WidgetDemo('ListView Widget', const ListviewWidgetExample()),
    WidgetDemo('ListView.builder Widget', const ListviewbuilderWidgetExample()),
    WidgetDemo('GridTile Widget', const GridtileWidgetExample()),
    WidgetDemo('GridTileBar Widget', const GridtilebarWidgetExample()),
    WidgetDemo('GridView Widget', const GridviewWidgetExample()),
    WidgetDemo('Wrap Widget', const WrapWidgetExample()),
    WidgetDemo('Stack Widget', const StackWidgetExample()),
    WidgetDemo('Positioned Widget', const PositionedWidgetExample()),
    WidgetDemo('ReorderableListView Widget', const ReorderablelistviewWidgetExample()),
    WidgetDemo('Navigator Widget', const NavigatorWidgetExample()),
    WidgetDemo('AlertDialog Widget', const AlertdialogWidgetExample()),
    WidgetDemo('SnackBar Widget', const SnackbarWidgetExample()),
    WidgetDemo('PopupMenuButton Widget', const PopupmenubuttonWidgetExample()),
    WidgetDemo('Drawer Widget', const DrawerWidgetExample()),
    WidgetDemo('BottomNavigationBar Widget', const BottomnavigationbarWidgetExample()),
    WidgetDemo('TabBar Widget', const TabbarWidgetExample()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 50 Widgets Demos'),
      ),
      body: ListView.separated(
        itemCount: demos.length,
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final demo = demos[index];
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(demo.title),
            subtitle: const Text('Tap to view practical widget example'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => demo.screen),
              );
            },
          );
        },
      ),
    );
  }
}

class WidgetDemo {
  const WidgetDemo(this.title, this.screen);

  final String title;
  final Widget screen;
}
