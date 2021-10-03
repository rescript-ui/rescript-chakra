type config
type toast
type t = config => toast

@module("@chakra-ui/react")
external useToast: unit => t = "useToast"

@module("@chakra-ui/react")
external createStandaloneToast: unit => t = "createStandaloneToast"

@send
external closeAll: t => unit = "closeAll"

@send
external close: (t, toast) => unit = "close"

@obj
external config: (
  ~description: string=?,
  ~duration: float=?,
  ~id: string=?,
  ~isClosable: bool=?,
  ~onCloseComplete: unit => unit=?,
  ~position: [
    | #top
    | #bottom
    | #"top-start"
    | #"top-end"
    | #"bottom-start"
    | #"bottom-end"
    | #"top-left"
    | #"top-right"
    | #"bottom-left"
    | #"bottom-right"
  ]=?,
  ~render: unit => React.element=?,
  ~status: [
    | #info
    | #warning
    | #success
    | #error
  ]=?,
  ~title: string=?,
  ~variant: [
    | #solid
    | #subtle
    | #"left-accent"
    | #"top-accent"
  ]=?,
  unit,
) => config = ""
