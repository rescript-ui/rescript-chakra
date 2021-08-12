/**
 Acknowledment to @see <https://github.com/giraud/bs-css/>
 THIS IS FILE IS COPIED @see FROM <https://github.com/giraud/bs-css/blob/cb242dbd08a00bd848faecb756a9ddce68d8707a/bs-css/src/Css_AtomicTypes.re>
 **/
let join = (strings, separator) => {
  let rec run = (strings, acc) =>
    switch strings {
    | list{} => acc
    | list{x} => acc ++ x
    | list{x, ...xs} => run(xs, acc ++ (x ++ separator))
    }
  run(strings, "")
}

module Cascading = {
  type t = [#initial | #inherit_ | #unset]

  let initial = #initial
  let inherit_ = #inherit_
  let unset = #unset

  let toString = x =>
    switch x {
    | #initial => "initial"
    | #inherit_ => "inherit"
    | #unset => "unset"
    }
}

module Var = {
  type t = [#var(string) | #varDefault(string, string)]

  let var = x => #var(x)
  let varDefault = (x, default) => #varDefault(x, default)

  let prefix = x => Js.String.startsWith("--", x) ? x : "--" ++ x

  let toString = x =>
    switch x {
    | #var(x) => "var(" ++ (prefix(x) ++ ")")
    | #varDefault(x, v) => "var(" ++ (prefix(x) ++ ("," ++ (v ++ ")")))
    }
}

module Time = {
  type t = [#s(float) | #ms(float)]

  let s = x => #s(x)
  let ms = x => #ms(x)

  let toString = x =>
    switch x {
    | #s(v) => Js.Float.toString(v) ++ "s"
    | #ms(v) => Js.Float.toString(v) ++ "ms"
    }
}

module Percentage = {
  type t = [#percent(float)]

  let pct = x => #percent(x)

  let toString = x =>
    switch x {
    | #percent(x) => Js.Float.toString(x) ++ "%"
    }
}

module Url = {
  type t = [#url(string)]

  let toString = x =>
    switch x {
    | #url(s) => "url(" ++ (s ++ ")")
    }
}

module Length = {
  type rec t = [
    | #ch(float)
    | #em(float)
    | #ex(float)
    | #rem(float)
    | #vh(float)
    | #vw(float)
    | #vmin(float)
    | #vmax(float)
    | #px(int)
    | #pxFloat(float)
    | #cm(float)
    | #mm(float)
    | #inch(float)
    | #pc(float)
    | #pt(int)
    | #zero
    | #calc([#add | #sub], t, t)
    | #percent(float)
  ]

  let ch = x => #ch(x)
  let em = x => #em(x)
  let ex = x => #ex(x)
  let rem = x => #rem(x)
  let vh = x => #vh(x)
  let vw = x => #vw(x)
  let vmin = x => #vmin(x)
  let vmax = x => #vmax(x)
  let px = x => #px(x)
  let pxFloat = x => #pxFloat(x)
  let cm = x => #cm(x)
  let mm = x => #mm(x)
  let inch = x => #inch(x)
  let pc = x => #pc(x)
  let pt = x => #pt(x)
  let zero = #zero

  let rec toString = x =>
    switch x {
    | #ch(x) => Js.Float.toString(x) ++ "ch"
    | #em(x) => Js.Float.toString(x) ++ "em"
    | #ex(x) => Js.Float.toString(x) ++ "ex"
    | #rem(x) => Js.Float.toString(x) ++ "rem"
    | #vh(x) => Js.Float.toString(x) ++ "vh"
    | #vw(x) => Js.Float.toString(x) ++ "vw"
    | #vmin(x) => Js.Float.toString(x) ++ "vmin"
    | #vmax(x) => Js.Float.toString(x) ++ "vmax"
    | #px(x) => Js.Int.toString(x) ++ "px"
    | #pxFloat(x) => Js.Float.toString(x) ++ "px"
    | #cm(x) => Js.Float.toString(x) ++ "cm"
    | #mm(x) => Js.Float.toString(x) ++ "mm"
    | #inch(x) => Js.Float.toString(x) ++ "in"
    | #pc(x) => Js.Float.toString(x) ++ "pc"
    | #pt(x) => Js.Int.toString(x) ++ "pt"
    | #zero => "0"

    | #calc(#add, a, b) => "calc(" ++ (toString(a) ++ (" + " ++ (toString(b) ++ ")")))
    | #calc(#sub, a, b) => "calc(" ++ (toString(a) ++ (" - " ++ (toString(b) ++ ")")))
    | #percent(x) => Js.Float.toString(x) ++ "%"
    }
}

module Angle = {
  type t = [#deg(float) | #rad(float) | #grad(float) | #turn(float)]

  let deg = (x: float) => #deg(x)
  let rad = (x: float) => #rad(x)
  let grad = (x: float) => #grad(x)
  let turn = (x: float) => #turn(x)

  let toString = x =>
    switch x {
    | #deg(x) => Js.Float.toString(x) ++ "deg"
    | #rad(x) => Js.Float.toString(x) ++ "rad"
    | #grad(x) => Js.Float.toString(x) ++ "grad"
    | #turn(x) => Js.Float.toString(x) ++ "turn"
    }
}

module Direction = {
  type t = [#ltr | #rtl]

  let ltr = #ltr
  let rtl = #rtl

  let toString = x =>
    switch x {
    | #ltr => "ltr"
    | #rtl => "rtl"
    }
}

module Position = {
  type t = [#absolute | #relative | #static | #fixed | #sticky]

  let absolute = #absolute
  let relative = #relative
  let static = #static
  let fixed = #fixed
  let sticky = #sticky

  let toString = x =>
    switch x {
    | #absolute => "absolute"
    | #relative => "relative"
    | #static => "static"
    | #fixed => "fixed"
    | #sticky => "sticky"
    }
}

module Resize = {
  type t = [#none | #both | #horizontal | #vertical | #block | #inline]

  let none = #none
  let both = #both
  let horizontal = #horizontal
  let vertical = #vertical
  let block = #block
  let inline = #inline

  let toString = x =>
    switch x {
    | #none => "none"
    | #both => "both"
    | #horizontal => "horizontal"
    | #vertical => "vertical"
    | #block => "block"
    | #inline => "inline"
    }
}

module FontVariant = {
  type t = [#normal | #smallCaps]

  let normal = #normal
  let smallCaps = #smallCaps

  let toString = x =>
    switch x {
    | #normal => "normal"
    | #smallCaps => "smallCaps"
    }
}

module FontStyle = {
  type t = [#normal | #italic | #oblique]

  let normal = #normal
  let italic = #italic
  let oblique = #oblique

  let toString = x =>
    switch x {
    | #normal => "normal"
    | #italic => "italic"
    | #oblique => "oblique"
    }
}

module FlexBasis = {
  type t = [
    | #auto
    | #fill
    | #content
    | #maxContent
    | #minContent
    | #fitContent
  ]

  let fill = #fill
  let content = #content
  let maxContent = #maxContent
  let minContent = #minContent
  let fitContent = #fitContent

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #fill => "fill"
    | #content => "content"
    | #maxContent => "max-content"
    | #minContent => "min-content"
    | #fitContent => "fit-content"
    }
}

module Overflow = {
  type t = [#hidden | #visible | #scroll | #auto]

  let hidden = #hidden
  let visible = #visible
  let scroll = #scroll
  let auto = #auto

  let toString = x =>
    switch x {
    | #hidden => "hidden"
    | #visible => "visible"
    | #scroll => "scroll"
    | #auto => "auto"
    }
}

module Margin = {
  type t = [#auto]

  let auto = #auto

  let toString = x =>
    switch x {
    | #auto => "auto"
    }
}

module GridAutoFlow = {
  type t = [#column | #row | #columnDense | #rowDense]

  let toString = x =>
    switch x {
    | #column => "column"
    | #row => "row"
    | #columnDense => "column dense"
    | #rowDense => "row dense"
    }
}

module RowGap = {
  type t = [#normal]

  let toString = x =>
    switch x {
    | #normal => "normal"
    }
}

module ColumnGap = {
  type t = [#normal]

  let toString = x =>
    switch x {
    | #normal => "normal"
    }
}

module VerticalAlign = {
  type t = [
    | #baseline
    | #sub
    | #super
    | #top
    | #textTop
    | #middle
    | #bottom
    | #textBottom
  ]

  let toString = x =>
    switch x {
    | #baseline => "baseline"
    | #sub => "sub"
    | #super => "super"
    | #top => "top"
    | #textTop => "text-top"
    | #middle => "middle"
    | #bottom => "bottom"
    | #textBottom => "text-bottom"
    }
}

module TimingFunction = {
  type t = [
    | #linear
    | #ease
    | #easeIn
    | #easeOut
    | #easeInOut
    | #stepStart
    | #stepEnd
    | #steps(int, [#start | #end_])
    | #cubicBezier(float, float, float, float)
  ]

  let linear = #linear
  let ease = #ease
  let easeIn = #easeIn
  let easeInOut = #easeInOut
  let easeOut = #easeOut
  let stepStart = #stepStart
  let stepEnd = #stepEnd
  let steps = (i, dir) => #steps(i, dir)
  let cubicBezier = (a, b, c, d) => #cubicBezier(a, b, c, d)

  let toString = x =>
    switch x {
    | #linear => "linear"
    | #ease => "ease"
    | #easeIn => "ease-in"
    | #easeOut => "ease-out"
    | #easeInOut => "ease-in-out"
    | #stepStart => "step-start"
    | #stepEnd => "step-end"
    | #steps(i, #start) => "steps(" ++ (Js.Int.toString(i) ++ ", start)")
    | #steps(i, #end_) => "steps(" ++ (Js.Int.toString(i) ++ ", end)")
    | #cubicBezier(a, b, c, d) =>
      "cubic-bezier(" ++
      (Js.Float.toString(a) ++
      (", " ++
      (Js.Float.toString(b) ++
      (", " ++ (Js.Float.toString(c) ++ (", " ++ (Js.Float.toString(d) ++ ")")))))))
    }
}

module RepeatValue = {
  type t = [#autoFill | #autoFit | #num(int)]

  let toString = x =>
    switch x {
    | #autoFill => "auto-fill"
    | #autoFit => "auto-fit"
    | #num(x) => Js.Int.toString(x)
    }
}

module ListStyleType = {
  type t = [
    | #disc
    | #circle
    | #square
    | #decimal
    | #lowerAlpha
    | #upperAlpha
    | #lowerGreek
    | #lowerLatin
    | #upperLatin
    | #lowerRoman
    | #upperRoman
    | #none
  ]

  let toString = x =>
    switch x {
    | #disc => "disc"
    | #circle => "circle"
    | #square => "square"
    | #decimal => "decimal"
    | #lowerAlpha => "lower-alpha"
    | #upperAlpha => "upper-alpha"
    | #lowerGreek => "lower-greek"
    | #lowerLatin => "lower-latin"
    | #upperLatin => "upper-latin"
    | #lowerRoman => "lower-roman"
    | #upperRoman => "upper-roman"
    | #none => "none"
    }
}

module ListStylePosition = {
  type t = [#inside | #outside]

  let toString = x =>
    switch x {
    | #inside => "inside"
    | #outside => "outside"
    }
}

module OutlineStyle = {
  type t = [
    | #none
    | #hidden
    | #dotted
    | #dashed
    | #solid
    | #double
    | #groove
    | #ridge
    | #inset
    | #outset
  ]

  let toString = x =>
    switch x {
    | #none => "none"
    | #hidden => "hidden"
    | #dotted => "dotted"
    | #dashed => "dashed"
    | #solid => "solid"
    | #double => "double"
    | #groove => "grove"
    | #ridge => "ridge"
    | #inset => "inset"
    | #outset => "outset"
    }
}

module FontWeight = {
  type t = [
    | #num(int)
    | #thin
    | #extraLight
    | #light
    | #normal
    | #medium
    | #semiBold
    | #bold
    | #extraBold
    | #black
    | #lighter
    | #bolder
  ]

  let thin = #thin
  let extraLight = #extraLight
  let light = #light
  let medium = #medium
  let semiBold = #semiBold
  let bold = #bold
  let extraBold = #extraBold
  let lighter = #lighter
  let bolder = #bolder

  let toString = x =>
    switch x {
    | #num(n) => Js.Int.toString(n)
    | #thin => "100"
    | #extraLight => "200"
    | #light => "300"
    | #normal => "400"
    | #medium => "500"
    | #semiBold => "600"
    | #bold => "700"
    | #extraBold => "800"
    | #black => "900"
    | #lighter => "lighter"
    | #bolder => "bolder"
    }
}

module Transform = {
  type t = [
    | #translate(Length.t, Length.t)
    | #translate3d(Length.t, Length.t, Length.t)
    | #translateX(Length.t)
    | #translateY(Length.t)
    | #translateZ(Length.t)
    | #scale(float, float)
    | #scale3d(float, float, float)
    | #scaleX(float)
    | #scaleY(float)
    | #scaleZ(float)
    | #rotate(Angle.t)
    | #rotate3d(float, float, float, Angle.t)
    | #rotateX(Angle.t)
    | #rotateY(Angle.t)
    | #rotateZ(Angle.t)
    | #skew(Angle.t, Angle.t)
    | #skewX(Angle.t)
    | #skewY(Angle.t)
    | #perspective(int)
  ]

  let translate = (x, y) => #translate(x, y)
  let translate3d = (x, y, z) => #translate3d(x, y, z)
  let translateX = x => #translateX(x)
  let translateY = y => #translateY(y)
  let translateZ = z => #translateZ(z)
  let scale = (x, y) => #scale(x, y)
  let scale3d = (x, y, z) => #scale3d(x, y, z)
  let scaleX = x => #scaleX(x)
  let scaleY = x => #scaleY(x)
  let scaleZ = x => #scaleZ(x)
  let rotate = a => #rotate(a)
  let rotate3d = (x, y, z, a) => #rotate3d(x, y, z, a)
  let rotateX = a => #rotateX(a)
  let rotateY = a => #rotateY(a)
  let rotateZ = a => #rotateZ(a)
  let skew = (a, a') => #skew(a, a')
  let skewX = a => #skewX(a)
  let skewY = a => #skewY(a)

  let string_of_scale = (x, y) =>
    "scale(" ++ (Js.Float.toString(x) ++ (", " ++ (Js.Float.toString(y) ++ ")")))

  let string_of_translate3d = (x, y, z) =>
    "translate3d(" ++
    (Length.toString(x) ++
    (", " ++ (Length.toString(y) ++ (", " ++ (Length.toString(z) ++ ")")))))

  let toString = x =>
    switch x {
    | #translate(x, y) =>
      "translate(" ++ (Length.toString(x) ++ (", " ++ (Length.toString(y) ++ ")")))
    | #translate3d(x, y, z) => string_of_translate3d(x, y, z)
    | #translateX(x) => "translateX(" ++ (Length.toString(x) ++ ")")
    | #translateY(y) => "translateY(" ++ (Length.toString(y) ++ ")")
    | #translateZ(z) => "translateZ(" ++ (Length.toString(z) ++ ")")
    | #scale(x, y) => string_of_scale(x, y)
    | #scale3d(x, y, z) =>
      "scale3d(" ++
      (Js.Float.toString(x) ++
      (", " ++ (Js.Float.toString(y) ++ (", " ++ (Js.Float.toString(z) ++ ")")))))
    | #scaleX(x) => "scaleX(" ++ (Js.Float.toString(x) ++ ")")
    | #scaleY(y) => "scaleY(" ++ (Js.Float.toString(y) ++ ")")
    | #scaleZ(z) => "scaleZ(" ++ (Js.Float.toString(z) ++ ")")
    | #rotate(a) => "rotate(" ++ (Angle.toString(a) ++ ")")
    | #rotate3d(x, y, z, a) =>
      "rotate3d(" ++
      (Js.Float.toString(x) ++
      (", " ++
      (Js.Float.toString(y) ++
      (", " ++ (Js.Float.toString(z) ++ (", " ++ (Angle.toString(a) ++ ")")))))))
    | #rotateX(a) => "rotateX(" ++ (Angle.toString(a) ++ ")")
    | #rotateY(a) => "rotateY(" ++ (Angle.toString(a) ++ ")")
    | #rotateZ(a) => "rotateZ(" ++ (Angle.toString(a) ++ ")")
    | #skew(x, y) => "skew(" ++ (Angle.toString(x) ++ (", " ++ (Angle.toString(y) ++ ")")))
    | #skewX(a) => "skewX(" ++ (Angle.toString(a) ++ ")")
    | #skewY(a) => "skewY(" ++ (Angle.toString(a) ++ ")")
    | #perspective(x) => "perspective(" ++ (Js.Int.toString(x) ++ ")")
    }
}

module AnimationDirection = {
  type t = [#normal | #reverse | #alternate | #alternateReverse]

  let toString = x =>
    switch x {
    | #normal => "normal"
    | #reverse => "reverse"
    | #alternate => "alternate"
    | #alternateReverse => "alternate-reverse"
    }
}

module AnimationFillMode = {
  type t = [#none | #forwards | #backwards | #both]

  let toString = x =>
    switch x {
    | #none => "none"
    | #forwards => "forwards"
    | #backwards => "backwards"
    | #both => "both"
    }
}

module AnimationIterationCount = {
  type t = [#infinite | #count(int)]

  let toString = x =>
    switch x {
    | #infinite => "infinite"
    | #count(x) => Js.Int.toString(x)
    }
}

module AnimationPlayState = {
  type t = [#paused | #running]

  let toString = x =>
    switch x {
    | #paused => "paused"
    | #running => "running"
    }
}

module Cursor = {
  type t = [
    | #auto
    | #default
    | #none
    | #contextMenu
    | #help
    | #pointer
    | #progress
    | #wait
    | #cell
    | #crosshair
    | #text
    | #verticalText
    | #alias
    | #copy
    | #move
    | #noDrop
    | #notAllowed
    | #grab
    | #grabbing
    | #allScroll
    | #colResize
    | #rowResize
    | #nResize
    | #eResize
    | #sResize
    | #wResize
    | #neResize
    | #nwResize
    | #seResize
    | #swResize
    | #ewResize
    | #nsResize
    | #neswResize
    | #nwseResize
    | #zoomIn
    | #zoomOut
  ]

  let auto = #auto
  let default = #default
  let none = #none
  let contextMenu = #contextMenu
  let help = #help
  let pointer = #pointer
  let progress = #progress
  let wait = #wait
  let cell = #cell
  let crosshair = #crosshair
  let text = #text
  let verticalText = #verticalText
  let alias = #alias
  let copy = #copy
  let move = #move
  let noDrop = #noDrop
  let notAllowed = #notAllowed
  let grab = #grab
  let grabbing = #grabbing
  let allScroll = #allScroll
  let colResize = #colResize
  let rowResize = #rowResize
  let nResize = #nResize
  let eResize = #eResize
  let sResize = #sResize
  let wResize = #wResize
  let neResize = #neResize
  let nwResize = #nwResize
  let seResize = #seResize
  let swResize = #swResize
  let ewResize = #ewResize
  let nsResize = #nsResize
  let neswResize = #neswResize
  let nwseResize = #nwseResize
  let zoomIn = #zoomIn
  let zoomOut = #zoomOut

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #default => "default"
    | #none => "none"
    | #contextMenu => "context-menu"
    | #help => "help"
    | #pointer => "pointer"
    | #progress => "progress"
    | #wait => "wait"
    | #cell => "cell"
    | #crosshair => "crosshair"
    | #text => "text"
    | #verticalText => "vertical-text"
    | #alias => "alias"
    | #copy => "copy"
    | #move => "move"
    | #noDrop => "no-drop"
    | #notAllowed => "not-allowed"
    | #grab => "grab"
    | #grabbing => "grabbing"
    | #allScroll => "all-scroll"
    | #colResize => "col-resize"
    | #rowResize => "row-resize"
    | #nResize => "n-resize"
    | #eResize => "e-resize"
    | #sResize => "s-resize"
    | #wResize => "w-resize"
    | #neResize => "ne-resize"
    | #nwResize => "nw-resize"
    | #seResize => "se-resize"
    | #swResize => "sw-resize"
    | #ewResize => "ew-resize"
    | #nsResize => "ns-resize"
    | #neswResize => "nesw-resize"
    | #nwseResize => "nwse-resize"
    | #zoomIn => "zoom-in"
    | #zoomOut => "zoom-out"
    }
}

module Color = {
  // TODO: color names HTML5
  type t = [
    | #rgb(int, int, int)
    | #rgba(int, int, int, [#num(float) | Percentage.t])
    | #hsl(Angle.t, Percentage.t, Percentage.t)
    | #hsla(Angle.t, Percentage.t, Percentage.t, [#num(float) | Percentage.t])
    | #hex(string)
    | #transparent
    | #currentColor
  ]

  let rgb = (r, g, b) => #rgb(r, g, b)
  let rgba = (r, g, b, a) => #rgba(r, g, b, a)
  let hsl = (h, s, l) => #hsl(h, s, l)
  let hsla = (h, s, l, a) => #hsla(h, s, l, a)
  let hex = x => #hex(x)
  let transparent = #transparent
  let currentColor = #currentColor

  let string_of_alpha = x =>
    switch x {
    | #num(f) => Js.Float.toString(f)
    | #...Percentage.t as pc => Percentage.toString(pc)
    }

  let toString = x =>
    switch x {
    | #rgb(r, g, b) =>
      "rgb(" ++
      (Js.Int.toString(r) ++
      (", " ++ (Js.Int.toString(g) ++ (", " ++ (Js.Int.toString(b) ++ ")")))))
    | #rgba(r, g, b, a) =>
      "rgba(" ++
      (Js.Int.toString(r) ++
      (", " ++
      (Js.Int.toString(g) ++
      (", " ++ (Js.Int.toString(b) ++ (", " ++ (string_of_alpha(a) ++ ")")))))))
    | #hsl(h, s, l) =>
      "hsl(" ++
      (Angle.toString(h) ++
      (", " ++ (Percentage.toString(s) ++ (", " ++ (Percentage.toString(l) ++ ")")))))
    | #hsla(h, s, l, a) =>
      "hsla(" ++
      (Angle.toString(h) ++
      (", " ++
      (Percentage.toString(s) ++
      (", " ++ (Percentage.toString(l) ++ (", " ++ (string_of_alpha(a) ++ ")")))))))
    | #hex(s) => "#" ++ s
    | #transparent => "transparent"
    | #currentColor => "currentColor"
    }
}

module BorderStyle = {
  type t = [
    | #none
    | #hidden
    | #dotted
    | #dashed
    | #solid
    | #double
    | #groove
    | #ridge
    | #inset
    | #outset
  ]

  let toString = x =>
    switch x {
    | #none => "none"
    | #hidden => "hidden"
    | #dotted => "dotted"
    | #dashed => "dashed"
    | #solid => "solid"
    | #double => "double"
    | #groove => "groove"
    | #ridge => "ridge"
    | #inset => "inset"
    | #outset => "outset"
    }
}

module PointerEvents = {
  type t = [#auto | #none]

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #none => "none"
    }
}

module Perspective = {
  type t = [#none]

  let toString = x =>
    switch x {
    | #none => "none"
    }
}

module LetterSpacing = {
  type t = [#normal]

  let normal = #normal

  let toString = x =>
    switch x {
    | #normal => "normal"
    }
}

module LineHeight = {
  type t = [#normal | #abs(float)]

  let toString = x =>
    switch x {
    | #normal => "normal"
    | #abs(x) => Js.Float.toString(x)
    }
}

module WordSpacing = {
  type t = [#normal]

  let toString = x =>
    switch x {
    | #normal => "normal"
    }
}

module DisplayOutside = {
  type t = [#block | #inline | #runIn]

  let toString = x =>
    switch x {
    | #block => "block"
    | #inline => "inline"
    | #runIn => "run-in"
    }
}

module DisplayInside = {
  type t = [#table | #flex | #grid]

  let toString = x =>
    switch x {
    | #table => "table"
    | #flex => "flex"
    | #grid => "grid"
    }
}

module DisplayListItem = {
  type t = [#listItem]

  let toString = x =>
    switch x {
    | #listItem => "list-item"
    }
}

module DisplayInternal = {
  type t = [
    | #tableRowGroup
    | #tableHeaderGroup
    | #tableFooterGroup
    | #tableRow
    | #tableCell
    | #tableColumnGroup
    | #tableColumn
    | #tableCaption
  ]

  let toString = x =>
    switch x {
    | #tableRowGroup => "table-row-group"
    | #tableHeaderGroup => "table-header-group"
    | #tableFooterGroup => "table-footer-group"
    | #tableRow => "table-row"
    | #tableCell => "table-cell"
    | #tableColumnGroup => "table-column-group"
    | #tableColumn => "table-column"
    | #tableCaption => "table-caption"
    }
}

module DisplayBox = {
  type t = [#contents | #none]

  let toString = x =>
    switch x {
    | #contents => "contents"
    | #none => "none"
    }
}

module DisplayLegacy = {
  type t = [#inlineBlock | #inlineFlex | #inlineGrid | #inlineTable]

  let toString = x =>
    switch x {
    | #inlineBlock => "inline-block"
    | #inlineFlex => "inline-flex"
    | #inlineGrid => "inline-grid"
    | #inlineTable => "inline-table"
    }
}

module JustifySelf = {
  type t = [#auto | #normal | #stretch]

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #normal => "normal"
    | #stretch => "stretch"
    }
}

module PositionalAlignment = {
  type t = [
    | #center
    | #start
    | #end_
    | #flexStart
    | #flexEnd
    | #selfStart
    | #selfEnd
    | #left
    | #right
  ]

  let toString = x =>
    switch x {
    | #center => "center"
    | #start => "start"
    | #end_ => "end"
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #selfStart => "self-start"
    | #selfEnd => "self-end"
    | #left => "left"
    | #right => "right"
    }
}

module OverflowAlignment = {
  type t = [
    | #safe(PositionalAlignment.t)
    | #unsafe(PositionalAlignment.t)
  ]

  let toString = x =>
    switch x {
    | #safe(pa) => "safe " ++ PositionalAlignment.toString(pa)
    | #unsafe(pa) => "unsafe " ++ PositionalAlignment.toString(pa)
    }
}

module BaselineAlignment = {
  type t = [#baseline | #firstBaseline | #lastBaseline]

  let toString = x =>
    switch x {
    | #baseline => "baseline"
    | #firstBaseline => "first baseline"
    | #lastBaseline => "last baseline"
    }
}

module NormalAlignment = {
  type t = [#normal]

  let toString = x =>
    switch x {
    | #normal => "normal"
    }
}

module DistributedAlignment = {
  type t = [#spaceBetween | #spaceAround | #spaceEvenly | #stretch]

  let toString = x =>
    switch x {
    | #spaceBetween => "space-between"
    | #spaceAround => "space-around"
    | #spaceEvenly => "space-evenly"
    | #stretch => "stretch"
    }
}

module LegacyAlignment = {
  type t = [#legacy | #legacyRight | #legacyLeft | #legacyCenter]

  let toString = x =>
    switch x {
    | #legacy => "legacy"
    | #legacyRight => "legacy right"
    | #legacyLeft => "legacy left"
    | #legacyCenter => "legacy center"
    }
}

module TextAlign = {
  type t = [#left | #right | #center | #justify]

  let toString = x =>
    switch x {
    | #left => "left"
    | #right => "right"
    | #center => "center"
    | #justify => "justify"
    }
}

module WordBreak = {
  type t = [#normal | #breakAll | #keepAll]

  let toString = x =>
    switch x {
    | #normal => "normal"
    | #breakAll => "break-all"
    | #keepAll => "keep-all"
    }
}

module WhiteSpace = {
  type t = [#normal | #nowrap | #pre | #preLine | #preWrap | #breakSpaces]

  let toString = x =>
    switch x {
    | #normal => "normal"
    | #nowrap => "nowrap"
    | #pre => "pre"
    | #preLine => "pre-line"
    | #preWrap => "pre-wrap"
    | #breakSpaces => "break-spaces"
    }
}

module AlignItems = {
  type t = [#normal | #stretch]

  let toString = x =>
    switch x {
    | #normal => "normal"
    | #stretch => "stretch"
    }
}

module AlignSelf = {
  type t = [#auto | #normal | #stretch]

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #normal => "normal"
    | #stretch => "stretch"
    }
}

module AlignContent = {
  type t = [#center | #start | #end_ | #flexStart | #flexEnd]

  let toString = x =>
    switch x {
    | #center => "center"
    | #start => "start"
    | #end_ => "end"
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    }
}

module ObjectFit = {
  type t = [#fill | #contain | #cover | #none | #scaleDown]

  let toString = x =>
    switch x {
    | #fill => "fill"
    | #contain => "contain"
    | #cover => "cover"
    | #none => "none"
    | #scaleDown => "scale-down"
    }
}

module Clear = {
  type t = [#none | #left | #right | #both | #inlineStart | #inlineEnd]

  let toString = x =>
    switch x {
    | #none => "none"
    | #left => "left"
    | #right => "right"
    | #both => "both"
    | #inlineStart => "inline-start"
    | #inlineEnd => "inline-end"
    }
}

module Float = {
  type t = [#left | #right | #none | #inlineStart | #inlineEnd]

  let toString = x =>
    switch x {
    | #left => "left"
    | #right => "right"
    | #none => "none"
    | #inlineStart => "inline-start"
    | #inlineEnd => "inline-end"
    }
}

module Visibility = {
  type t = [#visible | #hidden | #collapse]

  let toString = x =>
    switch x {
    | #visible => "visible"
    | #hidden => "hidden"
    | #collapse => "collapse"
    }
}

module TableLayout = {
  type t = [#auto | #fixed]

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #fixed => "fixed"
    }
}

module BorderCollapse = {
  type t = [#collapse | #separate]

  let toString = x =>
    switch x {
    | #collapse => "collapse"
    | #separate => "separate"
    }
}

module FlexWrap = {
  type t = [#nowrap | #wrap | #wrapReverse]

  let toString = x =>
    switch x {
    | #nowrap => "nowrap"
    | #wrap => "wrap"
    | #wrapReverse => "wrap-reverse"
    }
}

module FlexDirection = {
  type t = [#row | #rowReverse | #column | #columnReverse]

  let toString = x =>
    switch x {
    | #row => "row"
    | #rowReverse => "row-reverse"
    | #column => "column"
    | #columnReverse => "column-reverse"
    }
}

module BoxSizing = {
  type t = [#contentBox | #borderBox]

  let toString = x =>
    switch x {
    | #contentBox => "content-box"
    | #borderBox => "border-box"
    }
}

module ColumnCount = {
  type t = [#auto | #count(int)]

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #count(v) => Js.Int.toString(v)
    }
}

module UserSelect = {
  type t = [#none | #auto | #text | #contain | #all]

  let toString = x =>
    switch x {
    | #none => "none"
    | #auto => "auto"
    | #text => "text"
    | #contain => "contain"
    | #all => "all"
    }
}

module TextTransform = {
  type t = [#none | #capitalize | #uppercase | #lowercase]

  let toString = x =>
    switch x {
    | #none => "none"
    | #capitalize => "capitalize"
    | #uppercase => "uppercase"
    | #lowercase => "lowercase"
    }
}

module GridTemplateAreas = {
  type t = [#none | #areas(list<string>)]

  let areas = x => #areas(x)

  let toString = x =>
    switch x {
    | #none => "none"
    | #areas(l) =>
      String.trim(List.fold_left((carry, elem) => carry ++ ("'" ++ (elem ++ "' ")), "", l))
    }
}

module GridArea = {
  type t = [
    | #auto
    | #ident(string)
    | #num(int)
    | #numIdent(int, string)
    | #span([#num(int) | #ident(string)])
  ]

  let auto = #auto
  let ident = x => #ident(x)
  let num = x => #num(x)
  let numIdent = (x, y) => #numIdent(x, y)
  let span = x => #span(x)

  let toString = t =>
    switch t {
    | #auto => "auto"
    | #ident(s) => s
    | #num(i) => string_of_int(i)
    | #numIdent(i, s) => string_of_int(i) ++ (" " ++ s)
    | #span(e) =>
      "span " ++
      switch e {
      | #num(i) => string_of_int(i)
      | #ident(s) => s
      }
    }
}

module BackdropFilter = {
  type t = [
    | #blur(Length.t)
    | #brightness([#num(int) | #percent(float)])
    | #contrast([#num(int) | #percent(float)])
    | #dropShadow([#num(int) | #percent(float)])
    | #grayscale([#num(int) | #percent(float)])
    | #hueRotate([Angle.t | #zero])
    | #invert([#num(int) | #percent(float)])
    | #none
    | #opacity([#num(int) | #percent(float)])
    | #saturate([#num(int) | #percent(float)])
    | #sepia([#num(int) | #percent(float)])
  ]

  let string_of_percent = p => Js.Float.toString(p) ++ "%"

  let toString = x =>
    switch x {
    | #blur(#...Length.t as b) => "blur(" ++ (Length.toString(b) ++ ")")
    | #brightness(#num(b)) => "brightness(" ++ (string_of_int(b) ++ ")")
    | #brightness(#percent(b)) => "brightness(" ++ (string_of_percent(b) ++ ")")
    | #contrast(#num(c)) => "contrast(" ++ (string_of_int(c) ++ ")")
    | #contrast(#percent(c)) => "contrast(" ++ (string_of_percent(c) ++ ")")
    | #dropShadow(#num(i)) => "drop-shadow(" ++ (string_of_int(i) ++ ")")
    | #dropShadow(#percent(i)) => "drop-shadow(" ++ (string_of_percent(i) ++ ")")
    | #grayscale(#num(i)) => "grayscale(" ++ (string_of_int(i) ++ ")")
    | #grayscale(#percent(i)) => "grayscale(" ++ (string_of_percent(i) ++ ")")
    | #hueRotate(#...Angle.t as h) => "hue-rotate(" ++ (Angle.toString(h) ++ ")")
    | #hueRotate(#zero) => "hue-rotate(0deg)"
    | #invert(#num(i)) => "invert(" ++ (string_of_int(i) ++ ")")
    | #invert(#percent(i)) => "invert(" ++ (string_of_percent(i) ++ ")")
    | #none => "none"
    | #opacity(#num(i)) => "opacity(" ++ (string_of_int(i) ++ ")")
    | #opacity(#percent(i)) => "opacity(" ++ (string_of_percent(i) ++ ")")
    | #saturate(#num(i)) => "saturate(" ++ (string_of_int(i) ++ ")")
    | #saturate(#percent(i)) => "saturate(" ++ (string_of_percent(i) ++ ")")
    | #sepia(#num(i)) => "sepia(" ++ (string_of_int(i) ++ ")")
    | #sepia(#percent(i)) => "sepia(" ++ (string_of_percent(i) ++ ")")
    }
}

module BackgroundAttachment = {
  type t = [#scroll | #fixed | #local]

  let toString = x =>
    switch x {
    | #scroll => "scroll"
    | #fixed => "fixed"
    | #local => "local"
    }
}

module BackgroundClip = {
  type t = [#borderBox | #paddingBox | #contentBox]

  let toString = x =>
    switch x {
    | #borderBox => "border-box"
    | #contentBox => "content-box"
    | #paddingBox => "padding-box"
    }
}

module BackgroundOrigin = {
  type t = [#borderBox | #paddingBox | #contentBox]

  let toString = x =>
    switch x {
    | #borderBox => "border-box"
    | #contentBox => "content-box"
    | #paddingBox => "padding-box"
    }
}

module BackgroundPosition = {
  module X = {
    type t = [#left | #right | #center]

    let toString = x =>
      switch x {
      | #left => "left"
      | #right => "right"
      | #center => "center"
      }
  }

  module Y = {
    type t = [#top | #bottom | #center]

    let toString = x =>
      switch x {
      | #top => "top"
      | #bottom => "bottom"
      | #center => "center"
      }
  }

  type t = [X.t | Y.t]

  let toString = x =>
    switch x {
    | #left => "left"
    | #right => "right"
    | #top => "top"
    | #bottom => "bottom"
    | #center => "center"
    }
}

module BackgroundRepeat = {
  type twoValue = [#repeat | #space | #round | #noRepeat]
  type t = [#repeatX | #repeatY | twoValue]
  type horizontal = twoValue
  type vertical = twoValue

  let toString = x =>
    switch x {
    | #repeatX => "repeat-x"
    | #repeatY => "repeat-y"
    | #repeat => "repeat"
    | #space => "space"
    | #round => "round"
    | #noRepeat => "no-repeat"
    }
}

module TextOverflow = {
  type t = [#clip | #ellipsis | #string(string)]

  let toString = x =>
    switch x {
    | #clip => "clip"
    | #ellipsis => "ellipsis"
    | #string(s) => s
    }
}

module TextDecorationLine = {
  type t = [#none | #underline | #overline | #lineThrough | #blink]

  let toString = x =>
    switch x {
    | #none => "none"
    | #underline => "underline"
    | #overline => "overline"
    | #lineThrough => "line-through"
    | #blink => "blink"
    }
}

module TextDecorationStyle = {
  type t = [#solid | #double | #dotted | #dashed | #wavy]

  let toString = x =>
    switch x {
    | #solid => "solid"
    | #double => "double"
    | #dotted => "dotted"
    | #dashed => "dashed"
    | #wavy => "wavy"
    }
}

module Width = {
  type t = [#auto | #fitContent]

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #fitContent => "fit-content"
    }
}

module MaxWidth = {
  type t = [#none]

  let toString = x =>
    switch x {
    | #none => "none"
    }
}

module Height = {
  type t = [#auto]

  let toString = x =>
    switch x {
    | #auto => "auto"
    }
}

module MaxHeight = {
  type t = [#none]

  let toString = x =>
    switch x {
    | #none => "none"
    }
}

module OverflowWrap = {
  type t = [#normal | #breakWord | #anywhere]

  let toString = x =>
    switch x {
    | #normal => "normal"
    | #breakWord => "break-word"
    | #anywhere => "anywhere"
    }
}

module Gradient = {
  type t<'colorOrVar> = [
    | #linearGradient(Angle.t, list<(Length.t, [< Color.t | Var.t] as 'colorOrVar)>)
    | #repeatingLinearGradient(Angle.t, list<(Length.t, [< Color.t | Var.t] as 'colorOrVar)>)
    | #radialGradient(list<(Length.t, [< Color.t | Var.t] as 'colorOrVar)>)
    | #repeatingRadialGradient(list<(Length.t, [< Color.t | Var.t] as 'colorOrVar)>)
  ]

  let linearGradient = (angle, stops) => #linearGradient(angle, stops)
  let repeatingLinearGradient = (angle, stops) => #repeatingLinearGradient(angle, stops)
  let radialGradient = stops => #radialGradient(stops)
  let repeatingRadialGradient = stops => #repeatingRadialGradient(stops)

  let string_of_color = x =>
    switch x {
    | #...Color.t as co => Color.toString(co)
    | #...Var.t as va => Var.toString(va)
    }
  let string_of_stops = stops =>
    stops->Belt.List.map(((l, c)) => string_of_color(c) ++ (" " ++ Length.toString(l)))->join(", ")

  let toString = x =>
    switch x {
    | #linearGradient(angle, stops) =>
      "linear-gradient(" ++ (Angle.toString(angle) ++ (", " ++ (string_of_stops(stops) ++ ")")))
    | #repeatingLinearGradient(angle, stops) =>
      "repeating-linear-gradient(" ++
      (Angle.toString(angle) ++
      (", " ++ (string_of_stops(stops) ++ ")")))
    | #radialGradient(stops) => "radial-gradient(" ++ (string_of_stops(stops) ++ ")")
    | #repeatingRadialGradient(stops) =>
      "repeating-radial-gradient(" ++ (string_of_stops(stops) ++ ")")
    }
}

module BackgroundImage = {
  type t = [#none]

  let toString = x =>
    switch x {
    | #none => "none"
    }
}

module GeometyBox = {
  type t = [
    | #marginBox
    | #borderBox
    | #paddingBox
    | #contentBox
    | #fillBox
    | #strokeBox
    | #viewBox
  ]

  let marginBox = #marginBox
  let borderBox = #borderBox
  let paddingBox = #paddingBox
  let contentBox = #contentBox
  let fillBox = #fillBox
  let strokeBox = #strokeBox
  let viewBox = #viewBox

  let toString = x =>
    switch x {
    | #marginBox => "margin-box"
    | #borderBox => "border-box"
    | #paddingBox => "padding-box"
    | #contentBox => "content-box"
    | #fillBox => "fill-box"
    | #strokeBox => "stroke-box"
    | #viewBox => "view-box"
    }
}

module ClipPath = {
  type t = [#none]

  let toString = x =>
    switch x {
    | #none => "none"
    }
}

module BackfaceVisibility = {
  type t = [#visible | #hidden]

  let toString = x =>
    switch x {
    | #visible => "visible"
    | #hidden => "hidden"
    }
}

module Flex = {
  type t = [#auto | #initial | #none]

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #initial => "initial"
    | #none => "none"
    }
}

module TransformStyle = {
  type t = [#preserve3d | #flat]

  let toString = x =>
    switch x {
    | #preserve3d => "preserve-3d"
    | #flat => "flat"
    }
}

module ListStyleImage = {
  type t = [#none]

  let toString = x =>
    switch x {
    | #none => "none"
    }
}

module FontFamilyName = {
  type t = [
    | #custom(string)
    | #serif
    | #sansSerif
    | #cursive
    | #fantasy
    | #monospace
    | #systemUi
    | #emoji
    | #math
    | #fangsong
  ]

  // let custom = #custom
  // let serif = #serif
  // let sansSerif = #sansSerif
  // let cursive = #cursive
  // let fantasy = #fantasy
  // let monospace = #monospace
  // let systemUi = #systemUi
  // let emoji = #emoji
  // let math = #math
  // let fangsong = #fangsong

  let toString = x =>
    switch x {
    | #custom(name) => name
    | #serif => "serif"
    | #sansSerif => "sans-serif"
    | #cursive => "cursive"
    | #fantasy => "fantasy"
    | #monospace => "monospace"
    | #systemUi => "system-ui"
    | #emoji => "emoji"
    | #math => "math"
    | #fangsong => "fangsong"
    }
}

module FontDisplay = {
  type t = [#auto | #block | #swap | #fallback | #optional]

  let auto = #auto
  let block = #block
  let swap = #swap
  let fallback = #fallback
  let optional = #optional

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #block => "block"
    | #swap => "swap"
    | #fallback => "fallback"
    | #optional => "optional"
    }
}

module CounterStyleType = {
  type t = [ListStyleType.t]

  let toString = x =>
    switch x {
    | #...ListStyleType.t as c => ListStyleType.toString(c)
    }
}

module Counter = {
  type style = [CounterStyleType.t | #unset]
  type t = [#counter(string, style)]

  let counter = (~style=#unset, name) => #counter(name, style)

  let toString = x =>
    switch x {
    | #counter(counter, style) =>
      switch style {
      | #unset => "counter(" ++ (counter ++ ")")
      | #...CounterStyleType.t as t =>
        "counter(" ++ (counter ++ ("," ++ (CounterStyleType.toString(t) ++ ")")))
      }
    }
}

module Counters = {
  type style = [CounterStyleType.t | #unset]
  type t = [#counters(string, string, style)]

  let counters = (~style=#unset, ~separator="", name) => #counters(name, separator, style)

  let toString = x =>
    switch x {
    | #counters(name, separator, style) =>
      switch style {
      | #unset => "counters(" ++ (name ++ (",\"" ++ (separator ++ "\")")))
      | #...CounterStyleType.t as s =>
        "counters(" ++
        (name ++
        (",\"" ++ (separator ++ ("\"," ++ (CounterStyleType.toString(s) ++ ")")))))
      }
    }
}

module CounterIncrement = {
  type t = [#none | #increment(string, int)]

  let increment = (~value=1, name) => #increment(name, value)

  let toString = x =>
    switch x {
    | #none => "none"
    | #increment(name, value) => name ++ (" " ++ string_of_int(value))
    }
}

module CounterReset = {
  type t = [#none | #reset(string, int)]

  let reset = (~value=0, name) => #reset(name, value)

  let toString = x =>
    switch x {
    | #none => "none"
    | #reset(name, value) => name ++ (" " ++ string_of_int(value))
    }
}

module CounterSet = {
  type t = [#none | #set(string, int)]

  let set = (~value=0, name) => #set(name, value)

  let toString = x =>
    switch x {
    | #none => "none"
    | #set(name, value) => name ++ (" " ++ string_of_int(value))
    }
}

module Content = {
  type t = [
    | #none
    | #normal
    | #openQuote
    | #closeQuote
    | #noOpenQuote
    | #noCloseQuote
    | #attr(string)
    | #text(string)
  ]

  let toString = x =>
    switch x {
    | #none => "none"
    | #normal => "normal"
    | #openQuote => "open-quote"
    | #closeQuote => "close-quote"
    | #noOpenQuote => "no-open-quote"
    | #noCloseQuote => "no-close-quote"
    | #attr(name) => "attr(" ++ (name ++ ")")
    | #text(string) => j`"$string"`
    }
}

module SVG = {
  module Fill = {
    type t = [#none | #contextFill | #contextStroke]

    let contextFill = #contextFill
    let contextStroke = #contextStroke

    let toString = x =>
      switch x {
      | #none => "none"
      | #contextFill => "context-fill"
      | #contextStroke => "context-stroke"
      }
  }
}

module Colors = {
  type t = [
    | Color.t
    | Var.t
    | #black
    | #white
    | #gray
    | @as("gray.50") #gray50
    | @as("gray.100") #gray100
    | @as("gray.200") #gray200
    | @as("gray.300") #gray300
    | @as("gray.400") #gray400
    | @as("gray.500") #gray500
    | @as("gray.600") #gray600
    | @as("gray.700") #gray700
    | @as("gray.800") #gray800
    | @as("gray.900") #gray900
    | #red
    | @as("red.50") #red50
    | @as("red.100") #red100
    | @as("red.200") #red200
    | @as("red.300") #red300
    | @as("red.400") #red400
    | @as("red.500") #red500
    | @as("red.600") #red600
    | @as("red.700") #red700
    | @as("red.800") #red800
    | @as("red.900") #red900
    | #orange
    | @as("orange.50") #orange50
    | @as("orange.100") #orange100
    | @as("orange.200") #orange200
    | @as("orange.300") #orange300
    | @as("orange.400") #orange400
    | @as("orange.500") #orange500
    | @as("orange.600") #orange600
    | @as("orange.700") #orange700
    | @as("orange.800") #orange800
    | @as("orange.900") #orange900
    | #yellow
    | @as("yellow.50") #yellow50
    | @as("yellow.100") #yellow100
    | @as("yellow.200") #yellow200
    | @as("yellow.300") #yellow300
    | @as("yellow.400") #yellow400
    | @as("yellow.500") #yellow500
    | @as("yellow.600") #yellow600
    | @as("yellow.700") #yellow700
    | @as("yellow.800") #yellow800
    | @as("yellow.900") #yellow900
    | #green
    | @as("green.50") #green50
    | @as("green.100") #green100
    | @as("green.200") #green200
    | @as("green.300") #green300
    | @as("green.400") #green400
    | @as("green.500") #green500
    | @as("green.600") #green600
    | @as("green.700") #green700
    | @as("green.800") #green800
    | @as("green.900") #green900
    | #teal
    | @as("teal.50") #teal50
    | @as("teal.100") #teal100
    | @as("teal.200") #teal200
    | @as("teal.300") #teal300
    | @as("teal.400") #teal400
    | @as("teal.500") #teal500
    | @as("teal.600") #teal600
    | @as("teal.700") #teal700
    | @as("teal.800") #teal800
    | @as("teal.900") #teal900
    | #blue
    | @as("blue.50") #blue50
    | @as("blue.100") #blue100
    | @as("blue.200") #blue200
    | @as("blue.300") #blue300
    | @as("blue.400") #blue400
    | @as("blue.500") #blue500
    | @as("blue.600") #blue600
    | @as("blue.700") #blue700
    | @as("blue.800") #blue800
    | @as("blue.900") #blue900
    | #cyan
    | @as("cyan.50") #cyan50
    | @as("cyan.100") #cyan100
    | @as("cyan.200") #cyan200
    | @as("cyan.300") #cyan300
    | @as("cyan.400") #cyan400
    | @as("cyan.500") #cyan500
    | @as("cyan.600") #cyan600
    | @as("cyan.700") #cyan700
    | @as("cyan.800") #cyan800
    | @as("cyan.900") #cyan900
    | #purple
    | @as("purple.50") #purple50
    | @as("purple.100") #purple100
    | @as("purple.200") #purple200
    | @as("purple.300") #purple300
    | @as("purple.400") #purple400
    | @as("purple.500") #purple500
    | @as("purple.600") #purple600
    | @as("purple.700") #purple700
    | @as("purple.800") #purple800
    | @as("purple.900") #purple900
    | #pink
    | @as("pink.50") #pink50
    | @as("pink.100") #pink100
    | @as("pink.200") #pink200
    | @as("pink.300") #pink300
    | @as("pink.400") #pink400
    | @as("pink.500") #pink500
    | @as("pink.600") #pink600
    | @as("pink.700") #pink700
    | @as("pink.800") #pink800
    | @as("pink.900") #pink900
  ]

  let toString = x =>
    switch x {
    | #...Color.t as co => co->Color.toString
    | #...Var.t as va => va->Var.toString
    | #black => "black"
    | #white => "white"
    | #gray => "gray"
    | #gray50 => "gray.50"
    | #gray100 => "gray.100"
    | #gray200 => "gray.200"
    | #gray300 => "gray.300"
    | #gray400 => "gray.400"
    | #gray500 => "gray.500"
    | #gray600 => "gray.600"
    | #gray700 => "gray.700"
    | #gray800 => "gray.800"
    | #gray900 => "gray.900"
    | #red => "red"
    | #red50 => "red.50"
    | #red100 => "red.100"
    | #red200 => "red.200"
    | #red300 => "red.300"
    | #red400 => "red.400"
    | #red500 => "red.500"
    | #red600 => "red.600"
    | #red700 => "red.700"
    | #red800 => "red.800"
    | #red900 => "red.900"
    | #orange => "orange"
    | #orange50 => "orange.50"
    | #orange100 => "orange.100"
    | #orange200 => "orange.200"
    | #orange300 => "orange.300"
    | #orange400 => "orange.400"
    | #orange500 => "orange.500"
    | #orange600 => "orange.600"
    | #orange700 => "orange.700"
    | #orange800 => "orange.800"
    | #orange900 => "orange.900"
    | #yellow => "yellow"
    | #yellow50 => "yellow50"
    | #yellow100 => "yellow.100"
    | #yellow200 => "yellow.200"
    | #yellow300 => "yellow.300"
    | #yellow400 => "yellow.400"
    | #yellow500 => "yellow.500"
    | #yellow600 => "yellow.600"
    | #yellow700 => "yellow.700"
    | #yellow800 => "yellow.800"
    | #yellow900 => "yellow.900"
    | #green => "green"
    | #green50 => "green.50"
    | #green100 => "green.100"
    | #green200 => "green.200"
    | #green300 => "green.300"
    | #green400 => "green.400"
    | #green500 => "green.500"
    | #green600 => "green.600"
    | #green700 => "green.700"
    | #green800 => "green.800"
    | #green900 => "green.900"
    | #teal => "teal"
    | #teal50 => "teal.50"
    | #teal100 => "teal.100"
    | #teal200 => "teal.200"
    | #teal300 => "teal.300"
    | #teal400 => "teal.400"
    | #teal500 => "teal.500"
    | #teal600 => "teal.600"
    | #teal700 => "teal.700"
    | #teal800 => "teal.800"
    | #teal900 => "teal.900"
    | #blue => "blue"
    | #blue50 => "blue.50"
    | #blue100 => "blue.100"
    | #blue200 => "blue.200"
    | #blue300 => "blue.300"
    | #blue400 => "blue.400"
    | #blue500 => "blue.500"
    | #blue600 => "blue.600"
    | #blue700 => "blue.700"
    | #blue800 => "blue.800"
    | #blue900 => "blue.900"
    | #cyan => "cyan"
    | #cyan50 => "cyan.50"
    | #cyan100 => "cyan.100"
    | #cyan200 => "cyan.200"
    | #cyan300 => "cyan.300"
    | #cyan400 => "cyan.400"
    | #cyan500 => "cyan.500"
    | #cyan600 => "cyan.600"
    | #cyan700 => "cyan.700"
    | #cyan800 => "cyan.800"
    | #cyan900 => "cyan.900"
    | #purple => "purple"
    | #purple50 => "purple.50"
    | #purple100 => "purple.100"
    | #purple200 => "purple.200"
    | #purple300 => "purple.300"
    | #purple400 => "purple.400"
    | #purple500 => "purple.500"
    | #purple600 => "purple.600"
    | #purple700 => "purple.700"
    | #purple800 => "purple.800"
    | #purple900 => "purple.900"
    | #pink => "pink"
    | #pink50 => "pink.50"
    | #pink100 => "pink.100"
    | #pink200 => "pink.200"
    | #pink300 => "pink.300"
    | #pink400 => "pink.400"
    | #pink500 => "pink.500"
    | #pink600 => "pink.600"
    | #pink700 => "pink.700"
    | #pink800 => "pink.800"
    | #pink900 => "pink.900"
    }
}

module Typography = {
  module FontSizes = {
    type t = [
      | #xs
      | #sm
      | #md
      | #lg
      | #xl
      | #xl2
      | #xl3
      | #xl4
      | #xl5
      | #xl6
      | #xl7
      | #xl8
      | #xl9
    ]

    let toString = x =>
      switch x {
      | #xs => "xs"
      | #sm => "sm"
      | #md => "md"
      | #lg => "lg"
      | #xl => "xl"
      | #xl2 => "2xl"
      | #xl3 => "3xl"
      | #xl4 => "4xl"
      | #xl5 => "5xl"
      | #xl6 => "6xl"
      | #xl7 => "7xl"
      | #xl8 => "8xl"
      | #xl9 => "9xl"
      }
  }

  module FontWeights = {
    type t = [
      | Var.t
      | Cascading.t
      | #hairline
      | #thin
      | #light
      | #normal
      | #medium
      | #semibold
      | #bold
      | #extrabold
      | #black
    ]

    let toString = x =>
      switch x {
      | #...Var.t as v => v->Var.toString
      | #...Cascading.t as c => c->Cascading.toString
      | #hairline => "hairline"
      | #thin => "thin"
      | #light => "light"
      | #normal => "normal"
      | #medium => "medium"
      | #semibold => "semibold"
      | #bold => "bold"
      | #extrabold => "extrabold"
      | #black => "black"
      }
  }
  module FontStyles = {
    type t = [
      | FontStyle.t
      | Var.t
      | Cascading.t
    ]
    let toString = x =>
      switch x {
      | #...FontStyle.t as fs => fs->FontStyle.toString
      | #...Var.t as v => v->Var.toString
      | #...Cascading.t as c => c->Cascading.toString
      }
  }
  module LineHeights = {
    type t = [
      | LineHeight.t
      | Length.t
      | Var.t
      | Cascading.t
      | #none
      | #shorter
      | #short
      | #base
      | #tall
      | #taller
      | #3
      | #4
      | #5
      | #6
      | #7
      | #8
      | #9
      | #10
    ]
    let toString = x =>
      switch x {
      | #...LineHeight.t as l => l->LineHeight.toString
      | #...Length.t as l => l->Length.toString
      | #...Var.t as v => v->Var.toString
      | #...Cascading.t as c => c->Cascading.toString
      | #none => "none"
      | #shorter => "shorter"
      | #short => "short"
      | #base => "base"
      | #tall => "tall"
      | #taller => "taller"
      | #3 => "3"
      | #4 => "4"
      | #5 => "5"
      | #6 => "6"
      | #7 => "7"
      | #8 => "8"
      | #9 => "9"
      | #10 => "1"
      }
  }
  module LetterSpacings = {
    type t = [
      | LetterSpacing.t
      | Length.t
      | Var.t
      | Cascading.t
      | #tighter
      | #tight
      | #wide
      | #wider
      | #widest
    ]

    let toString = x =>
      switch x {
      | #...LetterSpacing.t as l => l->LetterSpacing.toString
      | #...Length.t as l => l->Length.toString
      | #...Var.t as v => v->Var.toString
      | #...Cascading.t as c => c->Cascading.toString
      | #tighter => "tighter"
      | #tight => "tight"
      | #wide => "wide"
      | #wider => "wider"
      | #widest => "widest"
      }
  }
  module TextAligns = {
    type t = [
      | TextAlign.t
      | Var.t
      | Cascading.t
    ]
    let toString = x =>
      switch x {
      | #...TextAlign.t as l => l->TextAlign.toString
      | #...Var.t as v => v->Var.toString
      | #...Cascading.t as c => c->Cascading.toString
      }
  }
  module TextDecorations = {
    type t = [
      | Var.t
      | Cascading.t
      | #none
      | #underline
      | #overline
      | #lineThrough
    ]
    let toString = x =>
      switch x {
      | #...Var.t as v => v->Var.toString
      | #...Cascading.t as c => c->Cascading.toString
      | #none => "none"
      | #underline => "underline"
      | #overline => "overline"
      | #lineThrough => "line-through"
      }
  }
  module TextTransforms = {
    type t = [
      | TextTransform.t
      | Var.t
      | Cascading.t
    ]
    let toString = x =>
      switch x {
      | #...TextTransform.t as t => t->TextTransform.toString
      | #...Var.t as v => v->Var.toString
      | #...Cascading.t as c => c->Cascading.toString
      }
  }
}

module Breakpoints = {
  type t = [
    | #sm
    | #md
    | #lg
    | #xl
    | #xl2
  ]

  let toString = x =>
    switch x {
    | #sm => "sm"
    | #md => "md"
    | #lg => "lg"
    | #xl => "xl"
    | #xl2 => "2xl"
    }
}

module Spaces = {
  type t = [
    | #px_
    | #0
    | #"0.5"
    | #1
    | #"1.5"
    | #2
    | #"2.5"
    | #3
    | #"3.5"
    | #4
    | #5
    | #6
    | #7
    | #8
    | #9
    | #10
    | #12
    | #14
    | #16
    | #20
    | #24
    | #28
    | #32
    | #36
    | #40
    | #44
    | #48
    | #52
    | #56
    | #60
    | #64
    | #72
    | #80
    | #96
  ]

  let toString = x =>
    switch x {
    | #px_ => "px"
    | #0 => "0"
    | #"0.5" => "0.5"
    | #1 => "1"
    | #"1.5" => "1.5"
    | #2 => "2"
    | #"2.5" => "2.t"
    | #3 => "3"
    | #"3.5" => "3.5"
    | #4 => "4"
    | #5 => "5"
    | #6 => "6"
    | #7 => "7"
    | #8 => "8"
    | #9 => "9"
    | #10 => "10"
    | #12 => "12"
    | #14 => "14"
    | #16 => "16"
    | #20 => "20"
    | #24 => "24"
    | #28 => "28"
    | #32 => "32"
    | #36 => "36"
    | #40 => "40"
    | #44 => "44"
    | #48 => "48"
    | #52 => "52"
    | #56 => "56"
    | #60 => "60"
    | #64 => "64"
    | #72 => "72"
    | #80 => "80"
    | #96 => "96"
    }
}

module Sizes = {
  type t = [
    | Spaces.t
    | #max
    | #min
    | #full
    | #xs3
    | #xs2
    | #xs
    | #sm
    | #md
    | #lg
    | #xl
    | #xl2
    | #xl3
    | #xl4
    | #xl5
    | #xl6
    | #xl7
    | #xl8
    | #containerSM
    | #containerMD
    | #containerLG
    | #containerXL
  ]

  let toString = x =>
    switch x {
    | #...Spaces.t as spaces => spaces->Spaces.toString
    | #max => "max-content"
    | #min => "min-content"
    | #full => "full"
    | #xs3 => "14rem"
    | #xs2 => "16rem"
    | #xs => "20rem"
    | #sm => "24rem"
    | #md => "28rem"
    | #lg => "32rem"
    | #xl => "36rem"
    | #xl2 => "42rem"
    | #xl3 => "48rem"
    | #xl4 => "56rem"
    | #xl5 => "64rem"
    | #xl6 => "72rem"
    | #xl7 => "80rem"
    | #xl8 => "90rem"
    | #containerSM => "container.sm"
    | #containerMD => "container.md"
    | #containerLG => "container.lg"
    | #containerXL => "container.xl"
    }
}

module Radii = {
  type t = [
    | #none
    | #sm
    | #base
    | #md
    | #lg
    | #xl
    | #xl2
    | #xl3
    | #full
  ]

  let toString = x =>
    switch x {
    | #none => "none"
    | #sm => "sm"
    | #base => "base"
    | #md => "md"
    | #lg => "lg"
    | #xl => "xl"
    | #xl2 => "2xl"
    | #xl3 => "3xl"
    | #full => "full"
    }
}

module ZIndex = {
  type t = [
    | #hide
    | #auto
    | #base
    | #docked
    | #dropdown
    | #sticky
    | #banner
    | #overlay
    | #modal
    | #popover
    | #skipLink
    | #toast
    | #tooltip
  ]

  let toString = x =>
    switch x {
    | #hide => "hide"
    | #auto => "auto"
    | #base => "base"
    | #docked => "docked"
    | #dropdown => "dropdown"
    | #sticky => "sticky"
    | #banner => "banner"
    | #overlay => "overlay"
    | #modal => "modal"
    | #popover => "popover"
    | #skipLink => "skipLink"
    | #toast => "toast"
    | #tooltip => "tooltip"
    }
}

module Borders = {
  type t = [
    | #none
    | #1
    | #2
    | #4
    | #8
    | #border(Length.t, BorderStyle.t, Colors.t)
  ]

  let toString = x =>
    switch x {
    | #none => "none"
    | #1 => "1px"
    | #2 => "2px"
    | #4 => "4px"
    | #8 => "8px"
    | #border(px, style, color) => {
        let px = px->Length.toString
        let style = style->BorderStyle.toString
        let color = color->Colors.toString

        j`$px $style $color`
      }
    }
}

module BorderWidth = {
  type t = [
    | Length.t
  ]

  let toString = x =>
    switch x {
    | #...Length.t as l => l->Length.toString
    }
}
module Minmax = {
  type t = [
    | #auto
    | #calc([#add | #sub], Length.t, Length.t)
    | #ch(float)
    | #cm(float)
    | #em(float)
    | #ex(float)
    | #mm(float)
    | #percent(float)
    | #pt(int)
    | #px(int)
    | #pxFloat(float)
    | #rem(float)
    | #vh(float)
    | #vmax(float)
    | #vmin(float)
    | #vw(float)
    | #fr(float)
    | #inch(float)
    | #pc(float)
    | #zero
    | #minContent
    | #maxContent
  ]

  let toString = x =>
    switch x {
    | #auto => "auto"
    | #calc(#add, a, b) => "calc(" ++ (Length.toString(a) ++ (" + " ++ (Length.toString(b) ++ ")")))
    | #calc(#sub, a, b) => "calc(" ++ (Length.toString(a) ++ (" - " ++ (Length.toString(b) ++ ")")))
    | #ch(x) => Js.Float.toString(x) ++ "ch"
    | #cm(x) => Js.Float.toString(x) ++ "cm"
    | #em(x) => Js.Float.toString(x) ++ "em"
    | #ex(x) => Js.Float.toString(x) ++ "ex"
    | #mm(x) => Js.Float.toString(x) ++ "mm"
    | #percent(x) => Js.Float.toString(x) ++ "%"
    | #pt(x) => Js.Int.toString(x) ++ "pt"
    | #px(x) => Js.Int.toString(x) ++ "px"
    | #pxFloat(x) => Js.Float.toString(x) ++ "px"
    | #rem(x) => Js.Float.toString(x) ++ "rem"
    | #vh(x) => Js.Float.toString(x) ++ "vh"
    | #vmax(x) => Js.Float.toString(x) ++ "vmax"
    | #vmin(x) => Js.Float.toString(x) ++ "vmin"
    | #vw(x) => Js.Float.toString(x) ++ "vw"
    | #fr(x) => Js.Float.toString(x) ++ "fr"
    | #inch(x) => Js.Float.toString(x) ++ "in"
    | #pc(x) => Js.Float.toString(x) ++ "pc"
    | #zero => "0"
    | #minContent => "min-content"
    | #maxContent => "max-content"
    }
}

module Dimension = {
  type t = [
    | #auto
    | #calc([#add | #sub], Length.t, Length.t)
    | #ch(float)
    | #cm(float)
    | #em(float)
    | #ex(float)
    | #mm(float)
    | #percent(float)
    | #pt(int)
    | #px(int)
    | #pxFloat(float)
    | #rem(float)
    | #vh(float)
    | #vmax(float)
    | #vmin(float)
    | #vw(float)
    | #fr(float)
    | #inch(float)
    | #pc(float)
    | #zero
    | #fitContent
    | #minContent
    | #maxContent
    | #minmax(Minmax.t, Minmax.t)
  ]
  let toString = x =>
    switch x {
    | #auto => "auto"
    | #none => "none"
    | #calc(#add, a, b) => "calc(" ++ (Length.toString(a) ++ (" + " ++ (Length.toString(b) ++ ")")))
    | #calc(#sub, a, b) => "calc(" ++ (Length.toString(a) ++ (" - " ++ (Length.toString(b) ++ ")")))
    | #ch(x) => Js.Float.toString(x) ++ "ch"
    | #cm(x) => Js.Float.toString(x) ++ "cm"
    | #em(x) => Js.Float.toString(x) ++ "em"
    | #ex(x) => Js.Float.toString(x) ++ "ex"
    | #mm(x) => Js.Float.toString(x) ++ "mm"
    | #percent(x) => Js.Float.toString(x) ++ "%"
    | #pt(x) => Js.Int.toString(x) ++ "pt"
    | #px(x) => Js.Int.toString(x) ++ "px"
    | #pxFloat(x) => Js.Float.toString(x) ++ "px"
    | #rem(x) => Js.Float.toString(x) ++ "rem"
    | #vh(x) => Js.Float.toString(x) ++ "vh"
    | #vmax(x) => Js.Float.toString(x) ++ "vmax"
    | #vmin(x) => Js.Float.toString(x) ++ "vmin"
    | #vw(x) => Js.Float.toString(x) ++ "vw"
    | #fr(x) => Js.Float.toString(x) ++ "fr"
    | #inch(x) => Js.Float.toString(x) ++ "in"
    | #pc(x) => Js.Float.toString(x) ++ "pc"
    | #zero => "0"
    | #fitContent => "fit-content"
    | #minContent => "min-content"
    | #maxContent => "max-content"
    | #minmax(a, b) => "minmax(" ++ (Minmax.toString(a) ++ ("," ++ (Minmax.toString(b) ++ ")")))
    }
}
module GridColumn = {
  type rec t = [
    | #auto
    | #int(int)
    | #span(int)
    | #name(string)
    | #slash(t, t)
  ]
  let rec toString = x =>
    switch x {
    | #auto => "auto"
    | #int(i) => i->Js.Int.toString
    | #span(i) => "span " ++ i->Js.Int.toString
    | #name(name) => name
    | #slash(a, b) => {
        let a = a->toString
        let b = b->toString
        j`$a / $b`
      }
    }
}

module GridRow = {
  type rec t = [
    | #auto
    | #int(int)
    | #span(int)
    | #name(string)
    | #slash(t, t)
  ]
  let rec toString = x =>
    switch x {
    | #auto => "auto"
    | #int(i) => i->Js.Int.toString
    | #span(i) => "span " ++ i->Js.Int.toString
    | #name(name) => name
    | #slash(a, b) => {
        let a = a->toString
        let b = b->toString
        j`$a / $b`
      }
    }
}

module TrackLength = {
  type t = [
    | Length.t
    | #auto
    | #fr(float)
    | #minContent
    | #maxContent
    | #minmax(Minmax.t, Minmax.t)
  ]

  let toString = x =>
    switch x {
    | #...Length.t as l => l->Length.toString
    | #auto => "auto"
    | #fr(x) => x->Js.Float.toString->Js.String2.concat("fr")
    | #minContent => "min-content"
    | #maxContent => "max-content"
    | #minmax(min, max) => {
        let min = min->Minmax.toString
        let max = max->Minmax.toString
        j`minmax($min,$max)`
      }
    }
}

module GridLength = {
  type t = [
    | TrackLength.t
    | #repeat(RepeatValue.t, TrackLength.t)
  ]
  let toString = x =>
    switch x {
    | #...TrackLength.t as t => t->TrackLength.toString
    | #repeat(r, t) => {
        let r = r->RepeatValue.toString
        let t = t->Dimension.toString
        j`repeat($r, $t)`
      }
    }
}

module Gradients = {
  type t = [
    | #linear(Angle.t, array<(Length.t, Colors.t)>)
    | #repeatingLinear(Angle.t, array<(Length.t, Colors.t)>)
    | #radial(array<(Length.t, Colors.t)>)
    | #repeatingRadial(array<(Length.t, Colors.t)>)
  ]

  let string_of_stops = stops =>
    stops
    ->Js.Array2.map(((l, c)) => {
      let l = l->Length.toString
      let c = c->Colors.toString
      j`$c $l`
    })
    ->Js.Array2.joinWith(", ")

  let toString = x =>
    switch x {
    | #linear(angle, stops) =>
      "linear-gradient(" ++ (Angle.toString(angle) ++ (", " ++ (string_of_stops(stops) ++ ")")))
    | #repeatingLinear(angle, stops) =>
      "repeating-linear-gradient(" ++
      (Angle.toString(angle) ++
      (", " ++ (string_of_stops(stops) ++ ")")))
    | #radial(stops) => "radial-gradient(" ++ (string_of_stops(stops) ++ ")")
    | #repeatingRadial(stops) => "repeating-radial-gradient(" ++ (string_of_stops(stops) ++ ")")
    }
}

module BackgroundClips = {
  type t = [
    | Cascading.t
    | BackgroundClip.t
  ]

  let toString = x =>
    switch x {
    | #...Cascading.t as c => c->Cascading.toString
    | #...BackgroundClip.t as bc => bc->BackgroundClip.toString
    }
}
