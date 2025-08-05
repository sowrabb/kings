# Components Library

This document provides an overview of all reusable UI components available in the application. Each component is designed to adapt to the current theme settings automatically.

## Button Components

### Elevated Button
Primary action button with visual emphasis.

```dart
ElevatedButton(
  onPressed: () {
    // Action
  },
  child: const Text('Button Text'),
),
```

### Filled Button
Secondary action button.

```dart
FilledButton(
  onPressed: () {
    // Action
  },
  child: const Text('Button Text'),
),
```

### Outlined Button
Tertiary action button with an outline.

```dart
OutlinedButton(
  onPressed: () {
    // Action
  },
  child: const Text('Button Text'),
),
```

### Text Button
Low-emphasis button for less prominent actions.

```dart
TextButton(
  onPressed: () {
    // Action
  },
  child: const Text('Button Text'),
),
```

## Form Components

### Text Field
Text input field with consistent styling.

```dart
TextField(
  decoration: InputDecoration(
    labelText: 'Label Text',
    hintText: 'Hint text',
  ),
  onChanged: (value) {
    // Handle text changes
  },
),
```

### Checkbox
Selection control for multiple options.

```dart
Checkbox(
  value: isChecked,
  onChanged: (value) {
    setState(() {
      isChecked = value!;
    });
  },
),
```

### Radio Button
Selection control for single options.

```dart
Radio<int>(
  value: 1,
  groupValue: selectedValue,
  onChanged: (value) {
    setState(() {
      selectedValue = value!;
    });
  },
),
```

### Switch
Toggle control for binary states.

```dart
Switch(
  value: isEnabled,
  onChanged: (value) {
    setState(() {
      isEnabled = value;
    });
  },
),
```

## Card Components

### Basic Card
Container for related content.

```dart
Card(
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        Text('Card Title', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        Text('Card content goes here'),
      ],
    ),
  ),
),
```

## Chip Components

### Input Chip
Represents input, attribute, or action.

```dart
InputChip(
  label: const Text('Label'),
  onDeleted: () {
    // Handle delete
  },
),
```

### Filter Chip
For filtering content.

```dart
FilterChip(
  label: const Text('Filter'),
  selected: isSelected,
  onSelected: (selected) {
    setState(() {
      isSelected = selected;
    });
  },
),
```

### Choice Chip
For selecting a single option from a set.

```dart
ChoiceChip(
  label: const Text('Option'),
  selected: isSelected,
  onSelected: (selected) {
    setState(() {
      isSelected = selected;
    });
  },
),
```

### Action Chip
Triggers an action related to primary content.

```dart
ActionChip(
  avatar: const Icon(Icons.add),
  label: const Text('Action'),
  onPressed: () {
    // Handle action
  },
),
```

## Progress Indicators

### Linear Progress Indicator
Horizontal progress indicator.

```dart
// Indeterminate
const LinearProgressIndicator(),

// Determinate
LinearProgressIndicator(value: 0.5), // 50% progress
```

### Circular Progress Indicator
Circular progress indicator.

```dart
// Indeterminate
const CircularProgressIndicator(),

// Determinate
CircularProgressIndicator(value: 0.7), // 70% progress
```

## Slider Components

### Continuous Slider
For selecting a value from a continuous range.

```dart
Slider(
  value: sliderValue,
  onChanged: (value) {
    setState(() {
      sliderValue = value;
    });
  },
),
```

### Range Slider
For selecting a range of values.

```dart
RangeSlider(
  values: RangeValues(startValue, endValue),
  onChanged: (values) {
    setState(() {
      startValue = values.start;
      endValue = values.end;
    });
  },
),
```

### Discrete Slider
Slider with discrete steps.

```dart
Slider(
  value: discreteValue,
  min: 0,
  max: 10,
  divisions: 10,
  label: discreteValue.round().toString(),
  onChanged: (value) {
    setState(() {
      discreteValue = value;
    });
  },
),
```

## List Components

### Basic List
Simple list of items.

```dart
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text(items[index].title),
      subtitle: Text(items[index].subtitle),
      leading: CircleAvatar(
        child: Text(items[index].initial),
      ),
    );
  },
),
```

### List with Switches
List with toggle controls.

```dart
ListTile(
  leading: const Icon(Icons.wifi),
  title: const Text('Wi-Fi'),
  subtitle: Text(isWifiEnabled ? 'Connected' : 'Disconnected'),
  trailing: Switch(
    value: isWifiEnabled,
    onChanged: (value) {
      setState(() {
        isWifiEnabled = value;
      });
    },
  ),
),
```

### Three-line List
List with three lines of text per item.

```dart
ListTile(
  title: const Text('Title'),
  subtitle: const Text('Subtitle\nAdditional information on a second line'),
  leading: CircleAvatar(
    child: const Text('A'),
  ),
  isThreeLine: true,
),
```

## Dialog Components

### Alert Dialog
Modal dialog for important information.

```dart
showDialog(
  context: context,
  builder: (context) {
    return AlertDialog(
      title: const Text('Dialog Title'),
      content: const Text('Dialog content message.'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('CANCEL'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK'),
        ),
      ],
    );
  },
);
```

### Simple Dialog
Dialog for selecting from a set of options.

```dart
showDialog(
  context: context,
  builder: (context) {
    return SimpleDialog(
      title: const Text('Select an option'),
      children: [
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, 'Option 1'),
          child: const Text('Option 1'),
        ),
        SimpleDialogOption(
          onPressed: () => Navigator.pop(context, 'Option 2'),
          child: const Text('Option 2'),
        ),
      ],
    );
  },
);
```

### Custom Dialog
Dialog with custom content layout.

```dart
showDialog(
  context: context,
  builder: (context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle, size: 48, color: Colors.green),
            const SizedBox(height: 16),
            const Text('Success', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            const Text('Operation completed successfully.'),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CLOSE'),
            ),
          ],
        ),
      ),
    );
  },
);
```

## Bottom Sheet Components

### Modal Bottom Sheet
Sheet that slides up from the bottom.

```dart
showModalBottomSheet(
  context: context,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
  ),
  builder: (context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Bottom Sheet Title', 
            style: Theme.of(context).textTheme.titleLarge
          ),
          const SizedBox(height: 8),
          const Text('Content of the bottom sheet goes here.'),
        ],
      ),
    );
  },
);
```

## Snackbar Components

### Basic Snackbar
Brief message at the bottom of the screen.

```dart
ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(
    content: Text('This is a snackbar message'),
    duration: Duration(seconds: 2),
  ),
);
```

### Action Snackbar
Snackbar with an action button.

```dart
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: const Text('Message with action'),
    duration: const Duration(seconds: 4),
    action: SnackBarAction(
      label: 'UNDO',
      onPressed: () {
        // Handle action
      },
    ),
  ),
);
```

## Themed Component Example

This example shows how to create a custom component that adapts to the current theme:

```dart
Widget buildThemedComponent(BuildContext context) {
  final theme = Theme.of(context);
  final isGrayscale = theme.colorScheme.primary == MaterialColors.grayscale[14] || 
                     theme.colorScheme.primary == MaterialColors.grayscale[0];
  final isDark = theme.brightness == Brightness.dark;
  
  // Choose colors based on theming mode
  final backgroundColor = isGrayscale
    ? (isDark ? MaterialColors.grayscale[11] : MaterialColors.grayscale[2])
    : theme.colorScheme.surface;
  
  final textColor = isGrayscale
    ? (isDark ? MaterialColors.grayscale[0] : MaterialColors.grayscale[14])
    : theme.colorScheme.onSurface;
  
  return Container(
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(30),
      border: Border.all(
        color: isGrayscale
          ? (isDark ? MaterialColors.grayscale[9] : MaterialColors.grayscale[7])
          : theme.colorScheme.outline,
        width: 1,
      ),
    ),
    padding: const EdgeInsets.all(16),
    child: Text(
      'Themed Component',
      style: TextStyle(color: textColor),
    ),
  );
}
```

## Best Practices

1. **Always use theme colors** instead of hardcoded values
2. **Check for grayscale mode** when creating custom components
3. **Maintain consistent spacing** using SizedBox or padding
4. **Follow border radius conventions** (30px for most components)
5. **Ensure proper text contrast** in all theme modes

Refer to the [Theme Guidelines](./THEME_GUIDELINES.md) document for more detailed information on the theming system. 