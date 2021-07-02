@ocaml.text(" 
  a List of type definition related with HTML (e.g: HTML Element attributes)
")
type noReferrer = [#noReferrer]
@ocaml.docs("
  [LinkTypes] is types for [rel] attributes in HTML.
  @see <https://developer.mozilla.org/en-US/docs/Web/HTML/Link_types>
")
module LinkTypes: {
  type t = [
    | #alternate
    | #archives
    | #author
    | #bookmark
    | #canonical
    | #dnsPrefetch
    | #external_
    | #first
    | #help
    | #icon
    | #import_
    | #index
    | #last
    | #license
    | #manifest
    | #modulepreload
    | #next
    | #noReferrer
    | #nofollow
    | #noopener
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
@ocaml.docs("
  [ReferrerPolicy] is a list of referrerpolicy.
")
module ReferrerPolicy: {
  type t = [
    | #noReferrer
    | #noReferrerWhenDowngrade
    | #origin
    | #originWhenCrossOrigin
    | #sameOrigin
    | #strictOrigin
    | #strictOriginWhenCrossOrigin
    | #unsafeURL
  ]
}
@ocaml.docs("
  [Target] is a list of [target] attributes.
")
module Target: {
  type t = [#blank | #parent | #self | #top]
}
