module AliasText = {
  type t = [
    | #i
    | #u
    | #abbr
    | #cite
    | #del
    | #em
    | #ins
    | #kbd
    | #mark
    | #s
    | #samp
    | #sub
    | #sup
  ]
}
module Orientation = {
  type t = [
    | #horizontal
    | #vertical
  ]
}
module ColorScheme = {
  type t = [
    | #whiteAlpha
    | #blackAlpha
    | #gray
    | #red
    | #orange
    | #yellow
    | #green
    | #teal
    | #blue
    | #cyan
    | #purple
    | #pink
    | #linkedin
    | #facebook
    | #messenger
    | #whatsapp
    | #twitter
    | #telegram
  ]
}
module Size = {
  type full = [#full]
  type xs = [#xs]
  type xs2 = [@as("2xs") #xs2]
  type sm = [#sm]
  type md = [#md]
  type lg = [#lg]
  type xl = [#xl]
  type xl2 = [@as("2xl") #xl2]
  type xl3 = [@as("3xl") #xl3]
  type xl4 = [@as("4xl") #xl4]
  module Heading = {
    type t = [
      | xs
      | xs
      | sm
      | md
      | lg
      | xl
      | xl2
      | xl3
      | xl4
    ]
  }
  module Avatar = {
    type t = [
      | sm
      | md
      | lg
      | xl
      | xl2
      | full
      | xs2
      | xs
    ]
  }

  module Tag = {
    type t = [
      | xs
      | sm
      | md
      | lg
    ]
  }
  module Select = {
    type t = [
      | xs
      | sm
      | md
      | lg
    ]
  }
  module Spinner = {
    type t = [
      | xs
      | sm
      | md
      | lg
      | xl
    ]
  }
  module Progress = {
    type t = [
      | xs
      | sm
      | md
      | lg
    ]
  }
}
