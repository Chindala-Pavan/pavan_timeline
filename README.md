Language: [English](README.md)

# PavanTimeline
[![Pub](https://img.shields.io/pub/v/pavan_timeline.svg?style=flat-square)](https://pub.dartlang.org/packages/pavan_timeline)
[![support](https://img.shields.io/badge/platform-flutter%7Cflutter-android%20%7Cdart%20vm-ff69b4.svg?style=flat-square)](https://github.com/Chindala-Pavan/pavan_timeline)
# TimelineTile
A package to help build process timeline in vertical.

---

## Example

- You can access the [example](https://github.com/Chindala-Pavan/pavan_timeline/tree/master/lib/example) project for a Timeline Showcase.


Some use cases:

<div style="text-align: center">
    <table>

[//]: # (        <tr>)

[//]: # (            <td style="text-align: center">)

[//]: # (                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/showcase_timeline.gif" width="200"/>)

[//]: # (      </br><b>vertical Timeline</b>)

[//]: # (            </td>            )

[//]: # (            <td style="text-align: center">)

[//]: # (                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/football_timeline.gif" width="200"/>)

[//]: # (      </br><b>Football Timeline</b>)

[//]: # (            </td>)

[//]: # (            <td style="text-align: center">)

[//]: # (                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/activity_timeline.gif" width="200"/>)

[//]: # (      </br><b>Activity Timeline</b>)

[//]: # (            </td>)

[//]: # (        </tr>)

[//]: # (        <tr>)

[//]: # (            <td style="text-align: center">)

[//]: # (                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/success_timeline.gif" width="200"/>)

[//]: # (      </br><b>Success Timeline</b>)

[//]: # (            </td>)

[//]: # (            <td style="text-align: center">)

[//]: # (                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/delivery_timeline.png" width="200"/>)

[//]: # (  </br><b>Delivery Timeline</b>)

[//]: # (            </td>)

[//]: # (            <td style="text-align: center">)

[//]: # (                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/weather_timeline.png" width="200"/>)

[//]: # (  </br><b>Weather Timeline</b>)

[//]: # (            </td>)

[//]: # (        </tr>)
				<tr>
            <td style="text-align: center">

[//]: # (                <img src="https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/gifs/horizontal_timeline.gif" width="200"/>)
      
</br><b>Vertical Timelines</b>
            </td>
        </tr>
    </table>
</div>


## Getting Started

A Timeline consists in a group of TimelineTiles. To build a tile you can simply use:

```dart
PavanTimeline();
```

Which will build a  tile with a `vertical` axis, that aligns to the start, with a `height` of 100:

![Simple Timeline](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/simple_timeline.png)

The axis can be switched to render an `horizontal` tile, aligned to the start, with a default `width` of 100:

```dart
TimelineTile(axis: TimelineAxis.horizontal)
```

![Horizontal Simple Timeline](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_simple_timeline.png)

There are 4 types of alignment.

- `TimelineAlign.start`
- `TimelineAlign.end`
- `TimelineAlign.center`
- `TimelineAlign.manual`

The `start` and `end` alignment allows a child in their opposite sides. On the other hand, both `center` and `manual` allows children on both sides. For example, one tile with alignment to the center:

```dart
PavanTimeline(
      started: true,
      ended: false,
      reached: 2,
      children: [
        Container(color: Colors.indigo,height: 30,width: 100,),
        Container(color: Colors.indigo,height: 30,width: 100,),
        Container(color: Colors.indigo,height: 30,width: 100,),
        Container(color: Colors.indigo,height: 30,width: 100,),
        Container(color: Colors.indigo,height: 30,width: 100,)
      ],
  );
```

When providing children to the `vertical` tile, the height will be as minimum as possible, so you can control it with a height constraint (at least minHeight). This way the tile knows how to size it properly.

![Centered Tile](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/centered_tile_with_children.png)

If the `axis` is `horizontal`, the things are the opposite. The width will be as minimum as possible, so you can control it with a width constraint (at least minWidth). This way the tile knows how to size it properly.

```dart
TimelineTile(
  axis: TimelineAxis.horizontal,
  alignment: TimelineAlign.center,
  endChild: Container(
    constraints: const BoxConstraints(
      minWidth: 120,
    ),
    color: Colors.lightGreenAccent,
  ),
  startChild: Container(
    color: Colors.amberAccent,
  ),
);
```

![Horizontal Centered Tile](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_centered_tile_with_children.png)


### Start to make a timeline

You can finally start to combine some tiles to make a Timeline. The flag `hasIndicator` can control whether an indicator should or shouldn't be rendered.

![Timeline](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/start_to_make_timeline.png)

![Horizontal timeline](https://raw.githubusercontent.com/JHBitencourt/timeline_tile/master/screenshots/horizontal_start_to_make_timeline.png)

See the implementation [here](https://github.com/JHBitencourt/timeline_tile/blob/master/example/lib/src/example/example_5.dart)




See the implementation [here](https://github.com/JHBitencourt/timeline_tile/blob/master/example/lib/src/example/example_10.dart)
