/**
 @see <https://chakra-ui.com/docs/features/style-props#margin-and-padding>
 **/
module MarginAndProps = {
  open Chakra
  @react.component
  let make = () => <>
    // m={2} refers to the value of `theme.space[2]`
    <Box m={#two}> {"Tomato"->React.string} </Box>
    // You can also use custom values
    <Box maxW={#px(960)} mx=#auto />
    // sets margin `8px` on all viewports and `16px` from the first breakpoint and up
    <Box m={#array([#two, #three])} />
  </>
}
/**
 @see <https://chakra-ui.com/docs/features/style-props#layout-width-and-height>
 **/
module LayoutWidthHeight = {
  open Chakra
  @react.component
  let make = () => <>
    // verbose
    <Box width=#percent(100.) height={#thirtytwo} />
    // shorthand
    <Box w=#percent(100.) h=#px(32) />
    // use theme sizing
    <Box boxSize=#sm />
    // width `50%`
    <Box w=#zeroP />
    // width `256px`
    <Box w=#px(256) />
    // width `'40px'`
    <Box w=#px(49) />
  </>
}
/**
  Reference
  @see <https://chakra-ui.com/docs/features/style-props#color-and-background-color>
  @see <https://developer.mozilla.org/en-US/docs/Web/CSS/color_value/hsla()>
  @see <https://en.wikipedia.org/wiki/HSL_and_HSV>
  @see <https://developer.mozilla.org/en-US/docs/Web/CSS/color_value>
 **/
module ColorsAndBackground = {
  open Chakra
  @react.component
  let make = () => <>
    // picks up a nested color value using dot notation
    // => `theme.colors.gray[50]`
    <Box color=#gray50 />
    // raw CSS color value
    <Box color=#hex("f00") />
    // shorthand
    // soon: <Box bgColor=#tomato />
    <Box bgColor=#hex("FF6347") />
    // Notes: soon for use color names and bg props
    // <Box bg=#var("tomato") />
    // verbose prop
    <Box backgroundColor=#rgb(255, 215, 0) />
    // with hsl color values
    <Box backgroundColor=#hsl(#deg(0.0), #percent(60.0), #percent(50.0)) />
    // with hsla color values
    <Box backgroundColor=#hsla(#deg(235.), #percent(100.), #percent(50.), #num(1.)) />
  </>
}
/**
  Borders
  @see <https://chakra-ui.com/docs/features/style-props#borders>
**/
module Borders = {
  open Chakra
  @react.component
  let make = () => <>
    // @JS <Box border="1px" borderColor="gray.200">
    <Box border=#1 borderColor=#gray200> {"Card"->React.string} </Box>
  </>
}
/**
  Background
  @see <>
**/
module Background = {
  open Chakra
  @react.component
  let make = () => <>
    // verbose
    <Box
      backgroundImage=#url("/images/kyuubi.png")
      backgroundPosition=#center
      backgroundRepeat=#noRepeat
    />
    // shorthand
    <Box bgImage=#url("/images/kyuubi.png") bgPosition=#center bgRepeat=#noRepeat />
  </>
}

module App = {
  open Chakra
  @react.component
  let make = () => {
    <Provider>
      <LayoutWidthHeight /> <MarginAndProps /> <ColorsAndBackground /> <Borders /> <Background />
    </Provider>
  }
}
