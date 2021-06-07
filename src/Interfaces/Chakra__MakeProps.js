

import * as Curry from "rescript/lib/es6/curry.js";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as Belt_Option from "rescript/lib/es6/belt_Option.js";
import * as Chakra__AtomicTypes from "./Chakra__AtomicTypes.js";

function withShorthand(x, y) {
  if (x !== undefined) {
    if (y !== undefined) {
      return y;
    } else {
      return x;
    }
  } else if (y !== undefined) {
    return y;
  } else {
    return ;
  }
}

var Identity = {};

function identity(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity);
  } else {
    return x === "true_";
  }
}

function fromOption(o) {
  return Belt_Option.map(o, identity);
}

var Bool = {
  identity: identity,
  fromOption: fromOption
};

function identity$1(x) {
  if (x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$1);
  } else {
    return x.VAL;
  }
}

function fromOption$1(o) {
  return Belt_Option.map(o, identity$1);
}

var $$Text = {
  identity: identity$1,
  fromOption: fromOption$1
};

function identity$2(x) {
  if (typeof x !== "object") {
    if (x === "fourtyeight" || x === "twentyeight" || x === "fivetytwo" || x === "fivetysix" || x === "twenty" || x === "twelve" || x === "eighty" || x === "containerXL" || x === "containerSM" || x === "containerMD" || x === "containerLG" || x === "thirtytwo" || x === "thirtysix" || x === "three" || x === "threeP" || x === "sixteen" || x === "fourtyfour" || x === "fourteen" || x === "sixtyfour" || x === "zeroP" || x === "xs3" || x === "xs2" || x === "xl8" || x === "xl7" || x === "xl6" || x === "xl5" || x === "xl4" || x === "xl3" || x === "xl2" || x === "two" || x === "ten" || x === "six" || x === "px_" || x === "one" || x === "min" || x === "max" || x === "xs" || x === "xl" || x === "sm" || x === "md" || x === "lg" || x === "fourty" || x === "sixty" || x === "seven" || x === "seventytwo" || x === "ninetysix" || x === "twentyfour" || x === "eight" || x === "twoP" || x === "oneP" || x === "nine" || x === "full" || x === "four" || x === "five") {
      return Chakra__AtomicTypes.Sizes.toString(x);
    } else if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Width.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "percent") {
    return Chakra__AtomicTypes.Percentage.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$2);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$2(o) {
  return Belt_Option.map(o, identity$2);
}

var BoxSize = {
  identity: identity$2,
  fromOption: fromOption$2
};

function identity$3(x) {
  if (typeof x !== "object") {
    if (x === "fourtyeight" || x === "twentyeight" || x === "fivetytwo" || x === "fivetysix" || x === "twenty" || x === "twelve" || x === "eighty" || x === "containerXL" || x === "containerSM" || x === "containerMD" || x === "containerLG" || x === "thirtytwo" || x === "thirtysix" || x === "three" || x === "threeP" || x === "sixteen" || x === "fourtyfour" || x === "fourteen" || x === "sixtyfour" || x === "zeroP" || x === "xs3" || x === "xs2" || x === "xl8" || x === "xl7" || x === "xl6" || x === "xl5" || x === "xl4" || x === "xl3" || x === "xl2" || x === "two" || x === "ten" || x === "six" || x === "px_" || x === "one" || x === "min" || x === "max" || x === "xs" || x === "xl" || x === "sm" || x === "md" || x === "lg" || x === "fourty" || x === "sixty" || x === "seven" || x === "seventytwo" || x === "ninetysix" || x === "twentyfour" || x === "eight" || x === "twoP" || x === "oneP" || x === "nine" || x === "full" || x === "four" || x === "five") {
      return Chakra__AtomicTypes.Sizes.toString(x);
    } else if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Width.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "percent") {
    return Chakra__AtomicTypes.Percentage.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$3);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$3(o) {
  return Belt_Option.map(o, identity$3);
}

var Width = {
  identity: identity$3,
  fromOption: fromOption$3
};

function identity$4(x) {
  if (typeof x !== "object") {
    if (x === "none") {
      return Chakra__AtomicTypes.MaxWidth.toString(x);
    } else if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Sizes.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "percent") {
    return Chakra__AtomicTypes.Percentage.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$4);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$4(o) {
  return Belt_Option.map(o, identity$4);
}

var MaxWidth = {
  identity: identity$4,
  fromOption: fromOption$4
};

function identity$5(x) {
  if (typeof x !== "object") {
    if (x === "fourtyeight" || x === "twentyeight" || x === "fivetytwo" || x === "fivetysix" || x === "twenty" || x === "twelve" || x === "eighty" || x === "containerXL" || x === "containerSM" || x === "containerMD" || x === "containerLG" || x === "thirtytwo" || x === "thirtysix" || x === "three" || x === "threeP" || x === "sixteen" || x === "fourtyfour" || x === "fourteen" || x === "sixtyfour" || x === "zeroP" || x === "xs3" || x === "xs2" || x === "xl8" || x === "xl7" || x === "xl6" || x === "xl5" || x === "xl4" || x === "xl3" || x === "xl2" || x === "two" || x === "ten" || x === "six" || x === "px_" || x === "one" || x === "min" || x === "max" || x === "xs" || x === "xl" || x === "sm" || x === "md" || x === "lg" || x === "fourty" || x === "sixty" || x === "seven" || x === "seventytwo" || x === "ninetysix" || x === "twentyfour" || x === "eight" || x === "twoP" || x === "oneP" || x === "nine" || x === "full" || x === "four" || x === "five") {
      return Chakra__AtomicTypes.Sizes.toString(x);
    } else if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Height.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "percent") {
    return Chakra__AtomicTypes.Percentage.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$5);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$5(o) {
  return Belt_Option.map(o, identity$5);
}

var Height = {
  identity: identity$5,
  fromOption: fromOption$5
};

function identity$6(x) {
  if (typeof x !== "object") {
    if (x === "none") {
      return Chakra__AtomicTypes.MaxHeight.toString(x);
    } else if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Sizes.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "percent") {
    return Chakra__AtomicTypes.Percentage.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$6);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$6(o) {
  return Belt_Option.map(o, identity$6);
}

var MaxHeight = {
  identity: identity$6,
  fromOption: fromOption$6
};

function identity$7(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$7);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "table" || x === "grid" || x === "flex") {
    return Chakra__AtomicTypes.DisplayInside.toString(x);
  } else if (x === "contents" || x === "none") {
    return Chakra__AtomicTypes.DisplayBox.toString(x);
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else if (x === "inlineGrid" || x === "inlineFlex" || x === "inlineBlock" || x === "inlineTable") {
    return Chakra__AtomicTypes.DisplayLegacy.toString(x);
  } else if (x === "block" || x === "inline" || x === "runIn") {
    return Chakra__AtomicTypes.DisplayOutside.toString(x);
  } else if (x === "listItem") {
    return Chakra__AtomicTypes.DisplayListItem.toString(x);
  } else {
    return Chakra__AtomicTypes.DisplayInternal.toString(x);
  }
}

function fromOption$7(o) {
  return Belt_Option.map(o, identity$7);
}

var Display = {
  identity: identity$7,
  fromOption: fromOption$7
};

function identity$8(x) {
  if (typeof x !== "object") {
    if (x === "textTop" || x === "textBottom" || x === "baseline" || x === "super" || x === "top" || x === "sub" || x === "bottom" || x === "middle") {
      return Chakra__AtomicTypes.VerticalAlign.toString(x);
    } else if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Cascading.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$8);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$8(o) {
  return Belt_Option.map(o, identity$8);
}

var VerticalAlign = {
  identity: identity$8,
  fromOption: fromOption$8
};

function identity$9(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$9);
  } else {
    return Chakra__AtomicTypes.Overflow.toString(x);
  }
}

function fromOption$9(o) {
  return Belt_Option.map(o, identity$9);
}

var Overflow = {
  identity: identity$9,
  fromOption: fromOption$9
};

function identity$10(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$10);
    } else {
      return x.VAL.toString();
    }
  } else {
    return Chakra__AtomicTypes.Flex.toString(x);
  }
}

function fromOption$10(o) {
  return Belt_Option.map(o, identity$10);
}

var Flex = {
  identity: identity$10,
  fromOption: fromOption$10
};

function identity$11(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$11);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else {
    return Chakra__AtomicTypes.FlexDirection.toString(x);
  }
}

function fromOption$11(o) {
  return Belt_Option.map(o, identity$11);
}

var FlexDirection = {
  identity: identity$11,
  fromOption: fromOption$11
};

function identity$12(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$12);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "nowrap" || x === "wrapReverse" || x === "wrap") {
    return Chakra__AtomicTypes.FlexWrap.toString(x);
  } else {
    return Chakra__AtomicTypes.Cascading.toString(x);
  }
}

function fromOption$12(o) {
  return Belt_Option.map(o, identity$12);
}

var FlexWrap = {
  identity: identity$12,
  fromOption: fromOption$12
};

function identity$13(x) {
  if (x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$13);
  } else {
    return x.VAL.toString();
  }
}

function fromOption$13(o) {
  return Belt_Option.map(o, identity$13);
}

var FlexShrink = {
  identity: identity$13,
  fromOption: fromOption$13
};

function identity$14(x) {
  if (x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$14);
  } else {
    return x.VAL.toString();
  }
}

function fromOption$14(o) {
  return Belt_Option.map(o, identity$14);
}

var FlexGrow = {
  identity: identity$14,
  fromOption: fromOption$14
};

function identity$15(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$15);
    } else {
      return Chakra__AtomicTypes.Length.toString(x);
    }
  } else if (x === "zero") {
    return Chakra__AtomicTypes.Length.toString(x);
  } else {
    return Chakra__AtomicTypes.FlexBasis.toString(x);
  }
}

function fromOption$15(o) {
  return Belt_Option.map(o, identity$15);
}

var FlexBasis = {
  identity: identity$15,
  fromOption: fromOption$15
};

function identity$16(x) {
  if (x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$16);
  } else {
    return x.VAL.toString();
  }
}

function fromOption$16(o) {
  return Belt_Option.map(o, identity$16);
}

var Order = {
  identity: identity$16,
  fromOption: fromOption$16
};

function identity$17(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$17);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "spaceBetween" || x === "stretch" || x === "spaceAround" || x === "spaceEvenly") {
    return Chakra__AtomicTypes.DistributedAlignment.toString(x);
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else if (x === "baseline" || x === "firstBaseline" || x === "lastBaseline") {
    return Chakra__AtomicTypes.BaselineAlignment.toString(x);
  } else if (x === "normal") {
    return Chakra__AtomicTypes.NormalAlignment.toString(x);
  } else {
    return Chakra__AtomicTypes.AlignContent.toString(x);
  }
}

function fromOption$17(o) {
  return Belt_Option.map(o, identity$17);
}

var AlignContent = {
  identity: identity$17,
  fromOption: fromOption$17
};

function identity$18(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$18);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else if (x === "baseline" || x === "firstBaseline" || x === "lastBaseline") {
    return Chakra__AtomicTypes.BaselineAlignment.toString(x);
  } else if (x === "normal" || x === "stretch") {
    return Chakra__AtomicTypes.AlignItems.toString(x);
  } else {
    return Chakra__AtomicTypes.PositionalAlignment.toString(x);
  }
}

function fromOption$18(o) {
  return Belt_Option.map(o, identity$18);
}

var AlignItems = {
  identity: identity$18,
  fromOption: fromOption$18
};

function identity$19(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$19);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "selfStart" || x === "flexEnd" || x === "flexStart" || x === "center" || x === "start" || x === "selfEnd" || x === "right" || x === "left" || x === "end_") {
    return Chakra__AtomicTypes.PositionalAlignment.toString(x);
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else if (x === "baseline" || x === "firstBaseline" || x === "lastBaseline") {
    return Chakra__AtomicTypes.BaselineAlignment.toString(x);
  } else {
    return Chakra__AtomicTypes.AlignSelf.toString(x);
  }
}

function fromOption$19(o) {
  return Belt_Option.map(o, identity$19);
}

var AlignSelf = {
  identity: identity$19,
  fromOption: fromOption$19
};

function identity$20(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$20);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "spaceBetween" || x === "stretch" || x === "spaceAround" || x === "spaceEvenly") {
    return Chakra__AtomicTypes.DistributedAlignment.toString(x);
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else if (x === "normal") {
    return Chakra__AtomicTypes.NormalAlignment.toString(x);
  } else {
    return Chakra__AtomicTypes.PositionalAlignment.toString(x);
  }
}

function fromOption$20(o) {
  return Belt_Option.map(o, identity$20);
}

var JustifyContent = {
  identity: identity$20,
  fromOption: fromOption$20
};

function identity$21(x) {
  if (typeof x !== "object") {
    if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "legacyRight" || x === "legacy" || x === "legacyLeft" || x === "legacyCenter") {
      return Chakra__AtomicTypes.LegacyAlignment.toString(x);
    } else if (x === "baseline" || x === "firstBaseline" || x === "lastBaseline") {
      return Chakra__AtomicTypes.BaselineAlignment.toString(x);
    } else if (x === "normal") {
      return Chakra__AtomicTypes.NormalAlignment.toString(x);
    } else {
      return Chakra__AtomicTypes.PositionalAlignment.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$21);
  } else {
    return Chakra__AtomicTypes.OverflowAlignment.toString(x);
  }
}

function fromOption$21(o) {
  return Belt_Option.map(o, identity$21);
}

var JustifyItems = {
  identity: identity$21,
  fromOption: fromOption$21
};

function identity$22(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$22);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "selfStart" || x === "flexEnd" || x === "flexStart" || x === "center" || x === "start" || x === "selfEnd" || x === "right" || x === "left" || x === "end_") {
    return Chakra__AtomicTypes.PositionalAlignment.toString(x);
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else if (x === "baseline" || x === "firstBaseline" || x === "lastBaseline") {
    return Chakra__AtomicTypes.BaselineAlignment.toString(x);
  } else {
    return Chakra__AtomicTypes.JustifySelf.toString(x);
  }
}

function fromOption$22(o) {
  return Belt_Option.map(o, identity$22);
}

var JustifySelf = {
  identity: identity$22,
  fromOption: fromOption$22
};

function identity$23(x) {
  if (typeof x !== "object") {
    if (x === "fourtyeight" || x === "twentyeight" || x === "fivetytwo" || x === "fivetysix" || x === "twenty" || x === "twelve" || x === "eighty" || x === "thirtytwo" || x === "thirtysix" || x === "three" || x === "threeP" || x === "sixteen" || x === "fourtyfour" || x === "fourteen" || x === "sixtyfour" || x === "zeroP" || x === "two" || x === "ten" || x === "six" || x === "px_" || x === "one" || x === "fourty" || x === "sixty" || x === "seven" || x === "seventytwo" || x === "ninetysix" || x === "twentyfour" || x === "eight" || x === "twoP" || x === "oneP" || x === "nine" || x === "four" || x === "five") {
      return Chakra__AtomicTypes.Spaces.toString(x);
    } else if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Margin.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$23);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$23(o) {
  return Belt_Option.map(o, identity$23);
}

var Margin = {
  identity: identity$23,
  fromOption: fromOption$23
};

function identity$24(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$24);
    } else {
      return Chakra__AtomicTypes.Length.toString(x);
    }
  } else if (x === "zero") {
    return Chakra__AtomicTypes.Length.toString(x);
  } else {
    return Chakra__AtomicTypes.Spaces.toString(x);
  }
}

function fromOption$24(o) {
  return Belt_Option.map(o, identity$24);
}

var Padding = {
  identity: identity$24,
  fromOption: fromOption$24
};

function identity$25(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$25);
  } else {
    return Chakra__AtomicTypes.Colors.toString(x);
  }
}

function fromOption$25(o) {
  return Belt_Option.map(o, identity$25);
}

var Color = {
  identity: identity$25,
  fromOption: fromOption$25
};

function identity$26(x) {
  if (x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$26);
  } else {
    return x.VAL.toString();
  }
}

function fromOption$26(o) {
  return Belt_Option.map(o, identity$26);
}

var Opacity = {
  identity: identity$26,
  fromOption: fromOption$26
};

function identity$27(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$27);
  } else {
    return Chakra__AtomicTypes.ColorScheme.toString(x);
  }
}

function fromOption$27(o) {
  return Belt_Option.map(o, identity$27);
}

var ColorScheme = {
  identity: identity$27,
  fromOption: fromOption$27
};

function toString(x) {
  if (typeof x === "object") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else {
    return Chakra__AtomicTypes.BorderStyle.toString(x);
  }
}

function identity$28(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$28);
  } else {
    return toString(x);
  }
}

function fromOption$28(o) {
  return Belt_Option.map(o, identity$28);
}

var BorderStyle = {
  toString: toString,
  identity: identity$28,
  fromOption: fromOption$28
};

function identity$29(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$29);
  } else {
    return Chakra__AtomicTypes.Borders.toString(x);
  }
}

function fromOption$29(o) {
  return Belt_Option.map(o, identity$29);
}

var Border = {
  identity: identity$29,
  fromOption: fromOption$29
};

function identity$30(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$30);
    } else {
      return Chakra__AtomicTypes.Length.toString(x);
    }
  } else if (x === "zero") {
    return Chakra__AtomicTypes.Length.toString(x);
  } else {
    return Chakra__AtomicTypes.Radii.toString(x);
  }
}

function fromOption$30(o) {
  return Belt_Option.map(o, identity$30);
}

var BorderRadius = {
  identity: identity$30,
  fromOption: fromOption$30
};

function identity$31(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$31);
  } else {
    return Chakra__AtomicTypes.BorderWidth.toString(x);
  }
}

function fromOption$31(o) {
  return Belt_Option.map(o, identity$31);
}

var BorderWidth = {
  identity: identity$31,
  fromOption: fromOption$31
};

function identity$32(x) {
  if (typeof x !== "object") {
    if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Cascading.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "percent") {
    return Chakra__AtomicTypes.Percentage.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$32);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$32(o) {
  return Belt_Option.map(o, identity$32);
}

var GridGap = {
  identity: identity$32,
  fromOption: fromOption$32
};

function identity$33(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$33);
    } else {
      return Chakra__AtomicTypes.GridRow.toString(x);
    }
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else {
    return Chakra__AtomicTypes.GridRow.toString(x);
  }
}

function fromOption$33(o) {
  return Belt_Option.map(o, identity$33);
}

var GridRow = {
  identity: identity$33,
  fromOption: fromOption$33
};

function identity$34(x) {
  if (typeof x !== "object") {
    if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Cascading.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "percent") {
    return Chakra__AtomicTypes.Percentage.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$34);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$34(o) {
  return Belt_Option.map(o, identity$34);
}

var GridRowGap = {
  identity: identity$34,
  fromOption: fromOption$34
};

function identity$35(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$35);
    } else {
      return Chakra__AtomicTypes.GridColumn.toString(x);
    }
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else {
    return Chakra__AtomicTypes.GridColumn.toString(x);
  }
}

function fromOption$35(o) {
  return Belt_Option.map(o, identity$35);
}

var GridColumn = {
  identity: identity$35,
  fromOption: fromOption$35
};

function identity$36(x) {
  if (typeof x !== "object") {
    if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else if (x === "normal") {
      return Chakra__AtomicTypes.ColumnGap.toString(x);
    } else {
      return Chakra__AtomicTypes.Cascading.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "percent") {
    return Chakra__AtomicTypes.Percentage.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$36);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$36(o) {
  return Belt_Option.map(o, identity$36);
}

var GridColumnGap = {
  identity: identity$36,
  fromOption: fromOption$36
};

function identity$37(x) {
  if (typeof x !== "object") {
    if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else {
      return Chakra__AtomicTypes.GridArea.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  }
  if (variant === "gridArea2") {
    var match = x.VAL;
    var grid1 = Chakra__AtomicTypes.GridArea.toString(match[0]);
    var grid2 = Chakra__AtomicTypes.GridArea.toString(match[1]);
    return "" + grid1 + " / " + grid2;
  }
  if (variant === "gridArea3") {
    var match$1 = x.VAL;
    var grid1$1 = Chakra__AtomicTypes.GridArea.toString(match$1[0]);
    var grid2$1 = Chakra__AtomicTypes.GridArea.toString(match$1[1]);
    var grid3 = Chakra__AtomicTypes.GridArea.toString(match$1[2]);
    return "" + grid1$1 + " / " + grid2$1 + " / " + grid3;
  }
  if (variant !== "gridArea4") {
    if (variant === "array") {
      return Belt_Array.map(x.VAL, identity$37);
    } else {
      return Chakra__AtomicTypes.GridArea.toString(x);
    }
  }
  var match$2 = x.VAL;
  var grid1$2 = Chakra__AtomicTypes.GridArea.toString(match$2[0]);
  var grid2$2 = Chakra__AtomicTypes.GridArea.toString(match$2[1]);
  var grid3$1 = Chakra__AtomicTypes.GridArea.toString(match$2[2]);
  var grid4 = Chakra__AtomicTypes.GridArea.toString(match$2[3]);
  return "" + grid1$2 + " / " + grid2$2 + " / " + grid3$1 + " / " + grid4;
}

function fromOption$37(o) {
  return Belt_Option.map(o, identity$37);
}

var GridArea = {
  identity: identity$37,
  fromOption: fromOption$37
};

function identity$38(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$38);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else {
    return Chakra__AtomicTypes.GridAutoFlow.toString(x);
  }
}

function fromOption$38(o) {
  return Belt_Option.map(o, identity$38);
}

var GridAutoFlow = {
  identity: identity$38,
  fromOption: fromOption$38
};

function identity$39(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$39);
  } else {
    return Chakra__AtomicTypes.Dimension.toString(x);
  }
}

function fromOption$39(o) {
  return Belt_Option.map(o, identity$39);
}

var GridAutoRows = {
  identity: identity$39,
  fromOption: fromOption$39
};

function identity$40(x) {
  if (typeof x !== "object") {
    return Chakra__AtomicTypes.GridLength.toString(x);
  }
  var variant = x.NAME;
  if (variant === "grid") {
    return x.VAL.map(Chakra__AtomicTypes.GridLength.toString).join(" ");
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$40);
  } else {
    return Chakra__AtomicTypes.GridLength.toString(x);
  }
}

function fromOption$40(o) {
  return Belt_Option.map(o, identity$40);
}

var GridTemplateRows = {
  identity: identity$40,
  fromOption: fromOption$40
};

function identity$41(x) {
  if (typeof x !== "object") {
    if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else {
      return Chakra__AtomicTypes.GridTemplateAreas.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "areas") {
    return Chakra__AtomicTypes.GridTemplateAreas.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$41);
  } else {
    return Chakra__AtomicTypes.Var.toString(x);
  }
}

function fromOption$41(o) {
  return Belt_Option.map(o, identity$41);
}

var GridTemplateAreas = {
  identity: identity$41,
  fromOption: fromOption$41
};

function identity$42(x) {
  if (typeof x !== "object") {
    if (x === "fangsong" || x === "fantasy" || x === "serif" || x === "emoji" || x === "systemUi" || x === "monospace" || x === "sansSerif" || x === "cursive" || x === "math") {
      return Chakra__AtomicTypes.FontFamilyName.toString(x);
    } else if (x === "mono") {
      return "mono";
    } else if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "heading") {
      return "heading";
    } else {
      return "body";
    }
  }
  var variant = x.NAME;
  if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$42);
  } else if (variant === "custom") {
    return Chakra__AtomicTypes.FontFamilyName.toString(x);
  } else {
    return Chakra__AtomicTypes.Var.toString(x);
  }
}

function fromOption$42(o) {
  return Belt_Option.map(o, identity$42);
}

var FontFamily = {
  identity: identity$42,
  fromOption: fromOption$42
};

function identity$43(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$43);
  } else {
    return Curry._1(Chakra__AtomicTypes.Typography.FontSizes.toString, x);
  }
}

function fromOption$43(o) {
  return Belt_Option.map(o, identity$43);
}

var FontSize = {
  identity: identity$43,
  fromOption: fromOption$43
};

function identity$44(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$44);
  } else {
    return Curry._1(Chakra__AtomicTypes.Typography.FontWeights.toString, x);
  }
}

function fromOption$44(o) {
  return Belt_Option.map(o, identity$44);
}

var FontWeight = {
  identity: identity$44,
  fromOption: fromOption$44
};

function identity$45(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$45);
  } else {
    return Curry._1(Chakra__AtomicTypes.Typography.LineHeights.toString, x);
  }
}

function fromOption$45(o) {
  return Belt_Option.map(o, identity$45);
}

var LineHeight = {
  identity: identity$45,
  fromOption: fromOption$45
};

function identity$46(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$46);
  } else {
    return Curry._1(Chakra__AtomicTypes.Typography.LetterSpacings.toString, x);
  }
}

function fromOption$46(o) {
  return Belt_Option.map(o, identity$46);
}

var LetterSpacing = {
  identity: identity$46,
  fromOption: fromOption$46
};

function identity$47(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$47);
  } else {
    return Curry._1(Chakra__AtomicTypes.Typography.TextAligns.toString, x);
  }
}

function fromOption$47(o) {
  return Belt_Option.map(o, identity$47);
}

var TextAlign = {
  identity: identity$47,
  fromOption: fromOption$47
};

function identity$48(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$48);
  } else {
    return Curry._1(Chakra__AtomicTypes.Typography.FontStyles.toString, x);
  }
}

function fromOption$48(o) {
  return Belt_Option.map(o, identity$48);
}

var FontStyle = {
  identity: identity$48,
  fromOption: fromOption$48
};

function identity$49(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$49);
  } else {
    return Curry._1(Chakra__AtomicTypes.Typography.TextDecorations.toString, x);
  }
}

function fromOption$49(o) {
  return Belt_Option.map(o, identity$49);
}

var TextDecoration = {
  identity: identity$49,
  fromOption: fromOption$49
};

function identity$50(x) {
  if (typeof x === "object" && x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$50);
  } else {
    return Curry._1(Chakra__AtomicTypes.Typography.TextTransforms.toString, x);
  }
}

function fromOption$50(o) {
  return Belt_Option.map(o, identity$50);
}

var TextTransform = {
  identity: identity$50,
  fromOption: fromOption$50
};

function identity$51(x) {
  if (x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$51);
  } else {
    return Chakra__AtomicTypes.Gradients.toString(x);
  }
}

function fromOption$51(o) {
  return Belt_Option.map(o, identity$51);
}

var Gradient = {
  identity: identity$51,
  fromOption: fromOption$51
};

function identity$52(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$52);
  } else {
    return Chakra__AtomicTypes.BackgroundClip.toString(x);
  }
}

function fromOption$52(o) {
  return Belt_Option.map(o, identity$52);
}

var BackgroundClip = {
  identity: identity$52,
  fromOption: fromOption$52
};

function identity$53(x) {
  if (typeof x !== "object") {
    if (x === "none") {
      return "none";
    } else {
      return Chakra__AtomicTypes.Colors.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "radial" || variant === "repeatingLinear" || variant === "linear" || variant === "repeatingRadial") {
    return Chakra__AtomicTypes.Gradients.toString(x);
  } else if (variant === "url") {
    return Chakra__AtomicTypes.Url.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$53);
  } else {
    return Chakra__AtomicTypes.Colors.toString(x);
  }
}

function fromOption$53(o) {
  return Belt_Option.map(o, identity$53);
}

var Background = {
  identity: identity$53,
  fromOption: fromOption$53
};

function identity$54(x) {
  if (typeof x !== "object") {
    return Chakra__AtomicTypes.BackgroundImage.toString(x);
  }
  var variant = x.NAME;
  if (variant === "url") {
    return Chakra__AtomicTypes.Url.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$54);
  } else {
    return Chakra__AtomicTypes.Gradients.toString(x);
  }
}

function fromOption$54(o) {
  return Belt_Option.map(o, identity$54);
}

var BackgroundImage = {
  identity: identity$54,
  fromOption: fromOption$54
};

function identity$55(x) {
  if (typeof x !== "object") {
    if (x === "cover") {
      return "cover";
    } else if (x === "contain") {
      return "contain";
    } else {
      return "auto";
    }
  }
  if (x.NAME === "array") {
    return Belt_Array.map(x.VAL, identity$55);
  }
  var match = x.VAL;
  var x$1 = Chakra__AtomicTypes.Length.toString(match[0]);
  var y = Chakra__AtomicTypes.Length.toString(match[1]);
  return "" + x$1 + " " + y;
}

function fromOption$55(o) {
  return Belt_Option.map(o, identity$55);
}

var BackgroundSize = {
  identity: identity$55,
  fromOption: fromOption$55
};

function identity$56(x) {
  if (typeof x !== "object") {
    if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.BackgroundPosition.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  }
  if (variant !== "hv") {
    if (variant === "array") {
      return Belt_Array.map(x.VAL, identity$56);
    } else {
      return Chakra__AtomicTypes.Length.toString(x);
    }
  }
  var match = x.VAL;
  var v = match[1];
  var h = match[0];
  var h$1 = typeof h === "object" || h === "zero" ? Chakra__AtomicTypes.Length.toString(h) : Curry._1(Chakra__AtomicTypes.BackgroundPosition.X.toString, h);
  var v$1 = typeof v === "object" || !(v === "center" || v === "top" || v === "bottom") ? Chakra__AtomicTypes.Length.toString(v) : Curry._1(Chakra__AtomicTypes.BackgroundPosition.Y.toString, v);
  return "" + h$1 + " " + v$1;
}

function fromOption$56(o) {
  return Belt_Option.map(o, identity$56);
}

var BackgroundPosition = {
  identity: identity$56,
  fromOption: fromOption$56
};

function identity$57(x) {
  if (typeof x !== "object") {
    if (x === "repeatY" || x === "repeatX" || x === "repeat" || x === "space" || x === "round" || x === "noRepeat") {
      return Chakra__AtomicTypes.BackgroundRepeat.toString(x);
    } else {
      return Chakra__AtomicTypes.Cascading.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant !== "hv") {
    if (variant === "array") {
      return Belt_Array.map(x.VAL, identity$57);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  }
  var match = x.VAL;
  var h = Chakra__AtomicTypes.BackgroundRepeat.toString(match[0]);
  var v = Chakra__AtomicTypes.BackgroundRepeat.toString(match[1]);
  return "" + h + " " + v;
}

function fromOption$57(o) {
  return Belt_Option.map(o, identity$57);
}

var BackgroundRepeat = {
  identity: identity$57,
  fromOption: fromOption$57
};

function identity$58(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$58);
    } else {
      return Chakra__AtomicTypes.Url.toString(x);
    }
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else {
    return Chakra__AtomicTypes.BackgroundAttachment.toString(x);
  }
}

function fromOption$58(o) {
  return Belt_Option.map(o, identity$58);
}

var BackgroundAttachment = {
  identity: identity$58,
  fromOption: fromOption$58
};

function identity$59(x) {
  if (typeof x === "object") {
    if (x.NAME === "array") {
      return Belt_Array.map(x.VAL, identity$59);
    } else {
      return Chakra__AtomicTypes.Var.toString(x);
    }
  } else if (x === "unset" || x === "inherit_" || x === "initial") {
    return Chakra__AtomicTypes.Cascading.toString(x);
  } else {
    return Chakra__AtomicTypes.Position.toString(x);
  }
}

function fromOption$59(o) {
  return Belt_Option.map(o, identity$59);
}

var Position = {
  identity: identity$59,
  fromOption: fromOption$59
};

function identity$60(x) {
  if (typeof x !== "object") {
    if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else if (x === "zero") {
      return Chakra__AtomicTypes.Length.toString(x);
    } else {
      return Chakra__AtomicTypes.Sizes.toString(x);
    }
  }
  var variant = x.NAME;
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  } else if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$60);
  } else {
    return Chakra__AtomicTypes.Length.toString(x);
  }
}

function fromOption$60(o) {
  return Belt_Option.map(o, identity$60);
}

var Top = {
  identity: identity$60,
  fromOption: fromOption$60
};

function identity$61(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$61);
  } else {
    return Chakra__AtomicTypes.ZIndex.toString(x);
  }
}

function fromOption$61(o) {
  return Belt_Option.map(o, identity$61);
}

var ZIndex = {
  identity: identity$61,
  fromOption: fromOption$61
};

function string_of_box(x, y, c, blur, spread, inset, param) {
  var x$1 = Chakra__AtomicTypes.Length.toString(x);
  var y$1 = Chakra__AtomicTypes.Length.toString(y);
  var c$1 = Chakra__AtomicTypes.Colors.toString(c);
  if (inset !== undefined) {
    return "inset " + x$1 + " " + y$1 + " " + c$1;
  }
  if (blur === undefined) {
    return "" + x$1 + ", " + y$1 + ", " + c$1;
  }
  if (spread !== undefined) {
    var radius = Chakra__AtomicTypes.Length.toString(blur);
    var spread$1 = Chakra__AtomicTypes.Length.toString(spread);
    return "" + x$1 + " " + y$1 + " " + radius + " " + spread$1 + " " + c$1;
  }
  var radius$1 = Chakra__AtomicTypes.Length.toString(blur);
  return "" + x$1 + " " + y$1 + " " + radius$1 + " " + c$1;
}

function identity$62(x) {
  if (typeof x !== "object") {
    if (x === "unset" || x === "inherit_" || x === "initial") {
      return Chakra__AtomicTypes.Cascading.toString(x);
    } else {
      return "none";
    }
  }
  var variant = x.NAME;
  if (variant === "spread") {
    var match = x.VAL;
    return string_of_box(match[0], match[1], match[4], match[2], match[3], undefined, undefined);
  }
  if (variant === "var" || variant === "varDefault") {
    return Chakra__AtomicTypes.Var.toString(x);
  }
  if (variant === "box") {
    var match$1 = x.VAL;
    return string_of_box(match$1[0], match$1[1], match$1[2], undefined, undefined, undefined, undefined);
  }
  if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$62);
  }
  if (variant === "inset") {
    var match$2 = x.VAL;
    return string_of_box(match$2[0], match$2[1], match$2[2], undefined, undefined, true, undefined);
  }
  var match$3 = x.VAL;
  return string_of_box(match$3[0], match$3[1], match$3[3], match$3[2], undefined, undefined, undefined);
}

function fromOption$62(o) {
  return Belt_Option.map(o, identity$62);
}

var Shadow = {
  string_of_box: string_of_box,
  identity: identity$62,
  fromOption: fromOption$62
};

function identity$63(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$63);
  } else if (x === "solid") {
    return "solid";
  } else if (x === "subtle") {
    return "subtle";
  } else {
    return "outline";
  }
}

function fromOption$63(o) {
  return Belt_Option.map(o, identity$63);
}

var Variant = {
  identity: identity$63,
  fromOption: fromOption$63
};

var Badge = {
  Variant: Variant
};

function identity$64(x) {
  var variant = x.NAME;
  if (variant === "num") {
    return x.VAL.toString();
  }
  if (variant === "array") {
    return Belt_Array.map(x.VAL, identity$64);
  }
  var match = x.VAL;
  var a = match[0].toString();
  var b = match[1].toString();
  return "" + a + " " + b;
}

function fromOption$64(o) {
  return Belt_Option.map(o, identity$64);
}

var Ratio = {
  identity: identity$64,
  fromOption: fromOption$64
};

var AspectRatio = {
  Ratio: Ratio
};

function identity$65(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$65);
  } else if (x === "md") {
    return "md";
  } else if (x === "sm") {
    return "sm";
  } else if (x === "xs") {
    return "xs";
  } else {
    return "lg";
  }
}

function fromOption$65(o) {
  return Belt_Option.map(o, identity$65);
}

var Size = {
  identity: identity$65,
  fromOption: fromOption$65
};

function identity$66(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$66);
  } else if (x === "outline") {
    return "outline";
  } else if (x === "solid") {
    return "solid";
  } else if (x === "ghost") {
    return "ghost";
  } else if (x === "unstyled") {
    return "unstyled";
  } else {
    return "link";
  }
}

function fromOption$66(o) {
  return Belt_Option.map(o, identity$66);
}

var Variant$1 = {
  identity: identity$66,
  fromOption: fromOption$66
};

function identity$67(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$67);
  } else if (x === "start") {
    return "start";
  } else {
    return "end";
  }
}

function fromOption$67(o) {
  return Belt_Option.map(o, identity$67);
}

var SpinnerPlacement = {
  identity: identity$67,
  fromOption: fromOption$67
};

var Button = {
  Size: Size,
  Variant: Variant$1,
  SpinnerPlacement: SpinnerPlacement
};

function identity$68(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$68);
  } else if (x === "md") {
    return "md";
  } else if (x === "sm") {
    return "sm";
  } else {
    return "lg";
  }
}

function fromOption$68(o) {
  return Belt_Option.map(o, identity$68);
}

var Size$1 = {
  identity: identity$68,
  fromOption: fromOption$68
};

var CloseButton = {
  Size: Size$1
};

function identity$69(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$69);
  } else if (x === "dashed") {
    return "dashed";
  } else {
    return "solid";
  }
}

function fromOption$69(o) {
  return Belt_Option.map(o, identity$69);
}

var Variant$2 = {
  identity: identity$69,
  fromOption: fromOption$69
};

var Divider = {
  Variant: Variant$2
};

function identity$70(x) {
  if (typeof x === "object") {
    return Belt_Array.map(x.VAL, identity$70);
  } else {
    return "md";
  }
}

function fromOption$70(o) {
  return Belt_Option.map(o, identity$70);
}

var Size$2 = {
  identity: identity$70,
  fromOption: fromOption$70
};

var Stat = {
  Size: Size$2
};

var optionMap = Belt_Option.map;

var arrayMap = Belt_Array.map;

var BackgroundColor;

var BorderColor;

var GridAutoColumns;

var GridTemplateColumns;

var Right;

var Bottom;

var Left;

var BoxShadow;

var TextShadow;

export {
  optionMap ,
  arrayMap ,
  withShorthand ,
  Identity ,
  Bool ,
  $$Text ,
  BoxSize ,
  Width ,
  MaxWidth ,
  Height ,
  MaxHeight ,
  Display ,
  VerticalAlign ,
  Overflow ,
  Flex ,
  FlexDirection ,
  FlexWrap ,
  FlexShrink ,
  FlexGrow ,
  FlexBasis ,
  Order ,
  AlignContent ,
  AlignItems ,
  AlignSelf ,
  JustifyContent ,
  JustifyItems ,
  JustifySelf ,
  Margin ,
  Padding ,
  Color ,
  Opacity ,
  BackgroundColor ,
  ColorScheme ,
  BorderStyle ,
  Border ,
  BorderRadius ,
  BorderWidth ,
  BorderColor ,
  GridGap ,
  GridRow ,
  GridRowGap ,
  GridColumn ,
  GridColumnGap ,
  GridArea ,
  GridAutoFlow ,
  GridAutoRows ,
  GridAutoColumns ,
  GridTemplateRows ,
  GridTemplateColumns ,
  GridTemplateAreas ,
  FontFamily ,
  FontSize ,
  FontWeight ,
  LineHeight ,
  LetterSpacing ,
  TextAlign ,
  FontStyle ,
  TextDecoration ,
  TextTransform ,
  Gradient ,
  BackgroundClip ,
  Background ,
  BackgroundImage ,
  BackgroundSize ,
  BackgroundPosition ,
  BackgroundRepeat ,
  BackgroundAttachment ,
  Position ,
  Top ,
  Right ,
  Bottom ,
  Left ,
  ZIndex ,
  Shadow ,
  BoxShadow ,
  TextShadow ,
  Badge ,
  AspectRatio ,
  Button ,
  CloseButton ,
  Divider ,
  Stat ,
  
}
/* No side effect */
