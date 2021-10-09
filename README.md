# Sparta

[![License](https://img.shields.io/github/license/pharo-graphics/sparta.svg)](./LICENSE)
[![Tests](https://github.com/pharo-graphics/sparta/actions/workflows/test.yml/badge.svg)](https://github.com/pharo-graphics/sparta/actions/workflows/test.yml)

Sparta is an almost stateless vector graphics API for Pharo that provides bindings to the Skia rendering backend.

:warning:
This repository contains the code for Sparta that may be included in the future in Pharo.
It retrofits a part of the development made at https://github.com/feenkcom/Sparta.
This version will focus on core features and stability.
We are currently identifying the core we want for Pharo.

### Install

**More detailed installation guide is described in [INSTALL.md](INSTALL.md)**

Sparta requires an extra Skia vm plugin. The plugin for the current OS and VM (64 bit) is downloaded and installed automatically together with all needed packages.

```smalltalk 
Metacello new
    baseline: 'Sparta';
    repository: 'github://pharo-graphics/sparta/src';
    load
```

### Overview
*(All images are rendered using Sparta in Glamorous Toolkit)*

!["Sparta" string rendered with applied neon filter](screenshots/Sparta-v1-Neon.png "Neon filter")

### Backends
Skia, and as result Sparta, has support of native OS graphic engines, as well as cross platform ones.

On all platforms Sparta provides support of [Cairo](https://cairographics.org) and [Skia](https://skia.org/). Additionally, high performant [CoreGraphics and CoreGraphics Accelerated](https://developer.apple.com/reference/coregraphics) on Mac OS and [Direct2D](https://msdn.microsoft.com/en-us/library/windows/desktop/dd317121(v=vs.85).aspx) on Windows.
In total Sparta supports 5 different rendering backends. 

### Text
One of the biggest improvements compared to existing graphics engines from Pharo is advanced high quality text rendering with multi-language support.

![Multilanguage support in Sparta](screenshots/Sparta-v1-Multilanguage.png "Sparta Multilanguage")

The current Pharo text rendering engines draw a piece of text with one concrete font and style. If the font does not have an appropriate character, a stub glyph will be rendered instead.
Sparta introduces a notion of font groups that allow us to achieve a smooth fallback font detection based on the selected font style, language and missing glyphs. Fallback font support requires more complex text measurement, as multiple fonts faces are involved to render a single piece of text.

### Filters
Since Sparta is based on the Moz2D backend that was designed for web browsers, we can get support for a wide variety of [filter primitives](https://www.w3.org/TR/SVG/filters.html). Sparta provides an ability to compose multiple filter primitives to get a single, advanced filter. For example, with the help of ColorMatrix and TableTransfer filters we can simulate some popular Instagram-like filters, for example Nashville, Inkwell or Brannan.

![Instagram-like filters implemented with Sparta](screenshots/Sparta-v1-Filters.png "Sparta Filters")

### Basic drawings
We should not forget that first of all Sparta is a vector graphics engine. It allows developers to create, fill and stroke custom paths and shapes. Together with gaussian blur, we can achieve astonishing results that were not possible before.

![Basic vector graphics in Sparta](screenshots/Sparta-v1-Shapes.png "Sparta Shapes")
