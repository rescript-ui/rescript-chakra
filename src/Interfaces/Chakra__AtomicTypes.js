

import * as List from "rescript/lib/es6/list.js";
import * as $$String from "rescript/lib/es6/string.js";
import * as Belt_List from "rescript/lib/es6/belt_List.js";

function toString(x) {
  if (x === "inherit_") {
    return "inherit";
  } else if (x === "unset") {
    return "unset";
  } else {
    return "initial";
  }
}

var Cascading = {
  initial: "initial",
  inherit_: "inherit_",
  unset: "unset",
  toString: toString
};

function $$var(x) {
  return {
          NAME: "var",
          VAL: x
        };
}

function varDefault(x, $$default) {
  return {
          NAME: "varDefault",
          VAL: [
            x,
            $$default
          ]
        };
}

function prefix(x) {
  if (x.startsWith("--")) {
    return x;
  } else {
    return "--" + x;
  }
}

function toString$1(x) {
  if (x.NAME === "var") {
    return "var(" + (prefix(x.VAL) + ")");
  }
  var match = x.VAL;
  return "var(" + (prefix(match[0]) + ("," + (match[1] + ")")));
}

function s(x) {
  return {
          NAME: "s",
          VAL: x
        };
}

function ms(x) {
  return {
          NAME: "ms",
          VAL: x
        };
}

function toString$2(x) {
  if (x.NAME === "ms") {
    return x.VAL.toString() + "ms";
  } else {
    return x.VAL.toString() + "s";
  }
}

var Time = {
  s: s,
  ms: ms,
  toString: toString$2
};

function pct(x) {
  return {
          NAME: "percent",
          VAL: x
        };
}

function toString$3(x) {
  return x.VAL.toString() + "%";
}

var Percentage = {
  pct: pct,
  toString: toString$3
};

function toString$4(x) {
  return "url(" + (x.VAL + ")");
}

var Url = {
  toString: toString$4
};

function ch(x) {
  return {
          NAME: "ch",
          VAL: x
        };
}

function em(x) {
  return {
          NAME: "em",
          VAL: x
        };
}

function ex(x) {
  return {
          NAME: "ex",
          VAL: x
        };
}

function rem(x) {
  return {
          NAME: "rem",
          VAL: x
        };
}

function vh(x) {
  return {
          NAME: "vh",
          VAL: x
        };
}

function vw(x) {
  return {
          NAME: "vw",
          VAL: x
        };
}

function vmin(x) {
  return {
          NAME: "vmin",
          VAL: x
        };
}

function vmax(x) {
  return {
          NAME: "vmax",
          VAL: x
        };
}

function px(x) {
  return {
          NAME: "px",
          VAL: x
        };
}

function pxFloat(x) {
  return {
          NAME: "pxFloat",
          VAL: x
        };
}

function cm(x) {
  return {
          NAME: "cm",
          VAL: x
        };
}

function mm(x) {
  return {
          NAME: "mm",
          VAL: x
        };
}

function inch(x) {
  return {
          NAME: "inch",
          VAL: x
        };
}

function pc(x) {
  return {
          NAME: "pc",
          VAL: x
        };
}

function pt(x) {
  return {
          NAME: "pt",
          VAL: x
        };
}

function toString$5(x) {
  if (typeof x !== "object") {
    return "0";
  }
  var variant = x.NAME;
  if (variant === "pxFloat") {
    return x.VAL.toString() + "px";
  }
  if (variant === "inch") {
    return x.VAL.toString() + "in";
  }
  if (variant === "vmax") {
    return x.VAL.toString() + "vmax";
  }
  if (variant === "vmin") {
    return x.VAL.toString() + "vmin";
  }
  if (variant === "percent") {
    return x.VAL.toString() + "%";
  }
  if (variant === "ch") {
    return x.VAL.toString() + "ch";
  }
  if (variant === "cm") {
    return x.VAL.toString() + "cm";
  }
  if (variant === "em") {
    return x.VAL.toString() + "em";
  }
  if (variant === "ex") {
    return x.VAL.toString() + "ex";
  }
  if (variant === "mm") {
    return x.VAL.toString() + "mm";
  }
  if (variant === "pc") {
    return x.VAL.toString() + "pc";
  }
  if (variant === "pt") {
    return x.VAL.toString() + "pt";
  }
  if (variant === "px") {
    return x.VAL.toString() + "px";
  }
  if (variant === "vh") {
    return x.VAL.toString() + "vh";
  }
  if (variant === "vw") {
    return x.VAL.toString() + "vw";
  }
  if (variant === "rem") {
    return x.VAL.toString() + "rem";
  }
  var match = x.VAL;
  if (match[0] === "sub") {
    return "calc(" + (toString$5(match[1]) + (" - " + (toString$5(match[2]) + ")")));
  } else {
    return "calc(" + (toString$5(match[1]) + (" + " + (toString$5(match[2]) + ")")));
  }
}

var Length = {
  ch: ch,
  em: em,
  ex: ex,
  rem: rem,
  vh: vh,
  vw: vw,
  vmin: vmin,
  vmax: vmax,
  px: px,
  pxFloat: pxFloat,
  cm: cm,
  mm: mm,
  inch: inch,
  pc: pc,
  pt: pt,
  zero: "zero",
  toString: toString$5
};

function deg(x) {
  return {
          NAME: "deg",
          VAL: x
        };
}

function rad(x) {
  return {
          NAME: "rad",
          VAL: x
        };
}

function grad(x) {
  return {
          NAME: "grad",
          VAL: x
        };
}

function turn(x) {
  return {
          NAME: "turn",
          VAL: x
        };
}

function toString$6(x) {
  var variant = x.NAME;
  if (variant === "turn") {
    return x.VAL.toString() + "turn";
  } else if (variant === "deg") {
    return x.VAL.toString() + "deg";
  } else if (variant === "rad") {
    return x.VAL.toString() + "rad";
  } else {
    return x.VAL.toString() + "grad";
  }
}

var Angle = {
  deg: deg,
  rad: rad,
  grad: grad,
  turn: turn,
  toString: toString$6
};

function toString$7(x) {
  if (x === "rtl") {
    return "rtl";
  } else {
    return "ltr";
  }
}

var Direction = {
  ltr: "ltr",
  rtl: "rtl",
  toString: toString$7
};

function toString$8(x) {
  if (x === "fixed") {
    return "fixed";
  } else if (x === "static") {
    return "static";
  } else if (x === "sticky") {
    return "sticky";
  } else if (x === "relative") {
    return "relative";
  } else {
    return "absolute";
  }
}

var Position = {
  absolute: "absolute",
  relative: "relative",
  $$static: "static",
  fixed: "fixed",
  sticky: "sticky",
  toString: toString$8
};

function toString$9(x) {
  if (x === "none") {
    return "none";
  } else if (x === "vertical") {
    return "vertical";
  } else if (x === "horizontal") {
    return "horizontal";
  } else if (x === "inline") {
    return "inline";
  } else if (x === "block") {
    return "block";
  } else {
    return "both";
  }
}

var Resize = {
  none: "none",
  both: "both",
  horizontal: "horizontal",
  vertical: "vertical",
  block: "block",
  inline: "inline",
  toString: toString$9
};

function toString$10(x) {
  if (x === "normal") {
    return "normal";
  } else {
    return "smallCaps";
  }
}

var FontVariant = {
  normal: "normal",
  smallCaps: "smallCaps",
  toString: toString$10
};

function toString$11(x) {
  if (x === "oblique") {
    return "oblique";
  } else if (x === "normal") {
    return "normal";
  } else {
    return "italic";
  }
}

var FontStyle = {
  normal: "normal",
  italic: "italic",
  oblique: "oblique",
  toString: toString$11
};

function toString$12(x) {
  if (x === "fill") {
    return "fill";
  } else if (x === "minContent") {
    return "min-content";
  } else if (x === "fitContent") {
    return "fit-content";
  } else if (x === "maxContent") {
    return "max-content";
  } else if (x === "content") {
    return "content";
  } else {
    return "auto";
  }
}

var FlexBasis = {
  fill: "fill",
  content: "content",
  maxContent: "maxContent",
  minContent: "minContent",
  fitContent: "fitContent",
  toString: toString$12
};

function toString$13(x) {
  if (x === "scroll") {
    return "scroll";
  } else if (x === "hidden") {
    return "hidden";
  } else if (x === "visible") {
    return "visible";
  } else {
    return "auto";
  }
}

var Overflow = {
  hidden: "hidden",
  visible: "visible",
  scroll: "scroll",
  auto: "auto",
  toString: toString$13
};

function toString$14(x) {
  return "auto";
}

var Margin = {
  auto: "auto",
  toString: toString$14
};

function toString$15(x) {
  if (x === "columnDense") {
    return "column dense";
  } else if (x === "rowDense") {
    return "row dense";
  } else if (x === "row") {
    return "row";
  } else {
    return "column";
  }
}

var GridAutoFlow = {
  toString: toString$15
};

function toString$16(x) {
  return "normal";
}

var RowGap = {
  toString: toString$16
};

function toString$17(x) {
  return "normal";
}

var ColumnGap = {
  toString: toString$17
};

function toString$18(x) {
  if (x === "bottom") {
    return "bottom";
  } else if (x === "sub") {
    return "sub";
  } else if (x === "top") {
    return "top";
  } else if (x === "super") {
    return "super";
  } else if (x === "baseline") {
    return "baseline";
  } else if (x === "textBottom") {
    return "text-bottom";
  } else if (x === "textTop") {
    return "text-top";
  } else {
    return "middle";
  }
}

var VerticalAlign = {
  toString: toString$18
};

function steps(i, dir) {
  return {
          NAME: "steps",
          VAL: [
            i,
            dir
          ]
        };
}

function cubicBezier(a, b, c, d) {
  return {
          NAME: "cubicBezier",
          VAL: [
            a,
            b,
            c,
            d
          ]
        };
}

function toString$19(x) {
  if (typeof x !== "object") {
    if (x === "easeInOut") {
      return "ease-in-out";
    } else if (x === "linear") {
      return "linear";
    } else if (x === "stepStart") {
      return "step-start";
    } else if (x === "stepEnd") {
      return "step-end";
    } else if (x === "easeIn") {
      return "ease-in";
    } else if (x === "easeOut") {
      return "ease-out";
    } else {
      return "ease";
    }
  }
  if (x.NAME === "steps") {
    var match = x.VAL;
    var i = match[0];
    if (match[1] === "start") {
      return "steps(" + (i.toString() + ", start)");
    } else {
      return "steps(" + (i.toString() + ", end)");
    }
  }
  var match$1 = x.VAL;
  return "cubic-bezier(" + (match$1[0].toString() + (", " + (match$1[1].toString() + (", " + (match$1[2].toString() + (", " + (match$1[3].toString() + ")")))))));
}

function toString$20(x) {
  if (typeof x === "object") {
    return x.VAL.toString();
  } else if (x === "autoFill") {
    return "auto-fill";
  } else {
    return "auto-fit";
  }
}

var RepeatValue = {
  toString: toString$20
};

function toString$21(x) {
  if (x === "none") {
    return "none";
  } else if (x === "circle") {
    return "circle";
  } else if (x === "lowerGreek") {
    return "lower-greek";
  } else if (x === "square") {
    return "square";
  } else if (x === "lowerAlpha") {
    return "lower-alpha";
  } else if (x === "upperAlpha") {
    return "upper-alpha";
  } else if (x === "decimal") {
    return "decimal";
  } else if (x === "lowerRoman") {
    return "lower-roman";
  } else if (x === "lowerLatin") {
    return "lower-latin";
  } else if (x === "upperRoman") {
    return "upper-roman";
  } else if (x === "upperLatin") {
    return "upper-latin";
  } else {
    return "disc";
  }
}

var ListStyleType = {
  toString: toString$21
};

function toString$22(x) {
  if (x === "inside") {
    return "inside";
  } else {
    return "outside";
  }
}

var ListStylePosition = {
  toString: toString$22
};

function toString$23(x) {
  if (x === "hidden") {
    return "hidden";
  } else if (x === "ridge") {
    return "ridge";
  } else if (x === "solid") {
    return "solid";
  } else if (x === "outset") {
    return "outset";
  } else if (x === "groove") {
    return "grove";
  } else if (x === "dashed") {
    return "dashed";
  } else if (x === "dotted") {
    return "dotted";
  } else if (x === "double") {
    return "double";
  } else if (x === "inset") {
    return "inset";
  } else {
    return "none";
  }
}

var OutlineStyle = {
  toString: toString$23
};

function toString$24(x) {
  if (typeof x === "object") {
    return x.VAL.toString();
  } else if (x === "thin") {
    return "100";
  } else if (x === "semiBold") {
    return "600";
  } else if (x === "bolder") {
    return "bolder";
  } else if (x === "light") {
    return "300";
  } else if (x === "extraBold") {
    return "800";
  } else if (x === "extraLight") {
    return "200";
  } else if (x === "medium") {
    return "500";
  } else if (x === "lighter") {
    return "lighter";
  } else if (x === "normal") {
    return "400";
  } else if (x === "black") {
    return "900";
  } else {
    return "700";
  }
}

var FontWeight = {
  thin: "thin",
  extraLight: "extraLight",
  light: "light",
  medium: "medium",
  semiBold: "semiBold",
  bold: "bold",
  extraBold: "extraBold",
  lighter: "lighter",
  bolder: "bolder",
  toString: toString$24
};

function translate(x, y) {
  return {
          NAME: "translate",
          VAL: [
            x,
            y
          ]
        };
}

function translate3d(x, y, z) {
  return {
          NAME: "translate3d",
          VAL: [
            x,
            y,
            z
          ]
        };
}

function translateX(x) {
  return {
          NAME: "translateX",
          VAL: x
        };
}

function translateY(y) {
  return {
          NAME: "translateY",
          VAL: y
        };
}

function translateZ(z) {
  return {
          NAME: "translateZ",
          VAL: z
        };
}

function scale(x, y) {
  return {
          NAME: "scale",
          VAL: [
            x,
            y
          ]
        };
}

function scale3d(x, y, z) {
  return {
          NAME: "scale3d",
          VAL: [
            x,
            y,
            z
          ]
        };
}

function scaleX(x) {
  return {
          NAME: "scaleX",
          VAL: x
        };
}

function scaleY(x) {
  return {
          NAME: "scaleY",
          VAL: x
        };
}

function scaleZ(x) {
  return {
          NAME: "scaleZ",
          VAL: x
        };
}

function rotate(a) {
  return {
          NAME: "rotate",
          VAL: a
        };
}

function rotate3d(x, y, z, a) {
  return {
          NAME: "rotate3d",
          VAL: [
            x,
            y,
            z,
            a
          ]
        };
}

function rotateX(a) {
  return {
          NAME: "rotateX",
          VAL: a
        };
}

function rotateY(a) {
  return {
          NAME: "rotateY",
          VAL: a
        };
}

function rotateZ(a) {
  return {
          NAME: "rotateZ",
          VAL: a
        };
}

function skew(a, a$p) {
  return {
          NAME: "skew",
          VAL: [
            a,
            a$p
          ]
        };
}

function skewX(a) {
  return {
          NAME: "skewX",
          VAL: a
        };
}

function skewY(a) {
  return {
          NAME: "skewY",
          VAL: a
        };
}

function toString$25(x) {
  var variant = x.NAME;
  if (variant === "translate") {
    var match = x.VAL;
    return "translate(" + (toString$5(match[0]) + (", " + (toString$5(match[1]) + ")")));
  }
  if (variant === "rotate") {
    return "rotate(" + (toString$6(x.VAL) + ")");
  }
  if (variant === "skew") {
    var match$1 = x.VAL;
    return "skew(" + (toString$6(match$1[0]) + (", " + (toString$6(match$1[1]) + ")")));
  }
  if (variant === "scale3d") {
    var match$2 = x.VAL;
    return "scale3d(" + (match$2[0].toString() + (", " + (match$2[1].toString() + (", " + (match$2[2].toString() + ")")))));
  }
  if (variant === "rotateX") {
    return "rotateX(" + (toString$6(x.VAL) + ")");
  }
  if (variant === "rotateY") {
    return "rotateY(" + (toString$6(x.VAL) + ")");
  }
  if (variant === "rotateZ") {
    return "rotateZ(" + (toString$6(x.VAL) + ")");
  }
  if (variant === "scale") {
    var match$3 = x.VAL;
    var x$1 = match$3[0];
    var y = match$3[1];
    return "scale(" + (x$1.toString() + (", " + (y.toString() + ")")));
  }
  if (variant === "skewX") {
    return "skewX(" + (toString$6(x.VAL) + ")");
  }
  if (variant === "skewY") {
    return "skewY(" + (toString$6(x.VAL) + ")");
  }
  if (variant === "translateX") {
    return "translateX(" + (toString$5(x.VAL) + ")");
  }
  if (variant === "translateY") {
    return "translateY(" + (toString$5(x.VAL) + ")");
  }
  if (variant === "translateZ") {
    return "translateZ(" + (toString$5(x.VAL) + ")");
  }
  if (variant === "rotate3d") {
    var match$4 = x.VAL;
    return "rotate3d(" + (match$4[0].toString() + (", " + (match$4[1].toString() + (", " + (match$4[2].toString() + (", " + (toString$6(match$4[3]) + ")")))))));
  }
  if (variant !== "translate3d") {
    if (variant === "scaleX") {
      return "scaleX(" + (x.VAL.toString() + ")");
    } else if (variant === "scaleY") {
      return "scaleY(" + (x.VAL.toString() + ")");
    } else if (variant === "scaleZ") {
      return "scaleZ(" + (x.VAL.toString() + ")");
    } else {
      return "perspective(" + (x.VAL.toString() + ")");
    }
  }
  var match$5 = x.VAL;
  var x$2 = match$5[0];
  var y$1 = match$5[1];
  var z = match$5[2];
  return "translate3d(" + (toString$5(x$2) + (", " + (toString$5(y$1) + (", " + (toString$5(z) + ")")))));
}

function toString$26(x) {
  if (x === "alternateReverse") {
    return "alternate-reverse";
  } else if (x === "normal") {
    return "normal";
  } else if (x === "alternate") {
    return "alternate";
  } else {
    return "reverse";
  }
}

var AnimationDirection = {
  toString: toString$26
};

function toString$27(x) {
  if (x === "none") {
    return "none";
  } else if (x === "backwards") {
    return "backwards";
  } else if (x === "forwards") {
    return "forwards";
  } else {
    return "both";
  }
}

var AnimationFillMode = {
  toString: toString$27
};

function toString$28(x) {
  if (typeof x === "object") {
    return x.VAL.toString();
  } else {
    return "infinite";
  }
}

var AnimationIterationCount = {
  toString: toString$28
};

function toString$29(x) {
  if (x === "paused") {
    return "paused";
  } else {
    return "running";
  }
}

var AnimationPlayState = {
  toString: toString$29
};

function toString$30(x) {
  if (x === "cell") {
    return "cell";
  } else if (x === "copy") {
    return "copy";
  } else if (x === "swResize") {
    return "sw-resize";
  } else if (x === "grab") {
    return "grab";
  } else if (x === "help") {
    return "help";
  } else if (x === "move") {
    return "move";
  } else if (x === "none") {
    return "none";
  } else if (x === "text") {
    return "text";
  } else if (x === "rowResize") {
    return "row-resize";
  } else if (x === "wait") {
    return "wait";
  } else if (x === "pointer") {
    return "pointer";
  } else if (x === "seResize") {
    return "se-resize";
  } else if (x === "zoomOut") {
    return "zoom-out";
  } else if (x === "sResize") {
    return "s-resize";
  } else if (x === "zoomIn") {
    return "zoom-in";
  } else if (x === "grabbing") {
    return "grabbing";
  } else if (x === "nsResize") {
    return "ns-resize";
  } else if (x === "nwseResize") {
    return "nwse-resize";
  } else if (x === "progress") {
    return "progress";
  } else if (x === "crosshair") {
    return "crosshair";
  } else if (x === "wResize") {
    return "w-resize";
  } else if (x === "noDrop") {
    return "no-drop";
  } else if (x === "allScroll") {
    return "all-scroll";
  } else if (x === "verticalText") {
    return "vertical-text";
  } else if (x === "nResize") {
    return "n-resize";
  } else if (x === "default") {
    return "default";
  } else if (x === "neswResize") {
    return "nesw-resize";
  } else if (x === "alias") {
    return "alias";
  } else if (x === "ewResize") {
    return "ew-resize";
  } else if (x === "eResize") {
    return "e-resize";
  } else if (x === "nwResize") {
    return "nw-resize";
  } else if (x === "contextMenu") {
    return "context-menu";
  } else if (x === "colResize") {
    return "col-resize";
  } else if (x === "notAllowed") {
    return "not-allowed";
  } else if (x === "neResize") {
    return "ne-resize";
  } else {
    return "auto";
  }
}

var Cursor = {
  auto: "auto",
  $$default: "default",
  none: "none",
  contextMenu: "contextMenu",
  help: "help",
  pointer: "pointer",
  progress: "progress",
  wait: "wait",
  cell: "cell",
  crosshair: "crosshair",
  text: "text",
  verticalText: "verticalText",
  alias: "alias",
  copy: "copy",
  move: "move",
  noDrop: "noDrop",
  notAllowed: "notAllowed",
  grab: "grab",
  grabbing: "grabbing",
  allScroll: "allScroll",
  colResize: "colResize",
  rowResize: "rowResize",
  nResize: "nResize",
  eResize: "eResize",
  sResize: "sResize",
  wResize: "wResize",
  neResize: "neResize",
  nwResize: "nwResize",
  seResize: "seResize",
  swResize: "swResize",
  ewResize: "ewResize",
  nsResize: "nsResize",
  neswResize: "neswResize",
  nwseResize: "nwseResize",
  zoomIn: "zoomIn",
  zoomOut: "zoomOut",
  toString: toString$30
};

function rgb(r, g, b) {
  return {
          NAME: "rgb",
          VAL: [
            r,
            g,
            b
          ]
        };
}

function rgba(r, g, b, a) {
  return {
          NAME: "rgba",
          VAL: [
            r,
            g,
            b,
            a
          ]
        };
}

function hsl(h, s, l) {
  return {
          NAME: "hsl",
          VAL: [
            h,
            s,
            l
          ]
        };
}

function hsla(h, s, l, a) {
  return {
          NAME: "hsla",
          VAL: [
            h,
            s,
            l,
            a
          ]
        };
}

function hex(x) {
  return {
          NAME: "hex",
          VAL: x
        };
}

function string_of_alpha(x) {
  if (x.NAME === "num") {
    return x.VAL.toString();
  } else {
    return toString$3(x);
  }
}

function toString$31(x) {
  if (typeof x !== "object") {
    if (x === "transparent") {
      return "transparent";
    } else {
      return "currentColor";
    }
  }
  var variant = x.NAME;
  if (variant === "rgba") {
    var match = x.VAL;
    return "rgba(" + (match[0].toString() + (", " + (match[1].toString() + (", " + (match[2].toString() + (", " + (string_of_alpha(match[3]) + ")")))))));
  }
  if (variant === "hex") {
    return "#" + x.VAL;
  }
  if (variant === "hsl") {
    var match$1 = x.VAL;
    return "hsl(" + (toString$6(match$1[0]) + (", " + (toString$3(match$1[1]) + (", " + (toString$3(match$1[2]) + ")")))));
  }
  if (variant === "rgb") {
    var match$2 = x.VAL;
    return "rgb(" + (match$2[0].toString() + (", " + (match$2[1].toString() + (", " + (match$2[2].toString() + ")")))));
  }
  var match$3 = x.VAL;
  return "hsla(" + (toString$6(match$3[0]) + (", " + (toString$3(match$3[1]) + (", " + (toString$3(match$3[2]) + (", " + (string_of_alpha(match$3[3]) + ")")))))));
}

function toString$32(x) {
  if (x === "hidden") {
    return "hidden";
  } else if (x === "ridge") {
    return "ridge";
  } else if (x === "solid") {
    return "solid";
  } else if (x === "outset") {
    return "outset";
  } else if (x === "groove") {
    return "groove";
  } else if (x === "dashed") {
    return "dashed";
  } else if (x === "dotted") {
    return "dotted";
  } else if (x === "double") {
    return "double";
  } else if (x === "inset") {
    return "inset";
  } else {
    return "none";
  }
}

var BorderStyle = {
  toString: toString$32
};

function toString$33(x) {
  if (x === "none") {
    return "none";
  } else {
    return "auto";
  }
}

var PointerEvents = {
  toString: toString$33
};

function toString$34(x) {
  return "none";
}

var Perspective = {
  toString: toString$34
};

function toString$35(x) {
  return "normal";
}

var LetterSpacing = {
  normal: "normal",
  toString: toString$35
};

function toString$36(x) {
  if (typeof x === "object") {
    return x.VAL.toString();
  } else {
    return "normal";
  }
}

var LineHeight = {
  toString: toString$36
};

function toString$37(x) {
  return "normal";
}

var WordSpacing = {
  toString: toString$37
};

function toString$38(x) {
  if (x === "inline") {
    return "inline";
  } else if (x === "block") {
    return "block";
  } else {
    return "run-in";
  }
}

var DisplayOutside = {
  toString: toString$38
};

function toString$39(x) {
  if (x === "grid") {
    return "grid";
  } else if (x === "table") {
    return "table";
  } else {
    return "flex";
  }
}

var DisplayInside = {
  toString: toString$39
};

function toString$40(x) {
  return "list-item";
}

var DisplayListItem = {
  toString: toString$40
};

function toString$41(x) {
  if (x === "tableRow") {
    return "table-row";
  } else if (x === "tableRowGroup") {
    return "table-row-group";
  } else if (x === "tableColumn") {
    return "table-column";
  } else if (x === "tableHeaderGroup") {
    return "table-header-group";
  } else if (x === "tableCell") {
    return "table-cell";
  } else if (x === "tableColumnGroup") {
    return "table-column-group";
  } else if (x === "tableCaption") {
    return "table-caption";
  } else {
    return "table-footer-group";
  }
}

var DisplayInternal = {
  toString: toString$41
};

function toString$42(x) {
  if (x === "contents") {
    return "contents";
  } else {
    return "none";
  }
}

var DisplayBox = {
  toString: toString$42
};

function toString$43(x) {
  if (x === "inlineBlock") {
    return "inline-block";
  } else if (x === "inlineFlex") {
    return "inline-flex";
  } else if (x === "inlineGrid") {
    return "inline-grid";
  } else {
    return "inline-table";
  }
}

var DisplayLegacy = {
  toString: toString$43
};

function toString$44(x) {
  if (x === "stretch") {
    return "stretch";
  } else if (x === "normal") {
    return "normal";
  } else {
    return "auto";
  }
}

var JustifySelf = {
  toString: toString$44
};

function toString$45(x) {
  if (x === "left") {
    return "left";
  } else if (x === "right") {
    return "right";
  } else if (x === "selfEnd") {
    return "self-end";
  } else if (x === "start") {
    return "start";
  } else if (x === "center") {
    return "center";
  } else if (x === "flexStart") {
    return "flex-start";
  } else if (x === "flexEnd") {
    return "flex-end";
  } else if (x === "selfStart") {
    return "self-start";
  } else {
    return "end";
  }
}

var PositionalAlignment = {
  toString: toString$45
};

function toString$46(x) {
  if (x.NAME === "unsafe") {
    return "unsafe " + toString$45(x.VAL);
  } else {
    return "safe " + toString$45(x.VAL);
  }
}

var OverflowAlignment = {
  toString: toString$46
};

function toString$47(x) {
  if (x === "firstBaseline") {
    return "first baseline";
  } else if (x === "baseline") {
    return "baseline";
  } else {
    return "last baseline";
  }
}

var BaselineAlignment = {
  toString: toString$47
};

function toString$48(x) {
  return "normal";
}

var NormalAlignment = {
  toString: toString$48
};

function toString$49(x) {
  if (x === "spaceAround") {
    return "space-around";
  } else if (x === "stretch") {
    return "stretch";
  } else if (x === "spaceBetween") {
    return "space-between";
  } else {
    return "space-evenly";
  }
}

var DistributedAlignment = {
  toString: toString$49
};

function toString$50(x) {
  if (x === "legacyLeft") {
    return "legacy left";
  } else if (x === "legacy") {
    return "legacy";
  } else if (x === "legacyRight") {
    return "legacy right";
  } else {
    return "legacy center";
  }
}

var LegacyAlignment = {
  toString: toString$50
};

function toString$51(x) {
  if (x === "right") {
    return "right";
  } else if (x === "justify") {
    return "justify";
  } else if (x === "center") {
    return "center";
  } else {
    return "left";
  }
}

var TextAlign = {
  toString: toString$51
};

function toString$52(x) {
  if (x === "normal") {
    return "normal";
  } else if (x === "keepAll") {
    return "keep-all";
  } else {
    return "break-all";
  }
}

var WordBreak = {
  toString: toString$52
};

function toString$53(x) {
  if (x === "preLine") {
    return "pre-line";
  } else if (x === "preWrap") {
    return "pre-wrap";
  } else if (x === "breakSpaces") {
    return "break-spaces";
  } else if (x === "normal") {
    return "normal";
  } else if (x === "nowrap") {
    return "nowrap";
  } else {
    return "pre";
  }
}

var WhiteSpace = {
  toString: toString$53
};

function toString$54(x) {
  if (x === "normal") {
    return "normal";
  } else {
    return "stretch";
  }
}

var AlignItems = {
  toString: toString$54
};

function toString$55(x) {
  if (x === "stretch") {
    return "stretch";
  } else if (x === "normal") {
    return "normal";
  } else {
    return "auto";
  }
}

var AlignSelf = {
  toString: toString$55
};

function toString$56(x) {
  if (x === "start") {
    return "start";
  } else if (x === "center") {
    return "center";
  } else if (x === "flexStart") {
    return "flex-start";
  } else if (x === "flexEnd") {
    return "flex-end";
  } else {
    return "end";
  }
}

var AlignContent = {
  toString: toString$56
};

function toString$57(x) {
  if (x === "none") {
    return "none";
  } else if (x === "cover") {
    return "cover";
  } else if (x === "contain") {
    return "contain";
  } else if (x === "scaleDown") {
    return "scale-down";
  } else {
    return "fill";
  }
}

var ObjectFit = {
  toString: toString$57
};

function toString$58(x) {
  if (x === "inlineStart") {
    return "inline-start";
  } else if (x === "left") {
    return "left";
  } else if (x === "none") {
    return "none";
  } else if (x === "right") {
    return "right";
  } else if (x === "inlineEnd") {
    return "inline-end";
  } else {
    return "both";
  }
}

var Clear = {
  toString: toString$58
};

function toString$59(x) {
  if (x === "left") {
    return "left";
  } else if (x === "none") {
    return "none";
  } else if (x === "right") {
    return "right";
  } else if (x === "inlineEnd") {
    return "inline-end";
  } else {
    return "inline-start";
  }
}

var Float = {
  toString: toString$59
};

function toString$60(x) {
  if (x === "hidden") {
    return "hidden";
  } else if (x === "visible") {
    return "visible";
  } else {
    return "collapse";
  }
}

var Visibility = {
  toString: toString$60
};

function toString$61(x) {
  if (x === "fixed") {
    return "fixed";
  } else {
    return "auto";
  }
}

var TableLayout = {
  toString: toString$61
};

function toString$62(x) {
  if (x === "separate") {
    return "separate";
  } else {
    return "collapse";
  }
}

var BorderCollapse = {
  toString: toString$62
};

function toString$63(x) {
  if (x === "wrapReverse") {
    return "wrap-reverse";
  } else if (x === "nowrap") {
    return "nowrap";
  } else {
    return "wrap";
  }
}

var FlexWrap = {
  toString: toString$63
};

function toString$64(x) {
  if (x === "row") {
    return "row";
  } else if (x === "columnReverse") {
    return "column-reverse";
  } else if (x === "rowReverse") {
    return "row-reverse";
  } else {
    return "column";
  }
}

var FlexDirection = {
  toString: toString$64
};

function toString$65(x) {
  if (x === "borderBox") {
    return "border-box";
  } else {
    return "content-box";
  }
}

var BoxSizing = {
  toString: toString$65
};

function toString$66(x) {
  if (typeof x === "object") {
    return x.VAL.toString();
  } else {
    return "auto";
  }
}

var ColumnCount = {
  toString: toString$66
};

function toString$67(x) {
  if (x === "none") {
    return "none";
  } else if (x === "text") {
    return "text";
  } else if (x === "all") {
    return "all";
  } else if (x === "contain") {
    return "contain";
  } else {
    return "auto";
  }
}

var UserSelect = {
  toString: toString$67
};

function toString$68(x) {
  if (x === "capitalize") {
    return "capitalize";
  } else if (x === "lowercase") {
    return "lowercase";
  } else if (x === "uppercase") {
    return "uppercase";
  } else {
    return "none";
  }
}

var TextTransform = {
  toString: toString$68
};

function areas(x) {
  return {
          NAME: "areas",
          VAL: x
        };
}

function toString$69(x) {
  if (typeof x === "object") {
    return $$String.trim(List.fold_left((function (carry, elem) {
                      return carry + ("'" + (elem + "' "));
                    }), "", x.VAL));
  } else {
    return "none";
  }
}

var GridTemplateAreas = {
  areas: areas,
  toString: toString$69
};

function ident(x) {
  return {
          NAME: "ident",
          VAL: x
        };
}

function num(x) {
  return {
          NAME: "num",
          VAL: x
        };
}

function numIdent(x, y) {
  return {
          NAME: "numIdent",
          VAL: [
            x,
            y
          ]
        };
}

function span(x) {
  return {
          NAME: "span",
          VAL: x
        };
}

function toString$70(t) {
  if (typeof t !== "object") {
    return "auto";
  }
  var variant = t.NAME;
  if (variant === "numIdent") {
    var match = t.VAL;
    return String(match[0]) + (" " + match[1]);
  }
  if (variant === "num") {
    return String(t.VAL);
  }
  if (variant === "ident") {
    return t.VAL;
  }
  var e = t.VAL;
  return "span " + (
          e.NAME === "ident" ? e.VAL : String(e.VAL)
        );
}

var GridArea = {
  auto: "auto",
  ident: ident,
  num: num,
  numIdent: numIdent,
  span: span,
  toString: toString$70
};

function toString$71(x) {
  if (typeof x !== "object") {
    return "none";
  }
  var variant = x.NAME;
  if (variant === "dropShadow") {
    var match = x.VAL;
    if (match.NAME === "num") {
      return "drop-shadow(" + (String(match.VAL) + ")");
    } else {
      return "drop-shadow(" + (match.VAL.toString() + "%)");
    }
  }
  if (variant === "brightness") {
    var match$1 = x.VAL;
    if (match$1.NAME === "num") {
      return "brightness(" + (String(match$1.VAL) + ")");
    } else {
      return "brightness(" + (match$1.VAL.toString() + "%)");
    }
  }
  if (variant === "opacity") {
    var match$2 = x.VAL;
    if (match$2.NAME === "num") {
      return "opacity(" + (String(match$2.VAL) + ")");
    } else {
      return "opacity(" + (match$2.VAL.toString() + "%)");
    }
  }
  if (variant === "grayscale") {
    var match$3 = x.VAL;
    if (match$3.NAME === "num") {
      return "grayscale(" + (String(match$3.VAL) + ")");
    } else {
      return "grayscale(" + (match$3.VAL.toString() + "%)");
    }
  }
  if (variant === "sepia") {
    var match$4 = x.VAL;
    if (match$4.NAME === "num") {
      return "sepia(" + (String(match$4.VAL) + ")");
    } else {
      return "sepia(" + (match$4.VAL.toString() + "%)");
    }
  }
  if (variant === "saturate") {
    var match$5 = x.VAL;
    if (match$5.NAME === "num") {
      return "saturate(" + (String(match$5.VAL) + ")");
    } else {
      return "saturate(" + (match$5.VAL.toString() + "%)");
    }
  }
  if (variant === "invert") {
    var match$6 = x.VAL;
    if (match$6.NAME === "num") {
      return "invert(" + (String(match$6.VAL) + ")");
    } else {
      return "invert(" + (match$6.VAL.toString() + "%)");
    }
  }
  if (variant === "contrast") {
    var match$7 = x.VAL;
    if (match$7.NAME === "num") {
      return "contrast(" + (String(match$7.VAL) + ")");
    } else {
      return "contrast(" + (match$7.VAL.toString() + "%)");
    }
  }
  if (variant !== "hueRotate") {
    return "blur(" + (toString$5(x.VAL) + ")");
  }
  var h = x.VAL;
  if (typeof h === "object") {
    return "hue-rotate(" + (toString$6(h) + ")");
  } else {
    return "hue-rotate(0deg)";
  }
}

function toString$72(x) {
  if (x === "local") {
    return "local";
  } else if (x === "fixed") {
    return "fixed";
  } else {
    return "scroll";
  }
}

var BackgroundAttachment = {
  toString: toString$72
};

function toString$73(x) {
  if (x === "borderBox") {
    return "border-box";
  } else if (x === "paddingBox") {
    return "padding-box";
  } else {
    return "content-box";
  }
}

var BackgroundClip = {
  toString: toString$73
};

function toString$74(x) {
  if (x === "borderBox") {
    return "border-box";
  } else if (x === "paddingBox") {
    return "padding-box";
  } else {
    return "content-box";
  }
}

var BackgroundOrigin = {
  toString: toString$74
};

function toString$75(x) {
  if (x === "right") {
    return "right";
  } else if (x === "center") {
    return "center";
  } else {
    return "left";
  }
}

var X = {
  toString: toString$75
};

function toString$76(x) {
  if (x === "top") {
    return "top";
  } else if (x === "center") {
    return "center";
  } else {
    return "bottom";
  }
}

var Y = {
  toString: toString$76
};

function toString$77(x) {
  if (x === "bottom") {
    return "bottom";
  } else if (x === "right") {
    return "right";
  } else if (x === "top") {
    return "top";
  } else if (x === "center") {
    return "center";
  } else {
    return "left";
  }
}

var BackgroundPosition = {
  X: X,
  Y: Y,
  toString: toString$77
};

function toString$78(x) {
  if (x === "round") {
    return "round";
  } else if (x === "space") {
    return "space";
  } else if (x === "repeat") {
    return "repeat";
  } else if (x === "repeatX") {
    return "repeat-x";
  } else if (x === "repeatY") {
    return "repeat-y";
  } else {
    return "no-repeat";
  }
}

var BackgroundRepeat = {
  toString: toString$78
};

function toString$79(x) {
  if (typeof x === "object") {
    return x.VAL;
  } else if (x === "ellipsis") {
    return "ellipsis";
  } else {
    return "clip";
  }
}

var TextOverflow = {
  toString: toString$79
};

function toString$80(x) {
  if (x === "none") {
    return "none";
  } else if (x === "underline") {
    return "underline";
  } else if (x === "lineThrough") {
    return "line-through";
  } else if (x === "blink") {
    return "blink";
  } else {
    return "overline";
  }
}

var TextDecorationLine = {
  toString: toString$80
};

function toString$81(x) {
  if (x === "solid") {
    return "solid";
  } else if (x === "dashed") {
    return "dashed";
  } else if (x === "dotted") {
    return "dotted";
  } else if (x === "double") {
    return "double";
  } else {
    return "wavy";
  }
}

var TextDecorationStyle = {
  toString: toString$81
};

function toString$82(x) {
  if (x === "fitContent") {
    return "fit-content";
  } else {
    return "auto";
  }
}

var Width = {
  toString: toString$82
};

function toString$83(x) {
  return "none";
}

var MaxWidth = {
  toString: toString$83
};

function toString$84(x) {
  return "auto";
}

var Height = {
  toString: toString$84
};

function toString$85(x) {
  return "none";
}

var MaxHeight = {
  toString: toString$85
};

function toString$86(x) {
  if (x === "anywhere") {
    return "anywhere";
  } else if (x === "breakWord") {
    return "break-word";
  } else {
    return "normal";
  }
}

var OverflowWrap = {
  toString: toString$86
};

function linearGradient(angle, stops) {
  return {
          NAME: "linearGradient",
          VAL: [
            angle,
            stops
          ]
        };
}

function repeatingLinearGradient(angle, stops) {
  return {
          NAME: "repeatingLinearGradient",
          VAL: [
            angle,
            stops
          ]
        };
}

function radialGradient(stops) {
  return {
          NAME: "radialGradient",
          VAL: stops
        };
}

function repeatingRadialGradient(stops) {
  return {
          NAME: "repeatingRadialGradient",
          VAL: stops
        };
}

function string_of_color(x) {
  if (typeof x !== "object") {
    return toString$31(x);
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return toString$1(x);
  } else {
    return toString$31(x);
  }
}

function string_of_stops(stops) {
  var strings = Belt_List.map(stops, (function (param) {
          return string_of_color(param[1]) + (" " + toString$5(param[0]));
        }));
  var separator = ", ";
  var _strings = strings;
  var _acc = "";
  while(true) {
    var acc = _acc;
    var strings$1 = _strings;
    if (!strings$1) {
      return acc;
    }
    var xs = strings$1.tl;
    var x = strings$1.hd;
    if (!xs) {
      return acc + x;
    }
    _acc = acc + (x + separator);
    _strings = xs;
    continue ;
  };
}

function toString$87(x) {
  var variant = x.NAME;
  if (variant === "repeatingLinearGradient") {
    var match = x.VAL;
    return "repeating-linear-gradient(" + (toString$6(match[0]) + (", " + (string_of_stops(match[1]) + ")")));
  }
  if (variant === "radialGradient") {
    return "radial-gradient(" + (string_of_stops(x.VAL) + ")");
  }
  if (variant !== "linearGradient") {
    return "repeating-radial-gradient(" + (string_of_stops(x.VAL) + ")");
  }
  var match$1 = x.VAL;
  return "linear-gradient(" + (toString$6(match$1[0]) + (", " + (string_of_stops(match$1[1]) + ")")));
}

function toString$88(x) {
  return "none";
}

var BackgroundImage = {
  toString: toString$88
};

function toString$89(x) {
  if (x === "marginBox") {
    return "margin-box";
  } else if (x === "strokeBox") {
    return "stroke-box";
  } else if (x === "borderBox") {
    return "border-box";
  } else if (x === "fillBox") {
    return "fill-box";
  } else if (x === "viewBox") {
    return "view-box";
  } else if (x === "paddingBox") {
    return "padding-box";
  } else {
    return "content-box";
  }
}

var GeometyBox = {
  marginBox: "marginBox",
  borderBox: "borderBox",
  paddingBox: "paddingBox",
  contentBox: "contentBox",
  fillBox: "fillBox",
  strokeBox: "strokeBox",
  viewBox: "viewBox",
  toString: toString$89
};

function toString$90(x) {
  return "none";
}

var ClipPath = {
  toString: toString$90
};

function toString$91(x) {
  if (x === "visible") {
    return "visible";
  } else {
    return "hidden";
  }
}

var BackfaceVisibility = {
  toString: toString$91
};

function toString$92(x) {
  if (x === "none") {
    return "none";
  } else if (x === "initial") {
    return "initial";
  } else {
    return "auto";
  }
}

var Flex = {
  toString: toString$92
};

function toString$93(x) {
  if (x === "preserve3d") {
    return "preserve-3d";
  } else {
    return "flat";
  }
}

var TransformStyle = {
  toString: toString$93
};

function toString$94(x) {
  return "none";
}

var ListStyleImage = {
  toString: toString$94
};

function toString$95(x) {
  if (typeof x === "object") {
    return x.VAL;
  } else if (x === "cursive") {
    return "cursive";
  } else if (x === "sansSerif") {
    return "sans-serif";
  } else if (x === "monospace") {
    return "monospace";
  } else if (x === "systemUi") {
    return "system-ui";
  } else if (x === "emoji") {
    return "emoji";
  } else if (x === "serif") {
    return "serif";
  } else if (x === "fantasy") {
    return "fantasy";
  } else if (x === "fangsong") {
    return "fangsong";
  } else {
    return "math";
  }
}

var FontFamilyName = {
  toString: toString$95
};

function toString$96(x) {
  if (x === "swap") {
    return "swap";
  } else if (x === "optional") {
    return "optional";
  } else if (x === "fallback") {
    return "fallback";
  } else if (x === "block") {
    return "block";
  } else {
    return "auto";
  }
}

var FontDisplay = {
  auto: "auto",
  block: "block",
  swap: "swap",
  fallback: "fallback",
  optional: "optional",
  toString: toString$96
};

var toString$97 = toString$21;

var CounterStyleType = {
  toString: toString$97
};

function counter(styleOpt, name) {
  var style = styleOpt !== undefined ? styleOpt : "unset";
  return {
          NAME: "counter",
          VAL: [
            name,
            style
          ]
        };
}

function toString$98(x) {
  var match = x.VAL;
  var style = match[1];
  var counter = match[0];
  if (style === "unset") {
    return "counter(" + (counter + ")");
  } else {
    return "counter(" + (counter + ("," + (toString$21(style) + ")")));
  }
}

var Counter = {
  counter: counter,
  toString: toString$98
};

function counters(styleOpt, separatorOpt, name) {
  var style = styleOpt !== undefined ? styleOpt : "unset";
  var separator = separatorOpt !== undefined ? separatorOpt : "";
  return {
          NAME: "counters",
          VAL: [
            name,
            separator,
            style
          ]
        };
}

function toString$99(x) {
  var match = x.VAL;
  var style = match[2];
  var separator = match[1];
  var name = match[0];
  if (style === "unset") {
    return "counters(" + (name + (",\"" + (separator + "\")")));
  } else {
    return "counters(" + (name + (",\"" + (separator + ("\"," + (toString$21(style) + ")")))));
  }
}

var Counters = {
  counters: counters,
  toString: toString$99
};

function increment(valueOpt, name) {
  var value = valueOpt !== undefined ? valueOpt : 1;
  return {
          NAME: "increment",
          VAL: [
            name,
            value
          ]
        };
}

function toString$100(x) {
  if (typeof x !== "object") {
    return "none";
  }
  var match = x.VAL;
  return match[0] + (" " + String(match[1]));
}

var CounterIncrement = {
  increment: increment,
  toString: toString$100
};

function reset(valueOpt, name) {
  var value = valueOpt !== undefined ? valueOpt : 0;
  return {
          NAME: "reset",
          VAL: [
            name,
            value
          ]
        };
}

function toString$101(x) {
  if (typeof x !== "object") {
    return "none";
  }
  var match = x.VAL;
  return match[0] + (" " + String(match[1]));
}

var CounterReset = {
  reset: reset,
  toString: toString$101
};

function set(valueOpt, name) {
  var value = valueOpt !== undefined ? valueOpt : 0;
  return {
          NAME: "set",
          VAL: [
            name,
            value
          ]
        };
}

function toString$102(x) {
  if (typeof x !== "object") {
    return "none";
  }
  var match = x.VAL;
  return match[0] + (" " + String(match[1]));
}

var CounterSet = {
  set: set,
  toString: toString$102
};

function toString$103(x) {
  if (typeof x === "object") {
    if (x.NAME === "text") {
      return "\"" + x.VAL + "\"";
    } else {
      return "attr(" + (x.VAL + ")");
    }
  } else if (x === "none") {
    return "none";
  } else if (x === "openQuote") {
    return "open-quote";
  } else if (x === "closeQuote") {
    return "close-quote";
  } else if (x === "normal") {
    return "normal";
  } else if (x === "noOpenQuote") {
    return "no-open-quote";
  } else {
    return "no-close-quote";
  }
}

var Content = {
  toString: toString$103
};

function toString$104(x) {
  if (x === "contextFill") {
    return "context-fill";
  } else if (x === "contextStroke") {
    return "context-stroke";
  } else {
    return "none";
  }
}

var Fill = {
  contextFill: "contextFill",
  contextStroke: "contextStroke",
  toString: toString$104
};

var SVG = {
  Fill: Fill
};

function toString$105(x) {
  if (x === "cyan") {
    return "cyan";
  } else if (x === "gray") {
    return "gray";
  } else if (x === "orange") {
    return "orange";
  } else if (x === "pink") {
    return "pink";
  } else if (x === "teal") {
    return "teal";
  } else if (x === "yellow") {
    return "yellow";
  } else if (x === "blackAlpha") {
    return "blackAlpha";
  } else if (x === "whatsapp") {
    return "whatsapp";
  } else if (x === "telegram") {
    return "telegram";
  } else if (x === "purple") {
    return "purple";
  } else if (x === "whiteAlpha") {
    return "whiteAlpha";
  } else if (x === "messenger") {
    return "messenger";
  } else if (x === "red") {
    return "red";
  } else if (x === "facebook") {
    return "facebook";
  } else if (x === "linkedin") {
    return "linkedin";
  } else if (x === "green") {
    return "green";
  } else if (x === "twitter") {
    return "twitter";
  } else {
    return "blue";
  }
}

var ColorScheme = {
  toString: toString$105
};

function toString$106(x) {
  if (typeof x !== "object") {
    if (x === "cyan") {
      return "cyan";
    } else if (x === "gray") {
      return "gray";
    } else if (x === "orange") {
      return "orange";
    } else if (x === "teal50") {
      return "teal.50";
    } else if (x === "white") {
      return "white";
    } else if (x === "pink100") {
      return "pink.100";
    } else if (x === "pink200") {
      return "pink.200";
    } else if (x === "pink300") {
      return "pink.300";
    } else if (x === "pink400") {
      return "pink.400";
    } else if (x === "pink500") {
      return "pink.500";
    } else if (x === "pink600") {
      return "pink.600";
    } else if (x === "pink700") {
      return "pink.700";
    } else if (x === "pink800") {
      return "pink.800";
    } else if (x === "pink900") {
      return "pink.900";
    } else if (x === "pink") {
      return "pink";
    } else if (x === "teal") {
      return "teal";
    } else if (x === "yellow") {
      return "yellow";
    } else if (x === "green100") {
      return "green.100";
    } else if (x === "green200") {
      return "green.200";
    } else if (x === "green300") {
      return "green.300";
    } else if (x === "green400") {
      return "green.400";
    } else if (x === "green500") {
      return "green.500";
    } else if (x === "green600") {
      return "green.600";
    } else if (x === "green700") {
      return "green.700";
    } else if (x === "green800") {
      return "green.800";
    } else if (x === "green900") {
      return "green.900";
    } else if (x === "teal100") {
      return "teal.100";
    } else if (x === "teal200") {
      return "teal.200";
    } else if (x === "teal300") {
      return "teal.300";
    } else if (x === "teal400") {
      return "teal.400";
    } else if (x === "teal500") {
      return "teal.500";
    } else if (x === "teal600") {
      return "teal.600";
    } else if (x === "teal700") {
      return "teal.700";
    } else if (x === "teal800") {
      return "teal.800";
    } else if (x === "teal900") {
      return "teal.900";
    } else if (x === "purple50") {
      return "purple.50";
    } else if (x === "red50") {
      return "red.50";
    } else if (x === "purple") {
      return "purple";
    } else if (x === "gray100") {
      return "gray.100";
    } else if (x === "gray200") {
      return "gray.200";
    } else if (x === "gray300") {
      return "gray.300";
    } else if (x === "gray400") {
      return "gray.400";
    } else if (x === "gray500") {
      return "gray.500";
    } else if (x === "gray600") {
      return "gray.600";
    } else if (x === "gray700") {
      return "gray.700";
    } else if (x === "gray800") {
      return "gray.800";
    } else if (x === "gray900") {
      return "gray.900";
    } else if (x === "red100") {
      return "red.100";
    } else if (x === "red200") {
      return "red.200";
    } else if (x === "red300") {
      return "red.300";
    } else if (x === "red400") {
      return "red.400";
    } else if (x === "red500") {
      return "red.500";
    } else if (x === "red600") {
      return "red.600";
    } else if (x === "red700") {
      return "red.700";
    } else if (x === "red800") {
      return "red.800";
    } else if (x === "red900") {
      return "red.900";
    } else if (x === "red") {
      return "red";
    } else if (x === "cyan50") {
      return "cyan.50";
    } else if (x === "pink50") {
      return "pink.50";
    } else if (x === "transparent" || x === "currentColor") {
      return toString$31(x);
    } else if (x === "gray50") {
      return "gray.50";
    } else if (x === "yellow50") {
      return "yellow50";
    } else if (x === "cyan100") {
      return "cyan.100";
    } else if (x === "cyan200") {
      return "cyan.200";
    } else if (x === "cyan300") {
      return "cyan.300";
    } else if (x === "cyan400") {
      return "cyan.400";
    } else if (x === "cyan500") {
      return "cyan.500";
    } else if (x === "cyan600") {
      return "cyan.600";
    } else if (x === "cyan700") {
      return "cyan.700";
    } else if (x === "cyan800") {
      return "cyan.800";
    } else if (x === "cyan900") {
      return "cyan.900";
    } else if (x === "green") {
      return "green";
    } else if (x === "blue50") {
      return "blue.50";
    } else if (x === "purple100") {
      return "purple.100";
    } else if (x === "purple200") {
      return "purple.200";
    } else if (x === "purple300") {
      return "purple.300";
    } else if (x === "purple400") {
      return "purple.400";
    } else if (x === "purple500") {
      return "purple.500";
    } else if (x === "purple600") {
      return "purple.600";
    } else if (x === "purple700") {
      return "purple.700";
    } else if (x === "purple800") {
      return "purple.800";
    } else if (x === "purple900") {
      return "purple.900";
    } else if (x === "orange50") {
      return "orange.50";
    } else if (x === "black") {
      return "black";
    } else if (x === "yellow100") {
      return "yellow.100";
    } else if (x === "yellow200") {
      return "yellow.200";
    } else if (x === "yellow300") {
      return "yellow.300";
    } else if (x === "yellow400") {
      return "yellow.400";
    } else if (x === "yellow500") {
      return "yellow.500";
    } else if (x === "yellow600") {
      return "yellow.600";
    } else if (x === "yellow700") {
      return "yellow.700";
    } else if (x === "yellow800") {
      return "yellow.800";
    } else if (x === "yellow900") {
      return "yellow.900";
    } else if (x === "green50") {
      return "green.50";
    } else if (x === "blue100") {
      return "blue.100";
    } else if (x === "blue200") {
      return "blue.200";
    } else if (x === "blue300") {
      return "blue.300";
    } else if (x === "blue400") {
      return "blue.400";
    } else if (x === "blue500") {
      return "blue.500";
    } else if (x === "blue600") {
      return "blue.600";
    } else if (x === "blue700") {
      return "blue.700";
    } else if (x === "blue800") {
      return "blue.800";
    } else if (x === "blue900") {
      return "blue.900";
    } else if (x === "orange100") {
      return "orange.100";
    } else if (x === "orange200") {
      return "orange.200";
    } else if (x === "orange300") {
      return "orange.300";
    } else if (x === "orange400") {
      return "orange.400";
    } else if (x === "orange500") {
      return "orange.500";
    } else if (x === "orange600") {
      return "orange.600";
    } else if (x === "orange700") {
      return "orange.700";
    } else if (x === "orange800") {
      return "orange.800";
    } else if (x === "orange900") {
      return "orange.900";
    } else {
      return "blue";
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return toString$1(x);
  } else {
    return toString$31(x);
  }
}

var Colors = {
  toString: toString$106
};

function toString$107(x) {
  if (x === "md") {
    return "md";
  } else if (x === "sm") {
    return "sm";
  } else if (x === "xl") {
    return "xl";
  } else if (x === "xs") {
    return "xs";
  } else if (x === "xl2") {
    return "2xl";
  } else if (x === "xl3") {
    return "3xl";
  } else if (x === "xl4") {
    return "4xl";
  } else if (x === "xl5") {
    return "5xl";
  } else if (x === "xl6") {
    return "6xl";
  } else if (x === "xl7") {
    return "7xl";
  } else if (x === "xl8") {
    return "8xl";
  } else if (x === "xl9") {
    return "9xl";
  } else {
    return "lg";
  }
}

var FontSizes = {
  toString: toString$107
};

function toString$108(x) {
  if (typeof x === "object") {
    return toString$1(x);
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return toString(x);
  } else if (x === "thin") {
    return "thin";
  } else if (x === "semibold") {
    return "semibold";
  } else if (x === "hairline") {
    return "hairline";
  } else if (x === "light") {
    return "light";
  } else if (x === "medium") {
    return "medium";
  } else if (x === "extrabold") {
    return "extrabold";
  } else if (x === "normal") {
    return "normal";
  } else if (x === "black") {
    return "black";
  } else {
    return "bold";
  }
}

var FontWeights = {
  toString: toString$108
};

function toString$109(x) {
  if (typeof x === "object") {
    return toString$1(x);
  } else if (x === "normal" || x === "oblique" || x === "italic") {
    return toString$11(x);
  } else {
    return toString(x);
  }
}

var FontStyles = {
  toString: toString$109
};

function toString$110(x) {
  if (typeof x !== "object") {
    if (x === "none") {
      return "none";
    } else if (x === "unset" || x === "inherit_" || x === "initial") {
      return toString(x);
    } else if (x === "tall") {
      return "tall";
    } else if (x === "zero") {
      return toString$5(x);
    } else if (x === "shorter") {
      return "shorter";
    } else if (x === "short") {
      return "short";
    } else if (x === 3) {
      return "3";
    } else if (x === 4) {
      return "4";
    } else if (x === 5) {
      return "5";
    } else if (x === 6) {
      return "6";
    } else if (x === 7) {
      return "7";
    } else if (x === 8) {
      return "8";
    } else if (x === 9) {
      return "9";
    } else if (x === 10) {
      return "1";
    } else if (x === "taller") {
      return "taller";
    } else if (x === "normal") {
      return toString$36(x);
    } else {
      return "base";
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return toString$1(x);
  } else if (variant === "abs") {
    return toString$36(x);
  } else {
    return toString$5(x);
  }
}

var LineHeights = {
  toString: toString$110
};

function toString$111(x) {
  if (typeof x !== "object") {
    if (x === "unset" || x === "inherit_" || x === "initial") {
      return toString(x);
    } else if (x === "widest") {
      return "widest";
    } else if (x === "wide") {
      return "wide";
    } else if (x === "zero") {
      return toString$5(x);
    } else if (x === "tighter") {
      return "tighter";
    } else if (x === "tight") {
      return "tight";
    } else if (x === "normal") {
      return "normal";
    } else {
      return "wider";
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return toString$1(x);
  } else {
    return toString$5(x);
  }
}

var LetterSpacings = {
  toString: toString$111
};

function toString$112(x) {
  if (typeof x === "object") {
    return toString$1(x);
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return toString(x);
  } else {
    return toString$51(x);
  }
}

var TextAligns = {
  toString: toString$112
};

function toString$113(x) {
  if (typeof x === "object") {
    return toString$1(x);
  } else if (x === "none") {
    return "none";
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return toString(x);
  } else if (x === "underline") {
    return "underline";
  } else if (x === "lineThrough") {
    return "line-through";
  } else {
    return "overline";
  }
}

var TextDecorations = {
  toString: toString$113
};

function toString$114(x) {
  if (typeof x === "object") {
    return toString$1(x);
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return toString(x);
  } else {
    return toString$68(x);
  }
}

var TextTransforms = {
  toString: toString$114
};

var Typography = {
  FontSizes: FontSizes,
  FontWeights: FontWeights,
  FontStyles: FontStyles,
  LineHeights: LineHeights,
  LetterSpacings: LetterSpacings,
  TextAligns: TextAligns,
  TextDecorations: TextDecorations,
  TextTransforms: TextTransforms
};

function toString$115(x) {
  if (x === "md") {
    return "md";
  } else if (x === "sm") {
    return "sm";
  } else if (x === "xl") {
    return "xl";
  } else if (x === "xl2") {
    return "2xl";
  } else {
    return "lg";
  }
}

var Breakpoints = {
  toString: toString$115
};

function toString$116(x) {
  if (x === "four") {
    return "4";
  } else if (x === "nine") {
    return "9";
  } else if (x === "oneP") {
    return "1.5";
  } else if (x === "twoP") {
    return "2.t";
  } else if (x === "zero") {
    return "0";
  } else if (x === "eight") {
    return "8";
  } else if (x === "twentyfour") {
    return "24";
  } else if (x === "ninetysix") {
    return "96";
  } else if (x === "seventytwo") {
    return "72";
  } else if (x === "seven") {
    return "7";
  } else if (x === "sixty") {
    return "60";
  } else if (x === "fourty") {
    return "40";
  } else if (x === "one") {
    return "1";
  } else if (x === "px_") {
    return "px";
  } else if (x === "six") {
    return "6";
  } else if (x === "ten") {
    return "10";
  } else if (x === "two") {
    return "2";
  } else if (x === "zeroP") {
    return "0.5";
  } else if (x === "sixtyfour") {
    return "64";
  } else if (x === "fourteen") {
    return "14";
  } else if (x === "fourtyfour") {
    return "44";
  } else if (x === "sixteen") {
    return "16";
  } else if (x === "threeP") {
    return "3.5";
  } else if (x === "three") {
    return "3";
  } else if (x === "thirtysix") {
    return "36";
  } else if (x === "thirtytwo") {
    return "32";
  } else if (x === "eighty") {
    return "80";
  } else if (x === "twelve") {
    return "12";
  } else if (x === "twenty") {
    return "20";
  } else if (x === "fivetysix") {
    return "56";
  } else if (x === "fivetytwo") {
    return "52";
  } else if (x === "twentyeight") {
    return "28";
  } else if (x === "fourtyeight") {
    return "48";
  } else {
    return "5";
  }
}

var Spaces = {
  toString: toString$116
};

function toString$117(x) {
  if (x === "full") {
    return "full";
  } else if (x === "lg") {
    return "32rem";
  } else if (x === "md") {
    return "28rem";
  } else if (x === "sm") {
    return "24rem";
  } else if (x === "xl") {
    return "36rem";
  } else if (x === "xs") {
    return "20rem";
  } else if (x === "max") {
    return "max-content";
  } else if (x === "min") {
    return "min-content";
  } else if (x === "xl2") {
    return "42rem";
  } else if (x === "xl3") {
    return "48rem";
  } else if (x === "xl4") {
    return "56rem";
  } else if (x === "xl5") {
    return "64rem";
  } else if (x === "xl6") {
    return "72rem";
  } else if (x === "xl7") {
    return "80rem";
  } else if (x === "xl8") {
    return "90rem";
  } else if (x === "xs2") {
    return "16rem";
  } else if (x === "xs3") {
    return "14rem";
  } else if (x === "containerLG") {
    return "container.lg";
  } else if (x === "containerMD") {
    return "container.md";
  } else if (x === "containerSM") {
    return "container.sm";
  } else if (x === "containerXL") {
    return "container.xl";
  } else {
    return toString$116(x);
  }
}

var Sizes = {
  toString: toString$117
};

function toString$118(x) {
  if (x === "full") {
    return "full";
  } else if (x === "none") {
    return "none";
  } else if (x === "lg") {
    return "lg";
  } else if (x === "md") {
    return "md";
  } else if (x === "sm") {
    return "sm";
  } else if (x === "xl") {
    return "xl";
  } else if (x === "xl2") {
    return "2xl";
  } else if (x === "xl3") {
    return "3xl";
  } else {
    return "base";
  }
}

var Radii = {
  toString: toString$118
};

function toString$119(x) {
  if (x === "base") {
    return "base";
  } else if (x === "hide") {
    return "hide";
  } else if (x === "banner") {
    return "banner";
  } else if (x === "popover") {
    return "popover";
  } else if (x === "tooltip") {
    return "tooltip";
  } else if (x === "dropdown") {
    return "dropdown";
  } else if (x === "sticky") {
    return "sticky";
  } else if (x === "modal") {
    return "modal";
  } else if (x === "toast") {
    return "toast";
  } else if (x === "docked") {
    return "docked";
  } else if (x === "overlay") {
    return "overlay";
  } else if (x === "skipLink") {
    return "skipLink";
  } else {
    return "auto";
  }
}

var ZIndex = {
  toString: toString$119
};

function toString$120(x) {
  if (typeof x !== "object") {
    if (x === 1) {
      return "1px";
    } else if (x === 2) {
      return "2px";
    } else if (x === 4) {
      return "4px";
    } else if (x === 8) {
      return "8px";
    } else {
      return "none";
    }
  }
  var match = x.VAL;
  var px = toString$5(match[0]);
  var style = toString$32(match[1]);
  var color = toString$106(match[2]);
  return "" + px + " " + style + " " + color;
}

var Borders = {
  toString: toString$120
};

var toString$121 = toString$5;

var BorderWidth = {
  toString: toString$121
};

function toString$122(x) {
  if (typeof x !== "object") {
    if (x === "zero") {
      return "0";
    } else if (x === "minContent") {
      return "min-content";
    } else if (x === "maxContent") {
      return "max-content";
    } else {
      return "auto";
    }
  }
  var variant = x.NAME;
  if (variant === "pxFloat") {
    return x.VAL.toString() + "px";
  }
  if (variant === "inch") {
    return x.VAL.toString() + "in";
  }
  if (variant === "vmax") {
    return x.VAL.toString() + "vmax";
  }
  if (variant === "vmin") {
    return x.VAL.toString() + "vmin";
  }
  if (variant === "percent") {
    return x.VAL.toString() + "%";
  }
  if (variant === "ch") {
    return x.VAL.toString() + "ch";
  }
  if (variant === "cm") {
    return x.VAL.toString() + "cm";
  }
  if (variant === "em") {
    return x.VAL.toString() + "em";
  }
  if (variant === "ex") {
    return x.VAL.toString() + "ex";
  }
  if (variant === "fr") {
    return x.VAL.toString() + "fr";
  }
  if (variant === "mm") {
    return x.VAL.toString() + "mm";
  }
  if (variant === "pc") {
    return x.VAL.toString() + "pc";
  }
  if (variant === "pt") {
    return x.VAL.toString() + "pt";
  }
  if (variant === "px") {
    return x.VAL.toString() + "px";
  }
  if (variant === "vh") {
    return x.VAL.toString() + "vh";
  }
  if (variant === "vw") {
    return x.VAL.toString() + "vw";
  }
  if (variant === "rem") {
    return x.VAL.toString() + "rem";
  }
  var match = x.VAL;
  if (match[0] === "sub") {
    return "calc(" + (toString$5(match[1]) + (" - " + (toString$5(match[2]) + ")")));
  } else {
    return "calc(" + (toString$5(match[1]) + (" + " + (toString$5(match[2]) + ")")));
  }
}

var Minmax = {
  toString: toString$122
};

function toString$123(x) {
  if (typeof x !== "object") {
    if (x === "none") {
      return "none";
    } else if (x === "zero") {
      return "0";
    } else if (x === "minContent") {
      return "min-content";
    } else if (x === "fitContent") {
      return "fit-content";
    } else if (x === "maxContent") {
      return "max-content";
    } else {
      return "auto";
    }
  }
  var variant = x.NAME;
  if (variant === "pxFloat") {
    return x.VAL.toString() + "px";
  }
  if (variant === "inch") {
    return x.VAL.toString() + "in";
  }
  if (variant === "vmax") {
    return x.VAL.toString() + "vmax";
  }
  if (variant === "vmin") {
    return x.VAL.toString() + "vmin";
  }
  if (variant === "minmax") {
    var match = x.VAL;
    return "minmax(" + (toString$122(match[0]) + ("," + (toString$122(match[1]) + ")")));
  }
  if (variant === "percent") {
    return x.VAL.toString() + "%";
  }
  if (variant === "ch") {
    return x.VAL.toString() + "ch";
  }
  if (variant === "cm") {
    return x.VAL.toString() + "cm";
  }
  if (variant === "em") {
    return x.VAL.toString() + "em";
  }
  if (variant === "ex") {
    return x.VAL.toString() + "ex";
  }
  if (variant === "fr") {
    return x.VAL.toString() + "fr";
  }
  if (variant === "mm") {
    return x.VAL.toString() + "mm";
  }
  if (variant === "pc") {
    return x.VAL.toString() + "pc";
  }
  if (variant === "pt") {
    return x.VAL.toString() + "pt";
  }
  if (variant === "px") {
    return x.VAL.toString() + "px";
  }
  if (variant === "vh") {
    return x.VAL.toString() + "vh";
  }
  if (variant === "vw") {
    return x.VAL.toString() + "vw";
  }
  if (variant === "rem") {
    return x.VAL.toString() + "rem";
  }
  var match$1 = x.VAL;
  if (match$1[0] === "sub") {
    return "calc(" + (toString$5(match$1[1]) + (" - " + (toString$5(match$1[2]) + ")")));
  } else {
    return "calc(" + (toString$5(match$1[1]) + (" + " + (toString$5(match$1[2]) + ")")));
  }
}

var Dimension = {
  toString: toString$123
};

function toString$124(x) {
  if (typeof x !== "object") {
    return "auto";
  }
  var variant = x.NAME;
  if (variant === "span") {
    return "span " + x.VAL.toString();
  }
  if (variant !== "slash") {
    if (variant === "int") {
      return x.VAL.toString();
    } else {
      return x.VAL;
    }
  }
  var match = x.VAL;
  var a = toString$124(match[0]);
  var b = toString$124(match[1]);
  return "" + a + " / " + b;
}

var GridColumn = {
  toString: toString$124
};

function toString$125(x) {
  if (typeof x !== "object") {
    return "auto";
  }
  var variant = x.NAME;
  if (variant === "span") {
    return "span " + x.VAL.toString();
  }
  if (variant !== "slash") {
    if (variant === "int") {
      return x.VAL.toString();
    } else {
      return x.VAL;
    }
  }
  var match = x.VAL;
  var a = toString$125(match[0]);
  var b = toString$125(match[1]);
  return "" + a + " / " + b;
}

var GridRow = {
  toString: toString$125
};

function toString$126(x) {
  if (typeof x !== "object") {
    if (x === "zero") {
      return toString$5(x);
    } else if (x === "minContent") {
      return "min-content";
    } else if (x === "maxContent") {
      return "max-content";
    } else {
      return "auto";
    }
  }
  var variant = x.NAME;
  if (variant !== "minmax") {
    if (variant === "fr") {
      return x.VAL.toString().concat("fr");
    } else {
      return toString$5(x);
    }
  }
  var match = x.VAL;
  var min = toString$122(match[0]);
  var max = toString$122(match[1]);
  return "minmax(" + min + "," + max + ")";
}

var TrackLength = {
  toString: toString$126
};

function toString$127(x) {
  if (typeof x !== "object") {
    return toString$126(x);
  }
  if (x.NAME !== "repeat") {
    return toString$126(x);
  }
  var match = x.VAL;
  var r = toString$20(match[0]);
  var t = toString$123(match[1]);
  return "repeat(" + r + ", " + t + ")";
}

var GridLength = {
  toString: toString$127
};

function string_of_stops$1(stops) {
  return stops.map(function (param) {
                var l = toString$5(param[0]);
                var c = toString$106(param[1]);
                return "" + c + " " + l;
              }).join(", ");
}

function toString$128(x) {
  var variant = x.NAME;
  if (variant === "linear") {
    var match = x.VAL;
    return "linear-gradient(" + (toString$6(match[0]) + (", " + (string_of_stops$1(match[1]) + ")")));
  }
  if (variant !== "repeatingLinear") {
    if (variant === "radial") {
      return "radial-gradient(" + (string_of_stops$1(x.VAL) + ")");
    } else {
      return "repeating-radial-gradient(" + (string_of_stops$1(x.VAL) + ")");
    }
  }
  var match$1 = x.VAL;
  return "repeating-linear-gradient(" + (toString$6(match$1[0]) + (", " + (string_of_stops$1(match$1[1]) + ")")));
}

function toString$129(x) {
  if (x === "unset" || x === "inherit_" || x === "initial") {
    return toString(x);
  } else {
    return toString$73(x);
  }
}

var BackgroundClips = {
  toString: toString$129
};

var Var = {
  $$var: $$var,
  varDefault: varDefault,
  toString: toString$1
};

var TimingFunction = {
  linear: "linear",
  ease: "ease",
  easeIn: "easeIn",
  easeOut: "easeOut",
  easeInOut: "easeInOut",
  stepStart: "stepStart",
  stepEnd: "stepEnd",
  steps: steps,
  cubicBezier: cubicBezier,
  toString: toString$19
};

var Transform = {
  translate: translate,
  translate3d: translate3d,
  translateX: translateX,
  translateY: translateY,
  translateZ: translateZ,
  scale: scale,
  scale3d: scale3d,
  scaleX: scaleX,
  scaleY: scaleY,
  scaleZ: scaleZ,
  rotate: rotate,
  rotate3d: rotate3d,
  rotateX: rotateX,
  rotateY: rotateY,
  rotateZ: rotateZ,
  skew: skew,
  skewX: skewX,
  skewY: skewY,
  toString: toString$25
};

var Color = {
  rgb: rgb,
  rgba: rgba,
  hsl: hsl,
  hsla: hsla,
  hex: hex,
  transparent: "transparent",
  currentColor: "currentColor",
  toString: toString$31
};

var BackdropFilter = {
  toString: toString$71
};

var Gradient = {
  linearGradient: linearGradient,
  radialGradient: radialGradient,
  repeatingLinearGradient: repeatingLinearGradient,
  repeatingRadialGradient: repeatingRadialGradient,
  toString: toString$87
};

var Gradients = {
  toString: toString$128
};

export {
  Cascading ,
  Var ,
  Time ,
  Percentage ,
  Url ,
  Length ,
  Angle ,
  Direction ,
  Position ,
  Resize ,
  FontVariant ,
  FontStyle ,
  FlexBasis ,
  Overflow ,
  Margin ,
  GridAutoFlow ,
  RowGap ,
  ColumnGap ,
  VerticalAlign ,
  TimingFunction ,
  RepeatValue ,
  ListStyleType ,
  ListStylePosition ,
  OutlineStyle ,
  FontWeight ,
  Transform ,
  AnimationDirection ,
  AnimationFillMode ,
  AnimationIterationCount ,
  AnimationPlayState ,
  Cursor ,
  Color ,
  BorderStyle ,
  PointerEvents ,
  Perspective ,
  LetterSpacing ,
  LineHeight ,
  WordSpacing ,
  DisplayOutside ,
  DisplayInside ,
  DisplayListItem ,
  DisplayInternal ,
  DisplayBox ,
  DisplayLegacy ,
  JustifySelf ,
  PositionalAlignment ,
  OverflowAlignment ,
  BaselineAlignment ,
  NormalAlignment ,
  DistributedAlignment ,
  LegacyAlignment ,
  TextAlign ,
  WordBreak ,
  WhiteSpace ,
  AlignItems ,
  AlignSelf ,
  AlignContent ,
  ObjectFit ,
  Clear ,
  Float ,
  Visibility ,
  TableLayout ,
  BorderCollapse ,
  FlexWrap ,
  FlexDirection ,
  BoxSizing ,
  ColumnCount ,
  UserSelect ,
  TextTransform ,
  GridTemplateAreas ,
  GridArea ,
  BackdropFilter ,
  BackgroundAttachment ,
  BackgroundClip ,
  BackgroundOrigin ,
  BackgroundPosition ,
  BackgroundRepeat ,
  TextOverflow ,
  TextDecorationLine ,
  TextDecorationStyle ,
  Width ,
  MaxWidth ,
  Height ,
  MaxHeight ,
  OverflowWrap ,
  Gradient ,
  BackgroundImage ,
  GeometyBox ,
  ClipPath ,
  BackfaceVisibility ,
  Flex ,
  TransformStyle ,
  ListStyleImage ,
  FontFamilyName ,
  FontDisplay ,
  CounterStyleType ,
  Counter ,
  Counters ,
  CounterIncrement ,
  CounterReset ,
  CounterSet ,
  Content ,
  SVG ,
  ColorScheme ,
  Colors ,
  Typography ,
  Breakpoints ,
  Spaces ,
  Sizes ,
  Radii ,
  ZIndex ,
  Borders ,
  BorderWidth ,
  Minmax ,
  Dimension ,
  GridColumn ,
  GridRow ,
  TrackLength ,
  GridLength ,
  Gradients ,
  BackgroundClips ,
  
}
/* No side effect */
