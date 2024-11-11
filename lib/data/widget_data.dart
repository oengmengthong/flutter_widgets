import '../models/widget_model.dart';
import '../widgets/index.dart';

final List<WidgetModel> widgets = [
  // Layout Widgets
  WidgetModel(
    title: 'Container',
    group: 'Layout Widgets',
    preview: const ContainerPreview(),
    code: containerCode,
  ),
  WidgetModel(
    title: 'Row',
    group: 'Layout Widgets',
    preview: const RowPreview(),
    code: rowCode,
  ),
  WidgetModel(
    title: 'Column',
    group: 'Layout Widgets',
    preview: const ColumnPreview(),
    code: columnCode,
  ),
  // WidgetModel(
  //   title: 'Stack',
  //   group: 'Layout Widgets',
  //   preview: const StackPreview(),
  //   code: stackCode,
  // ),
  // WidgetModel(
  //   title: 'Expanded',
  //   group: 'Layout Widgets',
  //   preview: const ExpandedPreview(),
  //   code: expandedCode,
  // ),
  // WidgetModel(
  //   title: 'Padding',
  //   group: 'Layout Widgets',
  //   preview: const PaddingPreview(),
  //   code: paddingCode,
  // ),
  // WidgetModel(
  //   title: 'Align',
  //   group: 'Layout Widgets',
  //   preview: const AlignPreview(),
  //   code: alignCode,
  // ),
  // WidgetModel(
  //   title: 'Center',
  //   group: 'Layout Widgets',
  //   preview: const CenterPreview(),
  //   code: centerCode,
  // ),
  // WidgetModel(
  //   title: 'SizedBox',
  //   group: 'Layout Widgets',
  //   preview: const SizedBoxPreview(),
  //   code: sizedBoxCode,
  // ),
  // WidgetModel(
  //   title: 'AspectRatio',
  //   group: 'Layout Widgets',
  //   preview: const AspectRatioPreview(),
  //   code: aspectRatioCode,
  // ),
  // WidgetModel(
  //   title: 'FractionallySizedBox',
  //   group: 'Layout Widgets',
  //   preview: const FractionallySizedBoxPreview(),
  //   code: fractionallySizedBoxCode,
  // ),
  // WidgetModel(
  //   title: 'LimitedBox',
  //   group: 'Layout Widgets',
  //   preview: const LimitedBoxPreview(),
  //   code: limitedBoxCode,
  // ),
  // WidgetModel(
  //   title: 'Flexible',
  //   group: 'Layout Widgets',
  //   preview: const FlexiblePreview(),
  //   code: flexibleCode,
  // ),
  // WidgetModel(
  //   title: 'Spacer',
  //   group: 'Layout Widgets',
  //   preview: const SpacerPreview(),
  //   code: spacerCode,
  // ),
  // // Material Components
  // WidgetModel(
  //   title: 'Scaffold',
  //   group: 'Material Components',
  //   preview: const ScaffoldPreview(),
  //   code: scaffoldCode,
  // ),
  // WidgetModel(
  //   title: 'AppBar',
  //   group: 'Material Components',
  //   preview: const AppBarPreview(),
  //   code: appBarCode,
  // ),
  // WidgetModel(
  //   title: 'BottomNavigationBar',
  //   group: 'Material Components',
  //   preview: const BottomNavigationBarPreview(),
  //   code: bottomNavigationBarCode,
  // ),
  // WidgetModel(
  //   title: 'TabBar',
  //   group: 'Material Components',
  //   preview: const TabBarPreview(),
  //   code: tabBarCode,
  // ),
  // WidgetModel(
  //   title: 'Drawer',
  //   group: 'Material Components',
  //   preview: const DrawerPreview(),
  //   code: drawerCode,
  // ),
  // WidgetModel(
  //   title: 'FloatingActionButton',
  //   group: 'Material Components',
  //   preview: const FloatingActionButtonPreview(),
  //   code: floatingActionButtonCode,
  // ),
  // WidgetModel(
  //   title: 'Card',
  //   group: 'Material Components',
  //   preview: const CardPreview(),
  //   code: cardCode,
  // ),
  // WidgetModel(
  //   title: 'ListTile',
  //   group: 'Material Components',
  //   preview: const ListTilePreview(),
  //   code: listTileCode,
  // ),
  // WidgetModel(
  //   title: 'SnackBar',
  //   group: 'Material Components',
  //   preview: const SnackBarPreview(),
  //   code: snackBarCode,
  // ),
  // WidgetModel(
  //   title: 'Dialog',
  //   group: 'Material Components',
  //   preview: const DialogPreview(),
  //   code: dialogCode,
  // ),
  // WidgetModel(
  //   title: 'AlertDialog',
  //   group: 'Material Components',
  //   preview: const AlertDialogPreview(),
  //   code: alertDialogCode,
  // ),
  // // Text and Typography
  // WidgetModel(
  //   title: 'Text',
  //   group: 'Text and Typography',
  //   preview: const TextPreview(),
  //   code: textCode,
  // ),
  // WidgetModel(
  //   title: 'RichText',
  //   group: 'Text and Typography',
  //   preview: const RichTextPreview(),
  //   code: richTextCode,
  // ),
  // WidgetModel(
  //   title: 'DefaultTextStyle',
  //   group: 'Text and Typography',
  //   preview: const DefaultTextStylePreview(),
  //   code: defaultTextStyleCode,
  // ),
  // WidgetModel(
  //   title: 'TextField',
  //   group: 'Text and Typography',
  //   preview: const TextFieldPreview(),
  //   code: textFieldCode,
  // ),
  // WidgetModel(
  //   title: 'EditableText',
  //   group: 'Text and Typography',
  //   preview: const EditableTextPreview(),
  //   code: editableTextCode,
  // ),
  // // Buttons and Inputs
  // WidgetModel(
  //   title: 'ElevatedButton',
  //   group: 'Buttons and Inputs',
  //   preview: const ElevatedButtonPreview(),
  //   code: elevatedButtonCode,
  // ),
  // WidgetModel(
  //   title: 'TextButton',
  //   group: 'Buttons and Inputs',
  //   preview: const TextButtonPreview(),
  //   code: textButtonCode,
  // ),
  // WidgetModel(
  //   title: 'IconButton',
  //   group: 'Buttons and Inputs',
  //   preview: const IconButtonPreview(),
  //   code: iconButtonCode,
  // ),
  // WidgetModel(
  //   title: 'DropdownButton',
  //   group: 'Buttons and Inputs',
  //   preview: const DropdownButtonPreview(),
  //   code: dropdownButtonCode,
  // ),
  // WidgetModel(
  //   title: 'Checkbox',
  //   group: 'Buttons and Inputs',
  //   preview: const CheckboxPreview(),
  //   code: checkboxCode,
  // ),
  // WidgetModel(
  //   title: 'Radio',
  //   group: 'Buttons and Inputs',
  //   preview: const RadioPreview(),
  //   code: radioCode,
  // ),
  // WidgetModel(
  //   title: 'Switch',
  //   group: 'Buttons and Inputs',
  //   preview: const SwitchPreview(),
  //   code: switchCode,
  // ),
  // WidgetModel(
  //   title: 'Slider',
  //   group: 'Buttons and Inputs',
  //   preview: const SliderPreview(),
  //   code: sliderCode,
  // ),
  // WidgetModel(
  //   title: 'DatePicker',
  //   group: 'Buttons and Inputs',
  //   preview: const DatePickerPreview(),
  //   code: datePickerCode,
  // ),
  // // Images and Icons
  // WidgetModel(
  //   title: 'Image',
  //   group: 'Images and Icons',
  //   preview: const ImagePreview(),
  //   code: imageCode,
  // ),
  // WidgetModel(
  //   title: 'Icon',
  //   group: 'Images and Icons',
  //   preview: const IconPreview(),
  //   code: iconCode,
  // ),
  // WidgetModel(
  //   title: 'FadeInImage',
  //   group: 'Images and Icons',
  //   preview: const FadeInImagePreview(),
  //   code: fadeInImageCode,
  // ),
  // WidgetModel(
  //   title: 'CircleAvatar',
  //   group: 'Images and Icons',
  //   preview: const CircleAvatarPreview(),
  //   code: circleAvatarCode,
  // ),
  // // Scrolling Widgets
  // WidgetModel(
  //   title: 'ListView',
  //   group: 'Scrolling Widgets',
  //   preview: const ListViewPreview(),
  //   code: listViewCode,
  // ),
  // WidgetModel(
  //   title: 'GridView',
  //   group: 'Scrolling Widgets',
  //   preview: const GridViewPreview(),
  //   code: gridViewCode,
  // ),
  // WidgetModel(
  //   title: 'SingleChildScrollView',
  //   group: 'Scrolling Widgets',
  //   preview: const SingleChildScrollViewPreview(),
  //   code: singleChildScrollViewCode,
  // ),
  // WidgetModel(
  //   title: 'PageView',
  //   group: 'Scrolling Widgets',
  //   preview: const PageViewPreview(),
  //   code: pageViewCode,
  // ),
  // WidgetModel(
  //   title: 'CustomScrollView',
  //   group: 'Scrolling Widgets',
  //   preview: const CustomScrollViewPreview(),
  //   code: customScrollViewCode,
  // ),
  // // Async and Stream Widgets
  // WidgetModel(
  //   title: 'FutureBuilder',
  //   group: 'Async and Stream Widgets',
  //   preview: const FutureBuilderPreview(),
  //   code: futureBuilderCode,
  // ),
  // WidgetModel(
  //   title: 'StreamBuilder',
  //   group: 'Async and Stream Widgets',
  //   preview: const StreamBuilderPreview(),
  //   code: streamBuilderCode,
  // ),
  // // Animation and Motion
  // WidgetModel(
  //   title: 'AnimatedContainer',
  //   group: 'Animation and Motion',
  //   preview: const AnimatedContainerPreview(),
  //   code: animatedContainerCode,
  // ),
  // WidgetModel(
  //   title: 'AnimatedOpacity',
  //   group: 'Animation and Motion',
  //   preview: const AnimatedOpacityPreview(),
  //   code: animatedOpacityCode,
  // ),
  // WidgetModel(
  //   title: 'Hero',
  //   group: 'Animation and Motion',
  //   preview: const HeroPreview(),
  //   code: heroCode,
  // ),
  // WidgetModel(
  //   title: 'FadeTransition',
  //   group: 'Animation and Motion',
  //   preview: const FadeTransitionPreview(),
  //   code: fadeTransitionCode,
  // ),
  // WidgetModel(
  //   title: 'ScaleTransition',
  //   group: 'Animation and Motion',
  //   preview: const ScaleTransitionPreview(),
  //   code: scaleTransitionCode,
  // ),
  // // Styling and Theming
  // WidgetModel(
  //   title: 'Theme',
  //   group: 'Styling and Theming',
  //   preview: const ThemePreview(),
  //   code: themeCode,
  // ),
  // WidgetModel(
  //   title: 'MediaQuery',
  //   group: 'Styling and Theming',
  //   preview: const MediaQueryPreview(),
  //   code: mediaQueryCode,
  // ),
  // WidgetModel(
  //   title: 'ColorFiltered',
  //   group: 'Styling and Theming',
  //   preview: const ColorFilteredPreview(),
  //   code: colorFilteredCode,
  // ),
  // // Interaction Models
  // WidgetModel(
  //   title: 'GestureDetector',
  //   group: 'Interaction Models',
  //   preview: const GestureDetectorPreview(),
  //   code: gestureDetectorCode,
  // ),
  // WidgetModel(
  //   title: 'Dismissible',
  //   group: 'Interaction Models',
  //   preview: const DismissiblePreview(),
  //   code: dismissibleCode,
  // ),
  // WidgetModel(
  //   title: 'Draggable',
  //   group: 'Interaction Models',
  //   preview: const DraggablePreview(),
  //   code: draggableCode,
  // ),
  // WidgetModel(
  //   title: 'DragTarget',
  //   group: 'Interaction Models',
  //   preview: const DragTargetPreview(),
  //   code: dragTargetCode,
  // ),
  // WidgetModel(
  //   title: 'LongPressDraggable',
  //   group: 'Interaction Models',
  //   preview: const LongPressDraggablePreview(),
  //   code: longPressDraggableCode,
  // ),
  // // Others
  // WidgetModel(
  //   title: 'SafeArea',
  //   group: 'Others',
  //   preview: const SafeAreaPreview(),
  //   code: safeAreaCode,
  // ),
  // WidgetModel(
  //   title: 'Tooltip',
  //   group: 'Others',
  //   preview: const TooltipPreview(),
  //   code: tooltipCode,
  // ),
  // WidgetModel(
  //   title: 'InkWell',
  //   group: 'Others',
  //   preview: const InkWellPreview(),
  //   code: inkWellCode,
  // ),
  // WidgetModel(
  //   title: 'Divider',
  //   group: 'Others',
  //   preview: const DividerPreview(),
  //   code: dividerCode,
  // ),
  // WidgetModel(
  //   title: 'Transform',
  //   group: 'Others',
  //   preview: const TransformPreview(),
  //   code: transformCode,
  // ),
  // // Functions
  // WidgetModel(
  //   title: 'setState',
  //   group: 'Functions',
  //   preview: const SetStatePreview(),
  //   code: setStateCode,
  // ),
  // WidgetModel(
  //   title: 'Navigator.push',
  //   group: 'Functions',
  //   preview: const NavigatorPushPreview(),
  //   code: navigatorPushCode,
  // ),
  // WidgetModel(
  //   title: 'MediaQuery.of',
  //   group: 'Functions',
  //   preview: const MediaQueryOfPreview(),
  //   code: mediaQueryOfCode,
  // ),
  // WidgetModel(
  //   title: 'showDialog',
  //   group: 'Functions',
  //   preview: const ShowDialogPreview(),
  //   code: showDialogCode,
  // ),
  // WidgetModel(
  //   title: 'debugPrint',
  //   group: 'Functions',
  //   preview: const DebugPrintPreview(),
  //   code: debugPrintCode,
  // ),
];