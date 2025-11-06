# Silver App Bar widget. 

The presentation was mainly about a simple Flutter app demonstrating the **SilverAppBar** widget.to create collapsible headers and scrollable content just like in modern mobile apps eg Spotify Album cover.

## Overview
In class I was able to demonstrate how this widget works.When you scroll down, the header area (with gradient background) smoothly collapses into a pinned app bar.  
The rest of the screen displays a scrollable list of items built efficiently with `SliverList`.


## How to Run
1. Clone the repository:
   [Git clone](https://github.com/kenchirchir/Widget-presentation.git)
2. Navigate into the project folder mainly by 
   cd into "sliver_app" and from here you will be able to access everythng.
3. Run the app:
   flutter run

## 📸 Demo Screenshot

![Sliver App Bar Demo](./Screenshot%202025-11-06%20at%2013.43.48.png)

## Widget: Draggable
The `Draggable` widget allows users to move widgets across the screen down to the other box and interact with `DragTarget`.

### Key Widgets Used

| Widget | Purpose |
|--------|----------|
| `CustomScrollView` | The parent scrollable area that holds slivers |
| `SliverAppBar` | Creates a collapsible and pinned header |
| `FlexibleSpaceBar` | Provides expanding background + title animation |
| `SliverList` | Displays scrollable list items efficiently |


## Presentation Date
(Thursday November 6th)

## Reference
Flutter Official Documentation: [SliverAppBar Class](https://api.flutter.dev/flutter/material/SliverAppBar-class.html)

