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
PavanTimeline(
started: true,
ended: false,
reached: 2,
children: []
)
```



[//]: # (The `start` and `end` alignment allows a child in their opposite sides. On the other hand, both `center` and `manual` allows children on both sides. For example, one tile with alignment to the center:)
##Sample
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


See the implementation [here](https://github.com/Chindala-Pavan/pavan_timeline/blob/master/lib/example/main.dart)
