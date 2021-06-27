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
/**
TODO ~offsetX ~offsetY
module SlideFade = {
  open Chakra__MakeProps
  @react.component @module("@chakra-ui/react")
  external make: (
    ~children: React.element=?,
    ~offsetX: Identity.t=?,
    ~in_: bool=?,
    ~reverse: bool=?,
    ~unmountOnExit: bool=?,
  ) => React.element = "SlideFade"
  let makeProps = (~offsetX=?,) => makeProps(~offsetX=?
}
*/
