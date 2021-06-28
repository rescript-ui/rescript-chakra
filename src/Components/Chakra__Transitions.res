module Fade = {
  @react.component @module("@chakra-ui/react")
  external make: (
    ~children: React.element=?,
    ~in_: bool=?,
    ~unmountOnExit: bool=?,
  ) => React.element = "Fade"
}
module ScaleFade = {
  @react.component @module("@chakra-ui/react")
  external make: (
    ~children: React.element=?,
    ~in_: bool=?,
    ~initialScale: float=?,
    ~reverse: bool=?,
    ~unmountOnExit: bool=?,
  ) => React.element = "ScaleFade"
}
module Slide = {
  @react.component @module("@chakra-ui/react")
  external make: (
    ~children: React.element=?,
    ~direction: [#bottom | #left | #right | #top]=?,
    ~in_: bool=?,
    ~unmountOnExit: bool=?,
  ) => React.element = "Slide"
}
module SlideFade = {
  open Chakra__MakeProps
  @react.component @module("@chakra-ui/react")
  external make: (
    ~children: React.element=?,
    ~offsetX: Identity.t=?,
    ~offsetY: Identity.t=?,
    ~in_: bool=?,
    ~reverse: bool=?,
    ~unmountOnExit: bool=?,
  ) => React.element = "SlideFade"
  let makeProps = (~offsetX=?, ~offsetY=?) =>
    makeProps(
      ~offsetX=?offsetX->StringOrNumber.fromOption,
      ~offsetY=?offsetY->StringOrNumber.fromOption,
    )
}
module Collapse = {
  open Chakra__MakeProps
  @react.component @module("@chakra-ui/react")
  external make: (
    ~children: React.element=?,
    ~startingHeight: Identity.t=?,
    ~endingHeight: Identity.t=?,
    ~animateOpacity: bool=?,
    ~in_: bool=?,
    ~unmountOnExit: bool=?,
  ) => React.element = "Collapse"
  let makeProps = (~startingHeight=?, ~endingHeight=?) =>
    makeProps(
      ~startingHeight=?startingHeight->StringOrNumber.fromOption,
      ~endingHeight=?endingHeight->StringOrNumber.fromOption,
    )
}
