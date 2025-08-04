# Material Design Theme Guidelines

This document serves as a guide for using the custom theming system implemented in this application. All components are designed to be reusable and automatically adapt to theme changes.

## Table of Contents
- [Theme System Overview](#theme-system-overview)
- [Color Schemes](#color-schemes)
- [Component Guidelines](#component-guidelines)
- [Theme Adaptation](#theme-adaptation)
- [Accessibility Considerations](#accessibility-considerations)

## Theme System Overview

The application implements a flexible theming system with two primary modes:

1. **Grayscale Theme**: A monochrome black and white theme with high contrast
2. **Color Themes**: Multiple color themes based on Material Design 3 color system

Each component is designed to automatically adapt to the current theme, ensuring consistent appearance across the application. The theme can be toggled between light and dark modes, and various color schemes can be selected.

## Color Schemes

### Grayscale Theme

The grayscale theme uses a set of 15 grayscale colors (from pure white to pure black) defined in `MaterialColors.grayscale`. This provides fine-grained control over shades in both light and dark modes.

```dart
static const List<Color> grayscale = [
  Color(0xFFFFFFFF), // 0 - Pure white
  Color(0xFFFAFAFA), // 10
  // ... other shades
  Color(0xFF000000), // 140 - Pure black
];
```

### Color Themes

Color themes are generated using Material Design 3's `ColorScheme.fromSeed()` method, which creates a complete color palette from a single seed color. Available themes include:

- Blue, Indigo, Purple, Deep Purple
- Red, Pink, Orange, Amber, Yellow
- Lime, Green, Teal, Cyan, Light Blue

## Component Guidelines

### Buttons

Three main button types are available:

- **Elevated Buttons**: Primary actions with visual prominence
- **Filled Buttons**: Secondary actions
- **Text/Outlined Buttons**: Tertiary actions

All buttons maintain consistent styling with 30px border radius and appropriate padding.

### Cards

Cards use rounded corners (30px radius) and subtle borders. In grayscale mode, they maintain a consistent appearance while adapting to light/dark modes.

### Form Elements

- **Text Fields**: Rounded with consistent padding and border styling
- **Checkboxes/Radio Buttons**: Adapt to theme colors with clear selected/unselected states
- **Switches**: Use appropriate track and thumb colors based on theme

### Chips

Chips automatically adapt to theme changes:

- In grayscale mode, selected chips are white with black text (high contrast)
- In color themes, selected chips use the primary color
- Input, Filter, Choice, and Action chips all follow consistent styling

### Lists

List items use consistent spacing and typography. Avatar colors adapt to ensure proper text contrast.

### Progress Indicators & Sliders

Progress bars and sliders use theme-appropriate colors:
- Active portions use primary color (or black/white in grayscale)
- Inactive portions use proper gray shades for visibility

## Theme Adaptation

### Adding New Components

When creating new components:

1. Check if the theme is grayscale using:
   ```dart
   final isGrayscale = Theme.of(context).colorScheme.primary == MaterialColors.grayscale[14] || 
                      Theme.of(context).colorScheme.primary == MaterialColors.grayscale[0];
   ```

2. Apply appropriate styling based on the theme:
   ```dart
   final isDark = Theme.of(context).brightness == Brightness.dark;
   
   // Choose colors based on theme
   final backgroundColor = isGrayscale 
     ? (isDark ? MaterialColors.grayscale[11] : MaterialColors.grayscale[2])
     : Theme.of(context).colorScheme.surface;
   ```

3. For text, ensure proper contrast:
   ```dart
   final textColor = isGrayscale
     ? (isDark ? MaterialColors.grayscale[0] : MaterialColors.grayscale[14])
     : Theme.of(context).colorScheme.onSurface;
   ```

### Helper Methods

Reuse existing helper methods for consistent styling:

- `_createCardTheme()`
- `_createChipTheme()`
- `_createSliderTheme()`
- `_createProgressIndicatorTheme()`
- And other theme helper methods

## Accessibility Considerations

All components are designed with accessibility in mind:

1. **Color Contrast**: Text and interactive elements maintain sufficient contrast ratios
2. **Touch Targets**: Interactive elements use appropriate sizing for touchability
3. **Focus Indicators**: Interactive elements have clear focus indicators
4. **Text Size**: Typography scales appropriately with system settings

## Implementation Examples

### Example: Creating a themed component

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

This guidelines document provides a framework for maintaining consistency when reusing components across multiple applications. By following these guidelines, all UI elements will adapt appropriately to theme changes and maintain a cohesive design language. 