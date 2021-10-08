// ## API
let pseudo = Chakra__MakeProps.Pseudo.make
// ## Components
module Provider = {
  @module("@chakra-ui/react") @react.component
  external make: (
    ~children: React.element=?,
    ~portalZIndex: int=?,
    ~resetCSS: bool=?,
    // TODO
    // ~colorModeManager: ?=?,
    // ~theme: ?=?,
    unit,
  ) => React.element = "ChakraProvider"
}

// ### Layout
module AspectRatio = Chakra__AspectRatio
module Box = Chakra__Box
module Center = Chakra__Center
module Square = Chakra__Square
module Circle = Chakra__Circle
module Container = Chakra__Container
module Flex = Chakra__Flex
module Grid = Chakra__Grid
// TODO Layout
// module GridItem = Chakra__GridItem
module SimpleGrid = Chakra__SimpleGrid
module Stack = Chakra__Stack
module VStack = Chakra__VStack
module HStack = Chakra__HStack
module Wrap = Chakra__Wrap
module WrapItem = Chakra__WrapItem

// ### Forms
module Button = Chakra__Button
module ButtonGroup = Chakra__ButtonGroup
// TODO Forms
// module Checkbox = Chakra__Checkbox;
// module Editable = Chakra__Editable;
// module Form Control = Chakra__Control;
// module Icon Button = Chakra__Button;
module Input = Chakra__Input
module InputGroup = Chakra__InputGroup
module InputLeftElement = Chakra__InputLeftElement
module InputRightElement = Chakra__InputRightElement
module InputRightAddon = Chakra__InputRightAddon
module InputLeftAddon = Chakra__InputLeftAddon
// module Number Input = Chakra__Input;
// module Pin Input = Chakra__Input;
// module Radio = Chakra__Radio;
module Select = Chakra__Select
// module Slider = Chakra__Slider;
// module Switch = Chakra__Switch;
// module Textarea = Chakra__Textarea;

// ### Data Display
module Badge = Chakra__Badge
module CloseButton = Chakra__CloseButton
module Code = Chakra__Code
module Divider = Chakra__Divider
module Kbd = Chakra__Kbd
// TODO Data Display
// module List = Chakra__List;
// module Stat = Chakra__Stat;
// module Table = Chakra__Table;
// module Tag = Chakra__Tag;

// ### Feedback
// TODO Feedback
// module Alert = Chakra__Alert;
module CircularProgress = Chakra__CircularProgress
module CircularProgressLabel = Chakra__CircularProgressLabel
module Progress = Chakra__Progress
module Skeleton = Chakra__Skeleton
module SkeletonCircle = Chakra__SkeletonCircle
module SkeletonText = Chakra__SkeletonText
module Spinner = Chakra__Spinner
module Toast = Chakra__Toast

// ### Typography
// TODO Typography
module Text = Chakra__Text
module Heading = Chakra__Heading

// ### Overlay
// TODO Overlay
// module Alert Dialog = Chakra__Dialog;
// module Drawer = Chakra__Drawer;
// module Menu = Chakra__Menu;
// module Modal = Chakra__Modal;
// module Popover = Chakra__Popover;
// module Tooltip = Chakra__Tooltip;

// ### Disclosure
// TODO Disclosure
// module Accordion = Chakra__Accordion;
// module Tabs = Chakra__Tabs;
// module Visually Hidden = Chakra__Hidden;

// ### Navigation
module Breadcrumb = Chakra__Breadcrumb
module BreadcrumbItem = Chakra__BreadcrumbItem
module BreadcrumbLink = Chakra__BreadcrumbLink
module BreadcrumbSeparator = Chakra__BreadcrumbSeparator
module Link = Chakra__Link
module LinkOverlay = Chakra__LinkOverlay
module LinkBox = Chakra__LinkBox

// ### Media and Icons
module Avatar = Chakra__Avatar
module AvatarGroup = Chakra__AvatarGroup
module Icon = Chakra__Icon
module Image = Chakra__Image

// ### Others
module Portal = Chakra__Portal
include Chakra__Transitions
// ### Hooks
let useToast = Chakra__Toast.useToast
let createStandaloneToast = Chakra__Toast.createStandaloneToast
// TODO Hooks
// let useBoolean = Chakra__Hooks.useBoolean;
// let useBreakpointValue = Chakra__Hooks.useBreakpointValue;
// let useClipboard = Chakra__Hooks.useClipboard;
// let useControllable = Chakra__Hooks.useControllable;
// let useDisclosure = Chakra__Hooks.useDisclosure;
// let useMediaQuery = Chakra__Hooks.useMediaQuery;
// let useMergeRefs = Chakra__Hooks.useMergeRefs;
// let useOutsideClick = Chakra__Hooks.useOutsideClick;
// let usePrefersReducedMotion = Chakra__Hooks.usePrefersReducedMotion;
// let useTheme = Chakra__Hooks.useTheme;
// let useToken = Chakra__Hooks.useToken;
