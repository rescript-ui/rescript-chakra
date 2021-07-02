type noReferrer = [
  | @as("no-referrer") #noReferrer
]
module LinkTypes = {
  type t = [
    | #alternate
    | #archives
    | #author
    | #bookmark
    | #canonical
    | @as("dns-prefetch") #dnsPrefetch
    | @as("external") #external_
    | #first
    | #help
    | #icon
    | @as("import") #import_
    | #index
    | #last
    | #license
    | #manifest
    | #modulepreload
    | #next
    | #nofollow
    | #noopener
    | #noReferrer
    | #opener
    | #pingback
    | #preconnect
    | #prefetch
    | #preload
    | #prev
    | #search
    | #shortlink
    | #sidebar
    | #stylessheet
    | #tag
    | #up
  ]
}
module ReferrerPolicy = {
  type t = [
    | noReferrer
    | @as("no-referrer-when-downgrade") #noReferrerWhenDowngrade
    | #origin
    | @as("origin-when-cross-origin") #originWhenCrossOrigin
    | @as("same-origin") #sameOrigin
    | @as("strict-origin") #strictOrigin
    | @as("strict-origin-when-cross-origin") #strictOriginWhenCrossOrigin
    | @as("unsafe-url") #unsafeURL
  ]
}
module Target = {
  type t = [
    | @as("_self") #self
    | @as("_blank") #blank
    | @as("_parent") #parent
    | @as("_top") #top
  ]
}
