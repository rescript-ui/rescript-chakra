@react.component @module("@chakra-ui/react")
external make: (
  ~children: React.element,
  ~appendToParentPortal: bool=?,
  ~containerRef: ReactDOM.domRef=?,
) => React.element = "Portal"
