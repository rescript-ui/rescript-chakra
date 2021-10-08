open Chakra__MakeProps

@react.component @module("@chakra-ui/react")
external make: (
  ~children: React.element=?,
  /**
    Component Props {InputGroup}
   **/
  ~_as: string=?,
  ~isTruncated: bool=?,
  /**
    Margin and Padding
    @see <https://chakra-ui.com/docs/features/style-props#margin-and-padding>
   **/
  ~margin: Identity.t=?,
  ~marginTop: Identity.t=?,
  ~marginRight: Identity.t=?,
  ~marginEnd: Identity.t=?,
  ~marginBottom: Identity.t=?,
  ~marginLeft: Identity.t=?,
  ~marginStart: Identity.t=?,
  ~mx: Identity.t=?,
  ~my: Identity.t=?,
  ~padding: Identity.t=?,
  ~paddingTop: Identity.t=?,
  ~paddingRight: Identity.t=?,
  ~paddingEnd: Identity.t=?,
  ~paddingBottom: Identity.t=?,
  ~paddingLeft: Identity.t=?,
  ~paddingStart: Identity.t=?,
  ~px: Identity.t=?,
  ~py: Identity.t=?,
  /**
    Colors and BackgroundColor
    @see <https://chakra-ui.com/docs/features/style-props#color-and-background-color>
   **/
  ~colorScheme: ColorScheme.t=?,
  ~color: Identity.t=?,
  ~backgroundColor: Identity.t=?,
  ~opacity: Identity.t=?,
  /**
    Gradient
    @see <https://chakra-ui.com/docs/features/style-props#gradient>
   **/
  ~bgGradient: Identity.t=?,
  ~backgroundClip: Identity.t=?,
  /**
    Typography
    @see <https://chakra-ui.com/docs/features/style-props#typography>
   **/
  ~fontFamily: Identity.t=?,
  ~fontSize: Identity.t=?,
  ~fontWeight: Identity.t=?,
  ~letterSpacing: Identity.t=?,
  ~lineHeight: Identity.t=?,
  ~textAlign: Identity.t=?,
  ~fontStyle: Identity.t=?,
  ~textTransform: Identity.t=?,
  ~textDecoration: Identity.t=?,
  /**
    Layout Width and Height
    @see <https://chakra-ui.com/docs/features/style-props#layout-width-and-height>
   **/
  ~width: Identity.t=?,
  ~maxWidth: Identity.t=?,
  ~minWidth: Identity.t=?,
  ~height: Identity.t=?,
  ~maxHeight: Identity.t=?,
  ~minHeight: Identity.t=?,
  ~display: Identity.t=?,
  ~boxSize: Identity.t=?,
  ~verticalAlign: Identity.t=?,
  ~overflow: Identity.t=?,
  ~overflowY: Identity.t=?,
  ~overflowX: Identity.t=?,
  /**
    Flexbox
    @see <https://chakra-ui.com/docs/features/style-props#flexbox>
   **/
  ~alignItems: Identity.t=?,
  ~alignContent: Identity.t=?,
  ~justifyItems: Identity.t=?,
  ~justifyContent: Identity.t=?,
  ~flexWrap: Identity.t=?,
  ~flexDirection: Identity.t=?,
  ~flex: Identity.t=?,
  ~flexGrow: Identity.t=?,
  ~flexShrink: Identity.t=?,
  ~flexBasis: Identity.t=?,
  ~justifySelf: Identity.t=?,
  ~alignSelf: Identity.t=?,
  ~order: Identity.t=?,
  /**
    Grid
    @see <https://chakra-ui.com/docs/features/style-props#grid-layout>
   **/
  ~gridGap: Identity.t=?,
  ~gridRowGap: Identity.t=?,
  ~gridColumnGap: Identity.t=?,
  ~gridColumn: Identity.t=?,
  ~gridRow: Identity.t=?,
  ~gridArea: Identity.t=?,
  ~gridAutoFlow: Identity.t=?,
  ~gridAutoRows: Identity.t=?,
  ~gridAutoColumns: Identity.t=?,
  ~gridTemplateRows: Identity.t=?,
  ~gridTemplateColumns: Identity.t=?,
  ~gridTemplateAreas: Identity.t=?,
  /**
    Background
    @see <https://chakra-ui.com/docs/features/style-props#background>
   **/
  ~background: Identity.t=?,
  ~backgroundImage: Identity.t=?,
  ~backgroundSize: Identity.t=?,
  ~backgroundPosition: Identity.t=?,
  ~backgroundRepeat: Identity.t=?,
  ~backgroundAttachment: Identity.t=?,
  /**
    Borders
    @see<https://chakra-ui.com/docs/features/style-props#border-radius>
   **/
  ~border: Identity.t=?,
  ~borderWidth: Identity.t=?,
  ~borderStyle: Identity.t=?,
  ~borderColor: Identity.t=?,
  ~borderTop: Identity.t=?,
  ~borderTopWidth: Identity.t=?,
  ~borderTopStyle: Identity.t=?,
  ~borderTopColor: Identity.t=?,
  ~borderRight: Identity.t=?,
  ~borderEnd: Identity.t=?,
  ~borderRightWidth: Identity.t=?,
  ~borderEndWidth: Identity.t=?,
  ~borderRightStyle: Identity.t=?,
  ~borderEndStyle: Identity.t=?,
  ~borderRightColor: Identity.t=?,
  ~borderEndColor: Identity.t=?,
  ~borderBottom: Identity.t=?,
  ~borderBottomWidth: Identity.t=?,
  ~borderBottomStyle: Identity.t=?,
  ~borderBottomColor: Identity.t=?,
  ~borderLeft: Identity.t=?,
  ~borderStart: Identity.t=?,
  ~borderLeftWidth: Identity.t=?,
  ~borderStartWidth: Identity.t=?,
  ~borderLeftStyle: Identity.t=?,
  ~borderStartStyle: Identity.t=?,
  ~borderLeftColor: Identity.t=?,
  ~borderStartColor: Identity.t=?,
  ~borderX: Identity.t=?,
  ~borderY: Identity.t=?,
  /**
    Border Radius
    @see<https://chakra-ui.com/docs/features/style-props#border-radius>
   **/
  ~borderRadius: Identity.t=?,
  ~borderTopLeftRadius: Identity.t=?,
  ~borderTopStartRadius: Identity.t=?,
  ~borderTopRightRadius: Identity.t=?,
  ~borderTopEndRadius: Identity.t=?,
  ~borderBottomRightRadius: Identity.t=?,
  ~borderBottomEndRadius: Identity.t=?,
  ~borderBottomLeftRadius: Identity.t=?,
  ~borderBottomStartRadius: Identity.t=?,
  ~borderTopRadius: Identity.t=?,
  ~borderRightRadius: Identity.t=?,
  ~borderEndRadius: Identity.t=?,
  ~borderBottomRadius: Identity.t=?,
  ~borderLeftRadius: Identity.t=?,
  ~borderStartRadius: Identity.t=?,
  /**
    Position
    @see <https://chakra-ui.com/docs/features/style-props#position>
   **/
  ~position: Identity.t=?,
  ~zIndex: Identity.t=?,
  ~top: Identity.t=?,
  ~right: Identity.t=?,
  ~bottom: Identity.t=?,
  ~left: Identity.t=?,
  /**
    Shadow
    @see <https://chakra-ui.com/docs/features/style-props#shadow>
   **/
  ~textShadow: Identity.t=?,
  ~boxShadow: Identity.t=?,
  /**
    Pseudo
    @see <https://chakra-ui.com/docs/features/style-props#pseudo>
   **/
  @as("_hover") ~_hover: Pseudo.t=?,
  @as("_active") ~_active: Pseudo.t=?,
  @as("_focus") ~_focus: Pseudo.t=?,
  @as("_highlighted") ~_highlighted: Pseudo.t=?,
  @as("_focusWithin") ~_focusWithin: Pseudo.t=?,
  @as("_focusVisible") ~_focusVisible: Pseudo.t=?,
  @as("_disabled") ~_disabled: Pseudo.t=?,
  @as("_readOnly") ~_readOnly: Pseudo.t=?,
  @as("_before") ~_before: Pseudo.t=?,
  @as("_after") ~_after: Pseudo.t=?,
  @as("_empty") ~_empty: Pseudo.t=?,
  @as("_expanded") ~_expanded: Pseudo.t=?,
  @as("_checked") ~_checked: Pseudo.t=?,
  @as("_grabbed") ~_grabbed: Pseudo.t=?,
  @as("_pressed") ~_pressed: Pseudo.t=?,
  @as("_invalid") ~_invalid: Pseudo.t=?,
  @as("_valid") ~_valid: Pseudo.t=?,
  @as("_loading") ~_loading: Pseudo.t=?,
  @as("_selected") ~_selected: Pseudo.t=?,
  @as("_hidden") ~_hidden: Pseudo.t=?,
  @as("_autofill") ~_autofill: Pseudo.t=?,
  @as("_even") ~_even: Pseudo.t=?,
  @as("_odd") ~_odd: Pseudo.t=?,
  @as("_first") ~_first: Pseudo.t=?,
  @as("_last") ~_last: Pseudo.t=?,
  @as("_notFirst") ~_notFirst: Pseudo.t=?,
  @as("_notLast") ~_notLast: Pseudo.t=?,
  @as("_visited") ~_visited: Pseudo.t=?,
  @as("_activeLink") ~_activeLink: Pseudo.t=?,
  @as("_activeStep") ~_activeStep: Pseudo.t=?,
  @as("_indeterminate") ~_indeterminate: Pseudo.t=?,
  @as("_groupHover") ~_groupHover: Pseudo.t=?,
  @as("_groupFocus") ~_groupFocus: Pseudo.t=?,
  @as("_groupActive") ~_groupActive: Pseudo.t=?,
  @as("_groupDisabled") ~_groupDisabled: Pseudo.t=?,
  @as("_groupInvalid") ~_groupInvalid: Pseudo.t=?,
  @as("_groupChecked") ~_groupChecked: Pseudo.t=?,
  @as("_placeholder") ~_placeholder: Pseudo.t=?,
  @as("_fullScreen") ~_fullScreen: Pseudo.t=?,
  @as("_selection") ~_selection: Pseudo.t=?,
  /**
    TODO
    Other Props 
    partial implemented
    @see <https://chakra-ui.com/docs/features/style-props#other-props>
  ~animation=?,
  ~appearance=?,
  ~transform=?,
  ~transformOrigin=?,
  ~visibility=?,
  ~whiteSpace=?,
  ~userSelect=?,
  ~pointerEvents=?,
  ~wordBreak=?,
  ~overflowWrap=?,
  ~textOverflow=?,
  ~boxSizing=?,
  ~cursor=?,
  ~resize=?,
  ~transition=?,
  ~objectFit=?,
  ~objectPosition=?,
  ~objectPosition=?,
  ~float_=?,
  ~fill=?,
  ~stroke=?,
  ~outline=?,
   **/
  ~fill: Identity.t=?,
  ~stroke: Identity.t=?,
  /**
    ReactEvent Clipboard
    @see <https://reactjs.org/docs/events.html#clipboard-events>
   **/
  ~onCopy: ReactEvent.Clipboard.t => unit=?,
  ~onCut: ReactEvent.Clipboard.t => unit=?,
  ~onPaste: ReactEvent.Clipboard.t => unit=?,
  /**
    ReactEvent Composition
    @see <https://reactjs.org/docs/events.html#composition-events>
   **/
  ~onCompositionEnd: ReactEvent.Composition.t => unit=?,
  ~onCompositionStart: ReactEvent.Composition.t => unit=?,
  ~onCompositionUpdate: ReactEvent.Composition.t => unit=?,
  /**
    ReactEvent Keyboard
    @see <https://reactjs.org/docs/events.html#keyboard-events>
   **/
  ~onKeyDown: ReactEvent.Keyboard.t => unit=?,
  ~onKeyPress: ReactEvent.Keyboard.t => unit=?,
  ~onKeyUp: ReactEvent.Keyboard.t => unit=? /**
    ReactEvent Focus
    @see <https://reactjs.org/docs/events.html#focus-events>
   **/,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  /**
    ReactEvent Form 
    @see <https://reactjs.org/docs/events.html#form-events>
   **/
  ~onChange: ReactEvent.Form.t => unit=?,
  ~onInput: ReactEvent.Form.t => unit=?,
  ~onInvalid: ReactEvent.Form.t => unit=?,
  ~onReset: ReactEvent.Form.t => unit=?,
  ~onSubmit: ReactEvent.Form.t => unit=?,
  /**
    ReactEvent Generic Events
    @see <https://reactjs.org/docs/events.html#generic-events>
    ISSUE: Not Implemented in @rescript/react for ReactEvent.Generic;
    ~onError: ReactEvent.Generic.t => unit=?,
    ~onLoad: ReactEvent.Generic.t => unit=?,
   **/
  /**
    ReactEvent Mouse
    @see <https://reactjs.org/docs/events.html#mouse-events>
   **/
  ~onClick: ReactEvent.Mouse.t => unit=?,
  ~onContextMenu: ReactEvent.Mouse.t => unit=?,
  ~onDoubleClick: ReactEvent.Mouse.t => unit=?,
  ~onDrag: ReactEvent.Mouse.t => unit=?,
  ~onDragEnd: ReactEvent.Mouse.t => unit=?,
  ~onDragEnter: ReactEvent.Mouse.t => unit=?,
  ~onDragExit: ReactEvent.Mouse.t => unit=?,
  ~onDragLeave: ReactEvent.Mouse.t => unit=?,
  ~onDragOver: ReactEvent.Mouse.t => unit=?,
  ~onDragStart: ReactEvent.Mouse.t => unit=?,
  ~onDrop: ReactEvent.Mouse.t => unit=?,
  ~onMouseDown: ReactEvent.Mouse.t => unit=?,
  ~onMouseEnter: ReactEvent.Mouse.t => unit=?,
  ~onMouseLeave: ReactEvent.Mouse.t => unit=?,
  ~onMouseMove: ReactEvent.Mouse.t => unit=?,
  ~onMouseOut: ReactEvent.Mouse.t => unit=?,
  ~onMouseOver: ReactEvent.Mouse.t => unit=?,
  ~onMouseUp: ReactEvent.Mouse.t => unit=?,
  /**
    ReactEvent Pointer
    @see <https://reactjs.org/docs/events.html#pointer-events>
   **/
  ~onPointerDown: ReactEvent.Pointer.t => unit=?,
  ~onPointerMove: ReactEvent.Pointer.t => unit=?,
  ~onPointerUp: ReactEvent.Pointer.t => unit=?,
  ~onPointerCancel: ReactEvent.Pointer.t => unit=?,
  ~onGotPointerCapture: ReactEvent.Pointer.t => unit=?,
  ~onLostPointerCapture: ReactEvent.Pointer.t => unit=?,
  ~onPointerEnter: ReactEvent.Pointer.t => unit=?,
  ~onPointerLeave: ReactEvent.Pointer.t => unit=?,
  ~onPointerOver: ReactEvent.Pointer.t => unit=?,
  ~onPointerOut: ReactEvent.Pointer.t => unit=?,
  /**
    ReactEvent Selection
    @see <https://reactjs.org/docs/events.html#selection-events>
   **/
  ~onSelect: ReactEvent.Selection.t => unit=?,
  /**
    ReactEvent Touch
    @see <https://reactjs.org/docs/events.html#touch-events>
   **/
  ~onTouchCancel: ReactEvent.Touch.t => unit=?,
  ~onTouchEnd: ReactEvent.Touch.t => unit=?,
  ~onTouchMove: ReactEvent.Touch.t => unit=?,
  ~onTouchStart: ReactEvent.Touch.t => unit=?,
  /**
    ReactEvent UI Events
    @see <https://reactjs.org/docs/events.html#ui-events>
   **/
  ~onScroll: ReactEvent.UI.t => unit=?,
  /**
    ReactEvent Wheel
    @see <https://reactjs.org/docs/events.html#wheel-events>
   **/
  ~onWheel: ReactEvent.Wheel.t => unit=?,
  /**
    ReactEvent Media
    @see <https://reactjs.org/docs/events.html#media-events>
   **/
  ~onAbort: ReactEvent.Media.t => unit=?,
  ~onCanPlay: ReactEvent.Media.t => unit=?,
  ~onCanPlayThrough: ReactEvent.Media.t => unit=?,
  ~onDurationChange: ReactEvent.Media.t => unit=?,
  ~onEmptied: ReactEvent.Media.t => unit=?,
  ~onEncrypted: ReactEvent.Media.t => unit=?,
  ~onEnded: ReactEvent.Media.t => unit=?,
  // ~onError: ReactEvent.Media.t => unit=?,
  ~onLoadedData: ReactEvent.Media.t => unit=?,
  ~onLoadedMetadata: ReactEvent.Media.t => unit=?,
  ~onLoadStart: ReactEvent.Media.t => unit=?,
  ~onPause: ReactEvent.Media.t => unit=?,
  ~onPlay: ReactEvent.Media.t => unit=?,
  ~onPlaying: ReactEvent.Media.t => unit=?,
  ~onProgress: ReactEvent.Media.t => unit=?,
  ~onRateChange: ReactEvent.Media.t => unit=?,
  ~onSeeked: ReactEvent.Media.t => unit=?,
  ~onSeeking: ReactEvent.Media.t => unit=?,
  ~onStalled: ReactEvent.Media.t => unit=?,
  ~onSuspend: ReactEvent.Media.t => unit=?,
  ~onTimeUpdate: ReactEvent.Media.t => unit=?,
  ~onVolumeChange: ReactEvent.Media.t => unit=?,
  ~onWaiting: ReactEvent.Media.t => unit=?,
  ~onLoad: ReactEvent.Synthetic.t => unit=?,
  ~onError: ReactEvent.Synthetic.t => unit=?,
  /**
    ReactEvent Other
    @see <https://reactjs.org/docs/events.html#other-events>
    ~onToggle
   **/
  /**
    ReactEvent Animation 
    @see <https://reactjs.org/docs/events.html#animation-events>
   **/
  ~onAnimationStart: ReactEvent.Animation.t => unit=?,
  ~onAnimationEnd: ReactEvent.Animation.t => unit=?,
  ~onAnimationIteration: ReactEvent.Animation.t => unit=?,
) => React.element = "InputGroup"

let makeProps = (
  /**
    Component Props {InputGroup}
   **/
  /**
    Margin and Padding
   **/
  ~m=?,
  ~margin=?,
  ~mt=?,
  ~marginTop=?,
  ~mr=?,
  ~marginRight=?,
  ~me=?,
  ~marginEnd=?,
  ~mb=?,
  ~marginBottom=?,
  ~ml=?,
  ~marginLeft=?,
  ~ms=?,
  ~marginStart=?,
  ~mx=?,
  ~my=?,
  ~p=?,
  ~padding=?,
  ~pt=?,
  ~paddingTop=?,
  ~pr=?,
  ~paddingRight=?,
  ~pe=?,
  ~paddingEnd=?,
  ~pb=?,
  ~paddingBottom=?,
  ~pl=?,
  ~paddingLeft=?,
  ~ps=?,
  ~paddingStart=?,
  ~px=?,
  ~py=?,
  /**
    Colors and BackgroundColor
   **/
  ~color=?,
  ~backgroundColor=?,
  ~bgColor=?,
  ~opacity=?,
  /**
    Gradient
   **/
  ~bgGradient=?,
  ~backgroundClip=?,
  ~bgClip=?,
  /**
    Typography
   **/
  ~fontFamily=?,
  ~fontSize=?,
  ~fontWeight=?,
  ~letterSpacing=?,
  ~lineHeight=?,
  ~textAlign=?,
  ~fontStyle=?,
  ~textTransform=?,
  ~textDecoration=?,
  /**
    Layout Width and Height
   **/
  ~d=?,
  ~display=?,
  ~w=?,
  ~width=?,
  ~maxW=?,
  ~maxWidth=?,
  ~minW=?,
  ~minWidth=?,
  ~h=?,
  ~height=?,
  ~maxH=?,
  ~maxHeight=?,
  ~minH=?,
  ~minHeight=?,
  ~boxSize=?,
  ~verticalAlign=?,
  ~overflow=?,
  ~overflowX=?,
  ~overflowY=?,
  /**
    Flexbox
   **/
  ~alignItems=?,
  ~alignContent=?,
  ~justifyItems=?,
  ~justifyContent=?,
  ~flexWrap=?,
  ~flexDirection=?,
  ~flexDir=?,
  ~flex=?,
  ~flexGrow=?,
  ~flexShrink=?,
  ~flexBasis=?,
  ~justifySelf=?,
  ~alignSelf=?,
  ~order=?,
  /**
    Grid
   **/
  ~gridGap=?,
  ~gridRowGap=?,
  ~gridColumnGap=?,
  ~gridColumn=?,
  ~gridRow=?,
  ~gridArea=?,
  ~gridAutoFlow=?,
  ~gridAutoRows=?,
  ~gridAutoColumns=?,
  ~gridTemplateRows=?,
  ~gridTemplateColumns=?,
  ~gridTemplateAreas=?,
  /**
    Background
   **/
  ~bg=?,
  ~background=?,
  ~bgImage=?,
  ~backgroundImage=?,
  ~bgSize=?,
  ~backgroundSize=?,
  ~bgPosition=?,
  ~backgroundPosition=?,
  ~bgRepeat=?,
  ~backgroundRepeat=?,
  ~bgAttachment=?,
  ~backgroundAttachment=?,
  /**
    Borders
   **/
  ~border=?,
  ~borderWidth=?,
  ~borderStyle=?,
  ~borderColor=?,
  ~borderTop=?,
  ~borderTopWidth=?,
  ~borderTopStyle=?,
  ~borderTopColor=?,
  ~borderRight=?,
  ~borderEnd=?,
  ~borderRightWidth=?,
  ~borderEndWidth=?,
  ~borderRightStyle=?,
  ~borderEndStyle=?,
  ~borderRightColor=?,
  ~borderEndColor=?,
  ~borderBottom=?,
  ~borderBottomWidth=?,
  ~borderBottomStyle=?,
  ~borderBottomColor=?,
  ~borderLeft=?,
  ~borderStart=?,
  ~borderLeftWidth=?,
  ~borderStartWidth=?,
  ~borderLeftStyle=?,
  ~borderStartStyle=?,
  ~borderLeftColor=?,
  ~borderStartColor=?,
  ~borderX=?,
  ~borderY=?,
  /**
    Border Radius
   **/
  ~borderRadius=?,
  ~borderTopLeftRadius=?,
  ~borderTopStartRadius=?,
  ~borderTopRightRadius=?,
  ~borderTopEndRadius=?,
  ~borderBottomRightRadius=?,
  ~borderBottomEndRadius=?,
  ~borderBottomLeftRadius=?,
  ~borderBottomStartRadius=?,
  ~borderTopRadius=?,
  ~borderRightRadius=?,
  ~borderEndRadius=?,
  ~borderBottomRadius=?,
  ~borderLeftRadius=?,
  ~borderStartRadius=?,
  /**
    Position
   **/
  ~pos=?,
  ~position=?,
  ~zIndex=?,
  ~top=?,
  ~right=?,
  ~bottom=?,
  ~left=?,
  /**
    Shadow
   **/
  ~textShadow=?,
  ~boxShadow=?,
  /**
    TODO
    Other Props
   **/
  ~fill=?,
  ~stroke=?,
) =>
  makeProps(
    /**
      Component Props {InputGroup}
     **/
    /**
      Margin and Padding
     **/
    ~margin=?m->withShorthand(margin)->Margin.fromOption,
    ~marginTop=?mt->withShorthand(marginTop)->Margin.fromOption,
    ~marginRight=?mr->withShorthand(marginRight)->Margin.fromOption,
    ~marginEnd=?me->withShorthand(marginEnd)->Margin.fromOption,
    ~marginBottom=?mb->withShorthand(marginBottom)->Margin.fromOption,
    ~marginLeft=?ml->withShorthand(marginLeft)->Margin.fromOption,
    ~marginStart=?ms->withShorthand(marginStart)->Margin.fromOption,
    ~mx=?mx->Margin.fromOption,
    ~my=?my->Margin.fromOption,
    ~padding=?p->withShorthand(padding)->Padding.fromOption,
    ~paddingTop=?pt->withShorthand(paddingTop)->Padding.fromOption,
    ~paddingRight=?pr->withShorthand(paddingRight)->Padding.fromOption,
    ~paddingEnd=?pe->withShorthand(paddingEnd)->Padding.fromOption,
    ~paddingBottom=?pb->withShorthand(paddingBottom)->Padding.fromOption,
    ~paddingLeft=?pl->withShorthand(paddingLeft)->Padding.fromOption,
    ~paddingStart=?ps->withShorthand(paddingStart)->Padding.fromOption,
    ~px=?px->Padding.fromOption,
    ~py=?py->Padding.fromOption,
    /**
      Colors and Background Color
     **/
    ~color=?color->Color.fromOption,
    ~backgroundColor=?bgColor->withShorthand(backgroundColor)->BackgroundColor.fromOption,
    ~opacity=?opacity->Opacity.fromOption,
    /**
      Gradient
     **/
    ~bgGradient=?bgGradient->Gradient.fromOption,
    ~backgroundClip=?bgClip->withShorthand(backgroundClip)->BackgroundClip.fromOption,
    /**
      Typography
     **/
    ~fontFamily=?fontFamily->FontFamily.fromOption,
    ~fontSize=?fontSize->FontSize.fromOption,
    ~fontWeight=?fontWeight->FontWeight.fromOption,
    ~letterSpacing=?letterSpacing->LetterSpacing.fromOption,
    ~lineHeight=?lineHeight->LineHeight.fromOption,
    ~textAlign=?textAlign->TextAlign.fromOption,
    ~fontStyle=?fontStyle->FontStyle.fromOption,
    ~textTransform=?textTransform->TextTransform.fromOption,
    ~textDecoration=?textDecoration->TextDecoration.fromOption,
    /**
      Layout Width and Height
     **/
    ~display=?d->withShorthand(display)->Display.fromOption,
    ~height=?h->withShorthand(height)->Height.fromOption,
    ~minHeight=?minH->withShorthand(minHeight)->Height.fromOption,
    ~maxHeight=?maxH->withShorthand(maxHeight)->MaxHeight.fromOption,
    ~width=?w->withShorthand(width)->Width.fromOption,
    ~minWidth=?minW->withShorthand(minWidth)->Width.fromOption,
    ~maxWidth=?maxW->withShorthand(maxWidth)->MaxWidth.fromOption,
    ~boxSize=?boxSize->BoxSize.fromOption,
    ~verticalAlign=?verticalAlign->VerticalAlign.fromOption,
    ~overflow=?overflow->Overflow.fromOption,
    ~overflowY=?overflowY->Overflow.fromOption,
    ~overflowX=?overflowX->Overflow.fromOption,
    /**
      Flexbox
     **/
    ~alignItems=?alignItems->AlignItems.fromOption,
    ~alignContent=?alignContent->AlignContent.fromOption,
    ~justifyItems=?justifyItems->JustifyItems.fromOption,
    ~justifyContent=?justifyContent->JustifyContent.fromOption,
    ~flexWrap=?flexWrap->FlexWrap.fromOption,
    ~flexDirection=?flexDir->withShorthand(flexDirection)->FlexDirection.fromOption,
    ~flex=?flex->Flex.fromOption,
    ~flexGrow=?flexGrow->FlexGrow.fromOption,
    ~flexShrink=?flexShrink->FlexShrink.fromOption,
    ~flexBasis=?flexBasis->FlexBasis.fromOption,
    ~justifySelf=?justifySelf->JustifySelf.fromOption,
    ~alignSelf=?alignSelf->AlignSelf.fromOption,
    ~order=?order->Order.fromOption,
    /**
      Grid
     **/
    ~gridGap=?gridGap->GridGap.fromOption,
    ~gridRowGap=?gridRowGap->GridRowGap.fromOption,
    ~gridColumnGap=?gridColumnGap->GridColumnGap.fromOption,
    ~gridColumn=?gridColumn->GridColumn.fromOption,
    ~gridRow=?gridRow->GridRow.fromOption,
    ~gridArea=?gridArea->GridArea.fromOption,
    ~gridAutoFlow=?gridAutoFlow->GridAutoFlow.fromOption,
    ~gridAutoRows=?gridAutoRows->GridAutoRows.fromOption,
    ~gridAutoColumns=?gridAutoColumns->GridAutoColumns.fromOption,
    ~gridTemplateRows=?gridTemplateRows->GridTemplateRows.fromOption,
    ~gridTemplateColumns=?gridTemplateColumns->GridTemplateColumns.fromOption,
    ~gridTemplateAreas=?gridTemplateAreas->GridTemplateAreas.fromOption,
    /**
      Background
     **/
    ~background=?bg->withShorthand(background)->Background.fromOption,
    ~backgroundImage=?bgImage->withShorthand(backgroundImage)->BackgroundImage.fromOption,
    ~backgroundSize=?bgSize->withShorthand(backgroundSize)->BackgroundSize.fromOption,
    ~backgroundPosition=?bgPosition
    ->withShorthand(backgroundPosition)
    ->BackgroundPosition.fromOption,
    ~backgroundRepeat=?bgRepeat->withShorthand(backgroundRepeat)->BackgroundRepeat.fromOption,
    ~backgroundAttachment=?bgAttachment
    ->withShorthand(backgroundAttachment)
    ->BackgroundAttachment.fromOption,
    /**
      Borders
     **/
    ~border=?border->Border.fromOption,
    ~borderWidth=?borderWidth->BorderWidth.fromOption,
    ~borderStyle=?borderStyle->BorderStyle.fromOption,
    ~borderColor=?borderColor->BorderColor.fromOption,
    ~borderTop=?borderTop->Border.fromOption,
    ~borderTopWidth=?borderTopWidth->BorderWidth.fromOption,
    ~borderTopStyle=?borderTopStyle->BorderStyle.fromOption,
    ~borderTopColor=?borderTopColor->BorderColor.fromOption,
    ~borderRight=?borderRight->Border.fromOption,
    ~borderEnd=?borderEnd->Border.fromOption,
    ~borderRightWidth=?borderRightWidth->BorderWidth.fromOption,
    ~borderEndWidth=?borderEndWidth->BorderWidth.fromOption,
    ~borderRightStyle=?borderRightStyle->BorderStyle.fromOption,
    ~borderEndStyle=?borderEndStyle->BorderStyle.fromOption,
    ~borderRightColor=?borderRightColor->BorderColor.fromOption,
    ~borderEndColor=?borderEndColor->BorderColor.fromOption,
    ~borderBottom=?borderBottom->Border.fromOption,
    ~borderBottomWidth=?borderBottomWidth->BorderWidth.fromOption,
    ~borderBottomStyle=?borderBottomStyle->BorderStyle.fromOption,
    ~borderBottomColor=?borderBottomColor->BorderColor.fromOption,
    ~borderLeft=?borderLeft->Border.fromOption,
    ~borderStart=?borderStart->Border.fromOption,
    ~borderLeftWidth=?borderLeftWidth->BorderWidth.fromOption,
    ~borderStartWidth=?borderStartWidth->BorderWidth.fromOption,
    ~borderLeftStyle=?borderLeftStyle->BorderStyle.fromOption,
    ~borderStartStyle=?borderStartStyle->BorderStyle.fromOption,
    ~borderLeftColor=?borderLeftColor->BorderColor.fromOption,
    ~borderStartColor=?borderStartColor->BorderColor.fromOption,
    ~borderX=?borderX->Border.fromOption,
    ~borderY=?borderY->Border.fromOption,
    /**
      Border Radius
     **/
    ~borderRadius=?borderRadius->BorderRadius.fromOption,
    ~borderTopLeftRadius=?borderTopLeftRadius->BorderRadius.fromOption,
    ~borderTopStartRadius=?borderTopStartRadius->BorderRadius.fromOption,
    ~borderTopRightRadius=?borderTopRightRadius->BorderRadius.fromOption,
    ~borderTopEndRadius=?borderTopEndRadius->BorderRadius.fromOption,
    ~borderBottomRightRadius=?borderBottomRightRadius->BorderRadius.fromOption,
    ~borderBottomEndRadius=?borderBottomEndRadius->BorderRadius.fromOption,
    ~borderBottomLeftRadius=?borderBottomLeftRadius->BorderRadius.fromOption,
    ~borderBottomStartRadius=?borderBottomStartRadius->BorderRadius.fromOption,
    ~borderTopRadius=?borderTopRadius->BorderRadius.fromOption,
    ~borderRightRadius=?borderRightRadius->BorderRadius.fromOption,
    ~borderEndRadius=?borderEndRadius->BorderRadius.fromOption,
    ~borderBottomRadius=?borderBottomRadius->BorderRadius.fromOption,
    ~borderLeftRadius=?borderLeftRadius->BorderRadius.fromOption,
    ~borderStartRadius=?borderStartRadius->BorderRadius.fromOption,
    /**
      Position
    **/
    ~position=?pos->withShorthand(position)->Position.fromOption,
    ~zIndex=?zIndex->ZIndex.fromOption,
    ~top=?top->Top.fromOption,
    ~right=?right->Right.fromOption,
    ~bottom=?bottom->Bottom.fromOption,
    ~left=?left->Left.fromOption,
    /**
      Shadow
    **/
    ~textShadow=?textShadow->TextShadow.fromOption,
    ~boxShadow=?boxShadow->BoxShadow.fromOption,
    /**
      TODO
      Other Props
     **/
    ~fill=?fill->Color.fromOption,
    ~stroke=?stroke->Color.fromOption,
  )
