

import * as Curry from "rescript/lib/es6/curry.js";
import * as Caml_option from "rescript/lib/es6/caml_option.js";
import * as Chakra__MakeProps from "../Interfaces/Chakra__MakeProps.js";

function makeProps(isTruncated, iconSpacing, isActive, isDisabled, isFullWidth, isLoading, loadingText, size, variant, spinnerPlacement, m, margin, mt, marginTop, mr, marginRight, me, marginEnd, mb, marginBottom, ml, marginLeft, ms, marginStart, mx, my, p, padding, pt, paddingTop, pr, paddingRight, pe, paddingEnd, pb, paddingBottom, pl, paddingLeft, ps, paddingStart, px, py, color, colorScheme, backgroundColor, bgColor, opacity, bgGradient, backgroundClip, bgClip, fontFamily, fontSize, fontWeight, letterSpacing, lineHeight, textAlign, fontStyle, textTransform, textDecoration, d, display, w, width, maxW, maxWidth, minW, minWidth, h, height, maxH, maxHeight, minH, minHeight, boxSize, verticalAlign, overflow, overflowX, overflowY, alignItems, alignContent, justifyItems, justifyContent, flexWrap, flexDirection, flexDir, flex, flexGrow, flexShrink, flexBasis, justifySelf, alignSelf, order, gridGap, gridRowGap, gridColumnGap, gridColumn, gridRow, gridArea, gridAutoFlow, gridAutoRows, gridAutoColumns, gridTemplateRows, gridTemplateColumns, gridTemplateAreas, bg, background, bgImage, backgroundImage, bgSize, backgroundSize, bgPosition, backgroundPosition, bgRepeat, backgroundRepeat, bgAttachment, backgroundAttachment, border, borderWidth, borderStyle, borderColor, borderTop, borderTopWidth, borderTopStyle, borderTopColor, borderRight, borderEnd, borderRightWidth, borderEndWidth, borderRightStyle, borderEndStyle, borderRightColor, borderEndColor, borderBottom, borderBottomWidth, borderBottomStyle, borderBottomColor, borderLeft, borderStart, borderLeftWidth, borderStartWidth, borderLeftStyle, borderStartStyle, borderLeftColor, borderStartColor, borderX, borderY, borderRadius, borderTopLeftRadius, borderTopStartRadius, borderTopRightRadius, borderTopEndRadius, borderBottomRightRadius, borderBottomEndRadius, borderBottomLeftRadius, borderBottomStartRadius, borderTopRadius, borderRightRadius, borderEndRadius, borderBottomRadius, borderLeftRadius, borderStartRadius, pos, position, zIndex, top, right, bottom, left, textShadow, boxShadow, fill, stroke) {
  var arg = Chakra__MakeProps.Bool.fromOption(isTruncated);
  var arg$1 = Chakra__MakeProps.Margin.fromOption(iconSpacing);
  var arg$2 = Chakra__MakeProps.Bool.fromOption(isActive);
  var arg$3 = Chakra__MakeProps.Bool.fromOption(isDisabled);
  var arg$4 = Chakra__MakeProps.Bool.fromOption(isFullWidth);
  var arg$5 = Chakra__MakeProps.Bool.fromOption(isLoading);
  var arg$6 = Chakra__MakeProps.$$Text.fromOption(loadingText);
  var arg$7 = Curry._1(Chakra__MakeProps.Button.Size.fromOption, size);
  var arg$8 = Curry._1(Chakra__MakeProps.Button.Variant.fromOption, variant);
  var arg$9 = Curry._1(Chakra__MakeProps.Button.SpinnerPlacement.fromOption, spinnerPlacement);
  var arg$10 = Chakra__MakeProps.Margin.fromOption(Chakra__MakeProps.withShorthand(m, margin));
  var arg$11 = Chakra__MakeProps.Margin.fromOption(Chakra__MakeProps.withShorthand(mt, marginTop));
  var arg$12 = Chakra__MakeProps.Margin.fromOption(Chakra__MakeProps.withShorthand(mr, marginRight));
  var arg$13 = Chakra__MakeProps.Margin.fromOption(Chakra__MakeProps.withShorthand(me, marginEnd));
  var arg$14 = Chakra__MakeProps.Margin.fromOption(Chakra__MakeProps.withShorthand(mb, marginBottom));
  var arg$15 = Chakra__MakeProps.Margin.fromOption(Chakra__MakeProps.withShorthand(ml, marginLeft));
  var arg$16 = Chakra__MakeProps.Margin.fromOption(Chakra__MakeProps.withShorthand(ms, marginStart));
  var arg$17 = Chakra__MakeProps.Margin.fromOption(mx);
  var arg$18 = Chakra__MakeProps.Margin.fromOption(my);
  var arg$19 = Chakra__MakeProps.Padding.fromOption(Chakra__MakeProps.withShorthand(p, padding));
  var arg$20 = Chakra__MakeProps.Padding.fromOption(Chakra__MakeProps.withShorthand(pt, paddingTop));
  var arg$21 = Chakra__MakeProps.Padding.fromOption(Chakra__MakeProps.withShorthand(pr, paddingRight));
  var arg$22 = Chakra__MakeProps.Padding.fromOption(Chakra__MakeProps.withShorthand(pe, paddingEnd));
  var arg$23 = Chakra__MakeProps.Padding.fromOption(Chakra__MakeProps.withShorthand(pb, paddingBottom));
  var arg$24 = Chakra__MakeProps.Padding.fromOption(Chakra__MakeProps.withShorthand(pl, paddingLeft));
  var arg$25 = Chakra__MakeProps.Padding.fromOption(Chakra__MakeProps.withShorthand(ps, paddingStart));
  var arg$26 = Chakra__MakeProps.Padding.fromOption(px);
  var arg$27 = Chakra__MakeProps.Padding.fromOption(py);
  var arg$28 = Chakra__MakeProps.ColorScheme.fromOption(colorScheme);
  var arg$29 = Chakra__MakeProps.Color.fromOption(color);
  var arg$30 = Chakra__MakeProps.Color.fromOption(Chakra__MakeProps.withShorthand(bgColor, backgroundColor));
  var arg$31 = Chakra__MakeProps.Opacity.fromOption(opacity);
  var arg$32 = Chakra__MakeProps.Gradient.fromOption(bgGradient);
  var arg$33 = Chakra__MakeProps.BackgroundClip.fromOption(Chakra__MakeProps.withShorthand(bgClip, backgroundClip));
  var arg$34 = Chakra__MakeProps.FontFamily.fromOption(fontFamily);
  var arg$35 = Chakra__MakeProps.FontSize.fromOption(fontSize);
  var arg$36 = Chakra__MakeProps.FontWeight.fromOption(fontWeight);
  var arg$37 = Chakra__MakeProps.LetterSpacing.fromOption(letterSpacing);
  var arg$38 = Chakra__MakeProps.LineHeight.fromOption(lineHeight);
  var arg$39 = Chakra__MakeProps.TextAlign.fromOption(textAlign);
  var arg$40 = Chakra__MakeProps.FontStyle.fromOption(fontStyle);
  var arg$41 = Chakra__MakeProps.TextTransform.fromOption(textTransform);
  var arg$42 = Chakra__MakeProps.TextDecoration.fromOption(textDecoration);
  var arg$43 = Chakra__MakeProps.Width.fromOption(Chakra__MakeProps.withShorthand(w, width));
  var arg$44 = Chakra__MakeProps.MaxWidth.fromOption(Chakra__MakeProps.withShorthand(maxW, maxWidth));
  var arg$45 = Chakra__MakeProps.Width.fromOption(Chakra__MakeProps.withShorthand(minW, minWidth));
  var arg$46 = Chakra__MakeProps.Height.fromOption(Chakra__MakeProps.withShorthand(h, height));
  var arg$47 = Chakra__MakeProps.MaxHeight.fromOption(Chakra__MakeProps.withShorthand(maxH, maxHeight));
  var arg$48 = Chakra__MakeProps.Height.fromOption(Chakra__MakeProps.withShorthand(minH, minHeight));
  var arg$49 = Chakra__MakeProps.Display.fromOption(Chakra__MakeProps.withShorthand(d, display));
  var arg$50 = Chakra__MakeProps.BoxSize.fromOption(boxSize);
  var arg$51 = Chakra__MakeProps.VerticalAlign.fromOption(verticalAlign);
  var arg$52 = Chakra__MakeProps.Overflow.fromOption(overflow);
  var arg$53 = Chakra__MakeProps.Overflow.fromOption(overflowY);
  var arg$54 = Chakra__MakeProps.Overflow.fromOption(overflowX);
  var arg$55 = Chakra__MakeProps.AlignItems.fromOption(alignItems);
  var arg$56 = Chakra__MakeProps.AlignContent.fromOption(alignContent);
  var arg$57 = Chakra__MakeProps.JustifyItems.fromOption(justifyItems);
  var arg$58 = Chakra__MakeProps.JustifyContent.fromOption(justifyContent);
  var arg$59 = Chakra__MakeProps.FlexWrap.fromOption(flexWrap);
  var arg$60 = Chakra__MakeProps.FlexDirection.fromOption(Chakra__MakeProps.withShorthand(flexDir, flexDirection));
  var arg$61 = Chakra__MakeProps.Flex.fromOption(flex);
  var arg$62 = Chakra__MakeProps.FlexGrow.fromOption(flexGrow);
  var arg$63 = Chakra__MakeProps.FlexShrink.fromOption(flexShrink);
  var arg$64 = Chakra__MakeProps.FlexBasis.fromOption(flexBasis);
  var arg$65 = Chakra__MakeProps.JustifySelf.fromOption(justifySelf);
  var arg$66 = Chakra__MakeProps.AlignSelf.fromOption(alignSelf);
  var arg$67 = Chakra__MakeProps.Order.fromOption(order);
  var arg$68 = Chakra__MakeProps.GridGap.fromOption(gridGap);
  var arg$69 = Chakra__MakeProps.GridRowGap.fromOption(gridRowGap);
  var arg$70 = Chakra__MakeProps.GridColumnGap.fromOption(gridColumnGap);
  var arg$71 = Chakra__MakeProps.GridColumn.fromOption(gridColumn);
  var arg$72 = Chakra__MakeProps.GridRow.fromOption(gridRow);
  var arg$73 = Chakra__MakeProps.GridArea.fromOption(gridArea);
  var arg$74 = Chakra__MakeProps.GridAutoFlow.fromOption(gridAutoFlow);
  var arg$75 = Chakra__MakeProps.GridAutoRows.fromOption(gridAutoRows);
  var arg$76 = Chakra__MakeProps.GridAutoRows.fromOption(gridAutoColumns);
  var arg$77 = Chakra__MakeProps.GridTemplateRows.fromOption(gridTemplateRows);
  var arg$78 = Chakra__MakeProps.GridTemplateRows.fromOption(gridTemplateColumns);
  var arg$79 = Chakra__MakeProps.GridTemplateAreas.fromOption(gridTemplateAreas);
  var arg$80 = Chakra__MakeProps.Background.fromOption(Chakra__MakeProps.withShorthand(bg, background));
  var arg$81 = Chakra__MakeProps.BackgroundImage.fromOption(Chakra__MakeProps.withShorthand(bgImage, backgroundImage));
  var arg$82 = Chakra__MakeProps.BackgroundSize.fromOption(Chakra__MakeProps.withShorthand(bgSize, backgroundSize));
  var arg$83 = Chakra__MakeProps.BackgroundPosition.fromOption(Chakra__MakeProps.withShorthand(bgPosition, backgroundPosition));
  var arg$84 = Chakra__MakeProps.BackgroundRepeat.fromOption(Chakra__MakeProps.withShorthand(bgRepeat, backgroundRepeat));
  var arg$85 = Chakra__MakeProps.BackgroundAttachment.fromOption(Chakra__MakeProps.withShorthand(bgAttachment, backgroundAttachment));
  var arg$86 = Chakra__MakeProps.Border.fromOption(border);
  var arg$87 = Chakra__MakeProps.BorderWidth.fromOption(borderWidth);
  var arg$88 = Chakra__MakeProps.BorderStyle.fromOption(borderStyle);
  var arg$89 = Chakra__MakeProps.Color.fromOption(borderColor);
  var arg$90 = Chakra__MakeProps.Border.fromOption(borderTop);
  var arg$91 = Chakra__MakeProps.BorderWidth.fromOption(borderTopWidth);
  var arg$92 = Chakra__MakeProps.BorderStyle.fromOption(borderTopStyle);
  var arg$93 = Chakra__MakeProps.Color.fromOption(borderTopColor);
  var arg$94 = Chakra__MakeProps.Border.fromOption(borderRight);
  var arg$95 = Chakra__MakeProps.Border.fromOption(borderEnd);
  var arg$96 = Chakra__MakeProps.BorderWidth.fromOption(borderRightWidth);
  var arg$97 = Chakra__MakeProps.BorderWidth.fromOption(borderEndWidth);
  var arg$98 = Chakra__MakeProps.BorderStyle.fromOption(borderRightStyle);
  var arg$99 = Chakra__MakeProps.BorderStyle.fromOption(borderEndStyle);
  var arg$100 = Chakra__MakeProps.Color.fromOption(borderRightColor);
  var arg$101 = Chakra__MakeProps.Color.fromOption(borderEndColor);
  var arg$102 = Chakra__MakeProps.Border.fromOption(borderBottom);
  var arg$103 = Chakra__MakeProps.BorderWidth.fromOption(borderBottomWidth);
  var arg$104 = Chakra__MakeProps.BorderStyle.fromOption(borderBottomStyle);
  var arg$105 = Chakra__MakeProps.Color.fromOption(borderBottomColor);
  var arg$106 = Chakra__MakeProps.Border.fromOption(borderLeft);
  var arg$107 = Chakra__MakeProps.Border.fromOption(borderStart);
  var arg$108 = Chakra__MakeProps.BorderWidth.fromOption(borderLeftWidth);
  var arg$109 = Chakra__MakeProps.BorderWidth.fromOption(borderStartWidth);
  var arg$110 = Chakra__MakeProps.BorderStyle.fromOption(borderLeftStyle);
  var arg$111 = Chakra__MakeProps.BorderStyle.fromOption(borderStartStyle);
  var arg$112 = Chakra__MakeProps.Color.fromOption(borderLeftColor);
  var arg$113 = Chakra__MakeProps.Color.fromOption(borderStartColor);
  var arg$114 = Chakra__MakeProps.Border.fromOption(borderX);
  var arg$115 = Chakra__MakeProps.Border.fromOption(borderY);
  var arg$116 = Chakra__MakeProps.BorderRadius.fromOption(borderRadius);
  var arg$117 = Chakra__MakeProps.BorderRadius.fromOption(borderTopLeftRadius);
  var arg$118 = Chakra__MakeProps.BorderRadius.fromOption(borderTopStartRadius);
  var arg$119 = Chakra__MakeProps.BorderRadius.fromOption(borderTopRightRadius);
  var arg$120 = Chakra__MakeProps.BorderRadius.fromOption(borderTopEndRadius);
  var arg$121 = Chakra__MakeProps.BorderRadius.fromOption(borderBottomRightRadius);
  var arg$122 = Chakra__MakeProps.BorderRadius.fromOption(borderBottomEndRadius);
  var arg$123 = Chakra__MakeProps.BorderRadius.fromOption(borderBottomLeftRadius);
  var arg$124 = Chakra__MakeProps.BorderRadius.fromOption(borderBottomStartRadius);
  var arg$125 = Chakra__MakeProps.BorderRadius.fromOption(borderTopRadius);
  var arg$126 = Chakra__MakeProps.BorderRadius.fromOption(borderRightRadius);
  var arg$127 = Chakra__MakeProps.BorderRadius.fromOption(borderEndRadius);
  var arg$128 = Chakra__MakeProps.BorderRadius.fromOption(borderBottomRadius);
  var arg$129 = Chakra__MakeProps.BorderRadius.fromOption(borderLeftRadius);
  var arg$130 = Chakra__MakeProps.BorderRadius.fromOption(borderStartRadius);
  var arg$131 = Chakra__MakeProps.Position.fromOption(Chakra__MakeProps.withShorthand(pos, position));
  var arg$132 = Chakra__MakeProps.ZIndex.fromOption(zIndex);
  var arg$133 = Chakra__MakeProps.Top.fromOption(top);
  var arg$134 = Chakra__MakeProps.Top.fromOption(right);
  var arg$135 = Chakra__MakeProps.Top.fromOption(bottom);
  var arg$136 = Chakra__MakeProps.Top.fromOption(left);
  var arg$137 = Chakra__MakeProps.Shadow.fromOption(textShadow);
  var arg$138 = Chakra__MakeProps.Shadow.fromOption(boxShadow);
  var arg$139 = Chakra__MakeProps.Color.fromOption(fill);
  var arg$140 = Chakra__MakeProps.Color.fromOption(stroke);
  return function (param, param$1, param$2, param$3, param$4) {
    return function (param$5, param$6, param$7, param$8, param$9, param$10, param$11, param$12, param$13, param$14, param$15, param$16, param$17, param$18, param$19, param$20, param$21, param$22, param$23, param$24, param$25, param$26, param$27, param$28, param$29, param$30, param$31, param$32, param$33, param$34, param$35, param$36, param$37, param$38, param$39, param$40, param$41, param$42, param$43, param$44, param$45, param$46, param$47, param$48, param$49, param$50, param$51, param$52, param$53, param$54, param$55, param$56, param$57, param$58, param$59, param$60, param$61, param$62, param$63, param$64, param$65, param$66, param$67, param$68, param$69, param$70, param$71, param$72, param$73, param$74, param$75, param$76, param$77, param$78, param$79, param$80, param$81, param$82, param$83, param$84) {
      var tmp = {};
      if (param !== undefined) {
        tmp.children = Caml_option.valFromOption(param);
      }
      if (param$1 !== undefined) {
        tmp.as_ = param$1;
      }
      if (arg !== undefined) {
        tmp.isTruncated = Caml_option.valFromOption(arg);
      }
      if (arg$1 !== undefined) {
        tmp.iconSpacing = Caml_option.valFromOption(arg$1);
      }
      if (arg$2 !== undefined) {
        tmp.isActive = Caml_option.valFromOption(arg$2);
      }
      if (arg$3 !== undefined) {
        tmp.isDisabled = Caml_option.valFromOption(arg$3);
      }
      if (arg$4 !== undefined) {
        tmp.isFullWidth = Caml_option.valFromOption(arg$4);
      }
      if (arg$5 !== undefined) {
        tmp.isLoading = Caml_option.valFromOption(arg$5);
      }
      if (arg$6 !== undefined) {
        tmp.loadingText = Caml_option.valFromOption(arg$6);
      }
      if (arg$7 !== undefined) {
        tmp.size = Caml_option.valFromOption(arg$7);
      }
      if (arg$8 !== undefined) {
        tmp.variant = Caml_option.valFromOption(arg$8);
      }
      if (arg$9 !== undefined) {
        tmp.spinnerPlacement = Caml_option.valFromOption(arg$9);
      }
      if (param$2 !== undefined) {
        tmp.spinner = Caml_option.valFromOption(param$2);
      }
      if (param$3 !== undefined) {
        tmp.leftIcon = Caml_option.valFromOption(param$3);
      }
      if (param$4 !== undefined) {
        tmp.rightIcon = Caml_option.valFromOption(param$4);
      }
      if (arg$10 !== undefined) {
        tmp.margin = Caml_option.valFromOption(arg$10);
      }
      if (arg$11 !== undefined) {
        tmp.marginTop = Caml_option.valFromOption(arg$11);
      }
      if (arg$12 !== undefined) {
        tmp.marginRight = Caml_option.valFromOption(arg$12);
      }
      if (arg$13 !== undefined) {
        tmp.marginEnd = Caml_option.valFromOption(arg$13);
      }
      if (arg$14 !== undefined) {
        tmp.marginBottom = Caml_option.valFromOption(arg$14);
      }
      if (arg$15 !== undefined) {
        tmp.marginLeft = Caml_option.valFromOption(arg$15);
      }
      if (arg$16 !== undefined) {
        tmp.marginStart = Caml_option.valFromOption(arg$16);
      }
      if (arg$17 !== undefined) {
        tmp.mx = Caml_option.valFromOption(arg$17);
      }
      if (arg$18 !== undefined) {
        tmp.my = Caml_option.valFromOption(arg$18);
      }
      if (arg$19 !== undefined) {
        tmp.padding = Caml_option.valFromOption(arg$19);
      }
      if (arg$20 !== undefined) {
        tmp.paddingTop = Caml_option.valFromOption(arg$20);
      }
      if (arg$21 !== undefined) {
        tmp.paddingRight = Caml_option.valFromOption(arg$21);
      }
      if (arg$22 !== undefined) {
        tmp.paddingEnd = Caml_option.valFromOption(arg$22);
      }
      if (arg$23 !== undefined) {
        tmp.paddingBottom = Caml_option.valFromOption(arg$23);
      }
      if (arg$24 !== undefined) {
        tmp.paddingLeft = Caml_option.valFromOption(arg$24);
      }
      if (arg$25 !== undefined) {
        tmp.paddingStart = Caml_option.valFromOption(arg$25);
      }
      if (arg$26 !== undefined) {
        tmp.px = Caml_option.valFromOption(arg$26);
      }
      if (arg$27 !== undefined) {
        tmp.py = Caml_option.valFromOption(arg$27);
      }
      if (arg$28 !== undefined) {
        tmp.colorScheme = Caml_option.valFromOption(arg$28);
      }
      if (arg$29 !== undefined) {
        tmp.color = Caml_option.valFromOption(arg$29);
      }
      if (arg$30 !== undefined) {
        tmp.backgroundColor = Caml_option.valFromOption(arg$30);
      }
      if (arg$31 !== undefined) {
        tmp.opacity = Caml_option.valFromOption(arg$31);
      }
      if (arg$32 !== undefined) {
        tmp.bgGradient = Caml_option.valFromOption(arg$32);
      }
      if (arg$33 !== undefined) {
        tmp.backgroundClip = Caml_option.valFromOption(arg$33);
      }
      if (arg$34 !== undefined) {
        tmp.fontFamily = Caml_option.valFromOption(arg$34);
      }
      if (arg$35 !== undefined) {
        tmp.fontSize = Caml_option.valFromOption(arg$35);
      }
      if (arg$36 !== undefined) {
        tmp.fontWeight = Caml_option.valFromOption(arg$36);
      }
      if (arg$37 !== undefined) {
        tmp.letterSpacing = Caml_option.valFromOption(arg$37);
      }
      if (arg$38 !== undefined) {
        tmp.lineHeight = Caml_option.valFromOption(arg$38);
      }
      if (arg$39 !== undefined) {
        tmp.textAlign = Caml_option.valFromOption(arg$39);
      }
      if (arg$40 !== undefined) {
        tmp.fontStyle = Caml_option.valFromOption(arg$40);
      }
      if (arg$41 !== undefined) {
        tmp.textTransform = Caml_option.valFromOption(arg$41);
      }
      if (arg$42 !== undefined) {
        tmp.textDecoration = Caml_option.valFromOption(arg$42);
      }
      if (arg$43 !== undefined) {
        tmp.width = Caml_option.valFromOption(arg$43);
      }
      if (arg$44 !== undefined) {
        tmp.maxWidth = Caml_option.valFromOption(arg$44);
      }
      if (arg$45 !== undefined) {
        tmp.minWidth = Caml_option.valFromOption(arg$45);
      }
      if (arg$46 !== undefined) {
        tmp.height = Caml_option.valFromOption(arg$46);
      }
      if (arg$47 !== undefined) {
        tmp.maxHeight = Caml_option.valFromOption(arg$47);
      }
      if (arg$48 !== undefined) {
        tmp.minHeight = Caml_option.valFromOption(arg$48);
      }
      if (arg$49 !== undefined) {
        tmp.display = Caml_option.valFromOption(arg$49);
      }
      if (arg$50 !== undefined) {
        tmp.boxSize = Caml_option.valFromOption(arg$50);
      }
      if (arg$51 !== undefined) {
        tmp.verticalAlign = Caml_option.valFromOption(arg$51);
      }
      if (arg$52 !== undefined) {
        tmp.overflow = Caml_option.valFromOption(arg$52);
      }
      if (arg$53 !== undefined) {
        tmp.overflowY = Caml_option.valFromOption(arg$53);
      }
      if (arg$54 !== undefined) {
        tmp.overflowX = Caml_option.valFromOption(arg$54);
      }
      if (arg$55 !== undefined) {
        tmp.alignItems = Caml_option.valFromOption(arg$55);
      }
      if (arg$56 !== undefined) {
        tmp.alignContent = Caml_option.valFromOption(arg$56);
      }
      if (arg$57 !== undefined) {
        tmp.justifyItems = Caml_option.valFromOption(arg$57);
      }
      if (arg$58 !== undefined) {
        tmp.justifyContent = Caml_option.valFromOption(arg$58);
      }
      if (arg$59 !== undefined) {
        tmp.flexWrap = Caml_option.valFromOption(arg$59);
      }
      if (arg$60 !== undefined) {
        tmp.flexDirection = Caml_option.valFromOption(arg$60);
      }
      if (arg$61 !== undefined) {
        tmp.flex = Caml_option.valFromOption(arg$61);
      }
      if (arg$62 !== undefined) {
        tmp.flexGrow = Caml_option.valFromOption(arg$62);
      }
      if (arg$63 !== undefined) {
        tmp.flexShrink = Caml_option.valFromOption(arg$63);
      }
      if (arg$64 !== undefined) {
        tmp.flexBasis = Caml_option.valFromOption(arg$64);
      }
      if (arg$65 !== undefined) {
        tmp.justifySelf = Caml_option.valFromOption(arg$65);
      }
      if (arg$66 !== undefined) {
        tmp.alignSelf = Caml_option.valFromOption(arg$66);
      }
      if (arg$67 !== undefined) {
        tmp.order = Caml_option.valFromOption(arg$67);
      }
      if (arg$68 !== undefined) {
        tmp.gridGap = Caml_option.valFromOption(arg$68);
      }
      if (arg$69 !== undefined) {
        tmp.gridRowGap = Caml_option.valFromOption(arg$69);
      }
      if (arg$70 !== undefined) {
        tmp.gridColumnGap = Caml_option.valFromOption(arg$70);
      }
      if (arg$71 !== undefined) {
        tmp.gridColumn = Caml_option.valFromOption(arg$71);
      }
      if (arg$72 !== undefined) {
        tmp.gridRow = Caml_option.valFromOption(arg$72);
      }
      if (arg$73 !== undefined) {
        tmp.gridArea = Caml_option.valFromOption(arg$73);
      }
      if (arg$74 !== undefined) {
        tmp.gridAutoFlow = Caml_option.valFromOption(arg$74);
      }
      if (arg$75 !== undefined) {
        tmp.gridAutoRows = Caml_option.valFromOption(arg$75);
      }
      if (arg$76 !== undefined) {
        tmp.gridAutoColumns = Caml_option.valFromOption(arg$76);
      }
      if (arg$77 !== undefined) {
        tmp.gridTemplateRows = Caml_option.valFromOption(arg$77);
      }
      if (arg$78 !== undefined) {
        tmp.gridTemplateColumns = Caml_option.valFromOption(arg$78);
      }
      if (arg$79 !== undefined) {
        tmp.gridTemplateAreas = Caml_option.valFromOption(arg$79);
      }
      if (arg$80 !== undefined) {
        tmp.background = Caml_option.valFromOption(arg$80);
      }
      if (arg$81 !== undefined) {
        tmp.backgroundImage = Caml_option.valFromOption(arg$81);
      }
      if (arg$82 !== undefined) {
        tmp.backgroundSize = Caml_option.valFromOption(arg$82);
      }
      if (arg$83 !== undefined) {
        tmp.backgroundPosition = Caml_option.valFromOption(arg$83);
      }
      if (arg$84 !== undefined) {
        tmp.backgroundRepeat = Caml_option.valFromOption(arg$84);
      }
      if (arg$85 !== undefined) {
        tmp.backgroundAttachment = Caml_option.valFromOption(arg$85);
      }
      if (arg$86 !== undefined) {
        tmp.border = Caml_option.valFromOption(arg$86);
      }
      if (arg$87 !== undefined) {
        tmp.borderWidth = Caml_option.valFromOption(arg$87);
      }
      if (arg$88 !== undefined) {
        tmp.borderStyle = Caml_option.valFromOption(arg$88);
      }
      if (arg$89 !== undefined) {
        tmp.borderColor = Caml_option.valFromOption(arg$89);
      }
      if (arg$90 !== undefined) {
        tmp.borderTop = Caml_option.valFromOption(arg$90);
      }
      if (arg$91 !== undefined) {
        tmp.borderTopWidth = Caml_option.valFromOption(arg$91);
      }
      if (arg$92 !== undefined) {
        tmp.borderTopStyle = Caml_option.valFromOption(arg$92);
      }
      if (arg$93 !== undefined) {
        tmp.borderTopColor = Caml_option.valFromOption(arg$93);
      }
      if (arg$94 !== undefined) {
        tmp.borderRight = Caml_option.valFromOption(arg$94);
      }
      if (arg$95 !== undefined) {
        tmp.borderEnd = Caml_option.valFromOption(arg$95);
      }
      if (arg$96 !== undefined) {
        tmp.borderRightWidth = Caml_option.valFromOption(arg$96);
      }
      if (arg$97 !== undefined) {
        tmp.borderEndWidth = Caml_option.valFromOption(arg$97);
      }
      if (arg$98 !== undefined) {
        tmp.borderRightStyle = Caml_option.valFromOption(arg$98);
      }
      if (arg$99 !== undefined) {
        tmp.borderEndStyle = Caml_option.valFromOption(arg$99);
      }
      if (arg$100 !== undefined) {
        tmp.borderRightColor = Caml_option.valFromOption(arg$100);
      }
      if (arg$101 !== undefined) {
        tmp.borderEndColor = Caml_option.valFromOption(arg$101);
      }
      if (arg$102 !== undefined) {
        tmp.borderBottom = Caml_option.valFromOption(arg$102);
      }
      if (arg$103 !== undefined) {
        tmp.borderBottomWidth = Caml_option.valFromOption(arg$103);
      }
      if (arg$104 !== undefined) {
        tmp.borderBottomStyle = Caml_option.valFromOption(arg$104);
      }
      if (arg$105 !== undefined) {
        tmp.borderBottomColor = Caml_option.valFromOption(arg$105);
      }
      if (arg$106 !== undefined) {
        tmp.borderLeft = Caml_option.valFromOption(arg$106);
      }
      if (arg$107 !== undefined) {
        tmp.borderStart = Caml_option.valFromOption(arg$107);
      }
      if (arg$108 !== undefined) {
        tmp.borderLeftWidth = Caml_option.valFromOption(arg$108);
      }
      if (arg$109 !== undefined) {
        tmp.borderStartWidth = Caml_option.valFromOption(arg$109);
      }
      if (arg$110 !== undefined) {
        tmp.borderLeftStyle = Caml_option.valFromOption(arg$110);
      }
      if (arg$111 !== undefined) {
        tmp.borderStartStyle = Caml_option.valFromOption(arg$111);
      }
      if (arg$112 !== undefined) {
        tmp.borderLeftColor = Caml_option.valFromOption(arg$112);
      }
      if (arg$113 !== undefined) {
        tmp.borderStartColor = Caml_option.valFromOption(arg$113);
      }
      if (arg$114 !== undefined) {
        tmp.borderX = Caml_option.valFromOption(arg$114);
      }
      if (arg$115 !== undefined) {
        tmp.borderY = Caml_option.valFromOption(arg$115);
      }
      if (arg$116 !== undefined) {
        tmp.borderRadius = Caml_option.valFromOption(arg$116);
      }
      if (arg$117 !== undefined) {
        tmp.borderTopLeftRadius = Caml_option.valFromOption(arg$117);
      }
      if (arg$118 !== undefined) {
        tmp.borderTopStartRadius = Caml_option.valFromOption(arg$118);
      }
      if (arg$119 !== undefined) {
        tmp.borderTopRightRadius = Caml_option.valFromOption(arg$119);
      }
      if (arg$120 !== undefined) {
        tmp.borderTopEndRadius = Caml_option.valFromOption(arg$120);
      }
      if (arg$121 !== undefined) {
        tmp.borderBottomRightRadius = Caml_option.valFromOption(arg$121);
      }
      if (arg$122 !== undefined) {
        tmp.borderBottomEndRadius = Caml_option.valFromOption(arg$122);
      }
      if (arg$123 !== undefined) {
        tmp.borderBottomLeftRadius = Caml_option.valFromOption(arg$123);
      }
      if (arg$124 !== undefined) {
        tmp.borderBottomStartRadius = Caml_option.valFromOption(arg$124);
      }
      if (arg$125 !== undefined) {
        tmp.borderTopRadius = Caml_option.valFromOption(arg$125);
      }
      if (arg$126 !== undefined) {
        tmp.borderRightRadius = Caml_option.valFromOption(arg$126);
      }
      if (arg$127 !== undefined) {
        tmp.borderEndRadius = Caml_option.valFromOption(arg$127);
      }
      if (arg$128 !== undefined) {
        tmp.borderBottomRadius = Caml_option.valFromOption(arg$128);
      }
      if (arg$129 !== undefined) {
        tmp.borderLeftRadius = Caml_option.valFromOption(arg$129);
      }
      if (arg$130 !== undefined) {
        tmp.borderStartRadius = Caml_option.valFromOption(arg$130);
      }
      if (arg$131 !== undefined) {
        tmp.position = Caml_option.valFromOption(arg$131);
      }
      if (arg$132 !== undefined) {
        tmp.zIndex = Caml_option.valFromOption(arg$132);
      }
      if (arg$133 !== undefined) {
        tmp.top = Caml_option.valFromOption(arg$133);
      }
      if (arg$134 !== undefined) {
        tmp.right = Caml_option.valFromOption(arg$134);
      }
      if (arg$135 !== undefined) {
        tmp.bottom = Caml_option.valFromOption(arg$135);
      }
      if (arg$136 !== undefined) {
        tmp.left = Caml_option.valFromOption(arg$136);
      }
      if (arg$137 !== undefined) {
        tmp.textShadow = Caml_option.valFromOption(arg$137);
      }
      if (arg$138 !== undefined) {
        tmp.boxShadow = Caml_option.valFromOption(arg$138);
      }
      if (arg$139 !== undefined) {
        tmp.fill = Caml_option.valFromOption(arg$139);
      }
      if (arg$140 !== undefined) {
        tmp.stroke = Caml_option.valFromOption(arg$140);
      }
      if (param$5 !== undefined) {
        tmp.onCopy = Caml_option.valFromOption(param$5);
      }
      if (param$6 !== undefined) {
        tmp.onCut = Caml_option.valFromOption(param$6);
      }
      if (param$7 !== undefined) {
        tmp.onPaste = Caml_option.valFromOption(param$7);
      }
      if (param$8 !== undefined) {
        tmp.onCompositionEnd = Caml_option.valFromOption(param$8);
      }
      if (param$9 !== undefined) {
        tmp.onCompositionStart = Caml_option.valFromOption(param$9);
      }
      if (param$10 !== undefined) {
        tmp.onCompositionUpdate = Caml_option.valFromOption(param$10);
      }
      if (param$11 !== undefined) {
        tmp.onKeyDown = Caml_option.valFromOption(param$11);
      }
      if (param$12 !== undefined) {
        tmp.onKeyPress = Caml_option.valFromOption(param$12);
      }
      if (param$13 !== undefined) {
        tmp.onKeyUp = Caml_option.valFromOption(param$13);
      }
      if (param$14 !== undefined) {
        tmp.onFocus = Caml_option.valFromOption(param$14);
      }
      if (param$15 !== undefined) {
        tmp.onBlur = Caml_option.valFromOption(param$15);
      }
      if (param$16 !== undefined) {
        tmp.onChange = Caml_option.valFromOption(param$16);
      }
      if (param$17 !== undefined) {
        tmp.onInput = Caml_option.valFromOption(param$17);
      }
      if (param$18 !== undefined) {
        tmp.onInvalid = Caml_option.valFromOption(param$18);
      }
      if (param$19 !== undefined) {
        tmp.onReset = Caml_option.valFromOption(param$19);
      }
      if (param$20 !== undefined) {
        tmp.onSubmit = Caml_option.valFromOption(param$20);
      }
      if (param$21 !== undefined) {
        tmp.onClick = Caml_option.valFromOption(param$21);
      }
      if (param$22 !== undefined) {
        tmp.onContextMenu = Caml_option.valFromOption(param$22);
      }
      if (param$23 !== undefined) {
        tmp.onDoubleClick = Caml_option.valFromOption(param$23);
      }
      if (param$24 !== undefined) {
        tmp.onDrag = Caml_option.valFromOption(param$24);
      }
      if (param$25 !== undefined) {
        tmp.onDragEnd = Caml_option.valFromOption(param$25);
      }
      if (param$26 !== undefined) {
        tmp.onDragEnter = Caml_option.valFromOption(param$26);
      }
      if (param$27 !== undefined) {
        tmp.onDragExit = Caml_option.valFromOption(param$27);
      }
      if (param$28 !== undefined) {
        tmp.onDragLeave = Caml_option.valFromOption(param$28);
      }
      if (param$29 !== undefined) {
        tmp.onDragOver = Caml_option.valFromOption(param$29);
      }
      if (param$30 !== undefined) {
        tmp.onDragStart = Caml_option.valFromOption(param$30);
      }
      if (param$31 !== undefined) {
        tmp.onDrop = Caml_option.valFromOption(param$31);
      }
      if (param$32 !== undefined) {
        tmp.onMouseDown = Caml_option.valFromOption(param$32);
      }
      if (param$33 !== undefined) {
        tmp.onMouseEnter = Caml_option.valFromOption(param$33);
      }
      if (param$34 !== undefined) {
        tmp.onMouseLeave = Caml_option.valFromOption(param$34);
      }
      if (param$35 !== undefined) {
        tmp.onMouseMove = Caml_option.valFromOption(param$35);
      }
      if (param$36 !== undefined) {
        tmp.onMouseOut = Caml_option.valFromOption(param$36);
      }
      if (param$37 !== undefined) {
        tmp.onMouseOver = Caml_option.valFromOption(param$37);
      }
      if (param$38 !== undefined) {
        tmp.onMouseUp = Caml_option.valFromOption(param$38);
      }
      if (param$39 !== undefined) {
        tmp.onPointerDown = Caml_option.valFromOption(param$39);
      }
      if (param$40 !== undefined) {
        tmp.onPointerMove = Caml_option.valFromOption(param$40);
      }
      if (param$41 !== undefined) {
        tmp.onPointerUp = Caml_option.valFromOption(param$41);
      }
      if (param$42 !== undefined) {
        tmp.onPointerCancel = Caml_option.valFromOption(param$42);
      }
      if (param$43 !== undefined) {
        tmp.onGotPointerCapture = Caml_option.valFromOption(param$43);
      }
      if (param$44 !== undefined) {
        tmp.onLostPointerCapture = Caml_option.valFromOption(param$44);
      }
      if (param$45 !== undefined) {
        tmp.onPointerEnter = Caml_option.valFromOption(param$45);
      }
      if (param$46 !== undefined) {
        tmp.onPointerLeave = Caml_option.valFromOption(param$46);
      }
      if (param$47 !== undefined) {
        tmp.onPointerOver = Caml_option.valFromOption(param$47);
      }
      if (param$48 !== undefined) {
        tmp.onPointerOut = Caml_option.valFromOption(param$48);
      }
      if (param$49 !== undefined) {
        tmp.onSelect = Caml_option.valFromOption(param$49);
      }
      if (param$50 !== undefined) {
        tmp.onTouchCancel = Caml_option.valFromOption(param$50);
      }
      if (param$51 !== undefined) {
        tmp.onTouchEnd = Caml_option.valFromOption(param$51);
      }
      if (param$52 !== undefined) {
        tmp.onTouchMove = Caml_option.valFromOption(param$52);
      }
      if (param$53 !== undefined) {
        tmp.onTouchStart = Caml_option.valFromOption(param$53);
      }
      if (param$54 !== undefined) {
        tmp.onScroll = Caml_option.valFromOption(param$54);
      }
      if (param$55 !== undefined) {
        tmp.onWheel = Caml_option.valFromOption(param$55);
      }
      if (param$56 !== undefined) {
        tmp.onAbort = Caml_option.valFromOption(param$56);
      }
      if (param$57 !== undefined) {
        tmp.onCanPlay = Caml_option.valFromOption(param$57);
      }
      if (param$58 !== undefined) {
        tmp.onCanPlayThrough = Caml_option.valFromOption(param$58);
      }
      if (param$59 !== undefined) {
        tmp.onDurationChange = Caml_option.valFromOption(param$59);
      }
      if (param$60 !== undefined) {
        tmp.onEmptied = Caml_option.valFromOption(param$60);
      }
      if (param$61 !== undefined) {
        tmp.onEncrypted = Caml_option.valFromOption(param$61);
      }
      if (param$62 !== undefined) {
        tmp.onEnded = Caml_option.valFromOption(param$62);
      }
      if (param$63 !== undefined) {
        tmp.onLoadedData = Caml_option.valFromOption(param$63);
      }
      if (param$64 !== undefined) {
        tmp.onLoadedMetadata = Caml_option.valFromOption(param$64);
      }
      if (param$65 !== undefined) {
        tmp.onLoadStart = Caml_option.valFromOption(param$65);
      }
      if (param$66 !== undefined) {
        tmp.onPause = Caml_option.valFromOption(param$66);
      }
      if (param$67 !== undefined) {
        tmp.onPlay = Caml_option.valFromOption(param$67);
      }
      if (param$68 !== undefined) {
        tmp.onPlaying = Caml_option.valFromOption(param$68);
      }
      if (param$69 !== undefined) {
        tmp.onProgress = Caml_option.valFromOption(param$69);
      }
      if (param$70 !== undefined) {
        tmp.onRateChange = Caml_option.valFromOption(param$70);
      }
      if (param$71 !== undefined) {
        tmp.onSeeked = Caml_option.valFromOption(param$71);
      }
      if (param$72 !== undefined) {
        tmp.onSeeking = Caml_option.valFromOption(param$72);
      }
      if (param$73 !== undefined) {
        tmp.onStalled = Caml_option.valFromOption(param$73);
      }
      if (param$74 !== undefined) {
        tmp.onSuspend = Caml_option.valFromOption(param$74);
      }
      if (param$75 !== undefined) {
        tmp.onTimeUpdate = Caml_option.valFromOption(param$75);
      }
      if (param$76 !== undefined) {
        tmp.onVolumeChange = Caml_option.valFromOption(param$76);
      }
      if (param$77 !== undefined) {
        tmp.onWaiting = Caml_option.valFromOption(param$77);
      }
      if (param$78 !== undefined) {
        tmp.onLoad = Caml_option.valFromOption(param$78);
      }
      if (param$79 !== undefined) {
        tmp.onError = Caml_option.valFromOption(param$79);
      }
      if (param$80 !== undefined) {
        tmp.onAnimationStart = Caml_option.valFromOption(param$80);
      }
      if (param$81 !== undefined) {
        tmp.onAnimationEnd = Caml_option.valFromOption(param$81);
      }
      if (param$82 !== undefined) {
        tmp.onAnimationIteration = Caml_option.valFromOption(param$82);
      }
      if (param$83 !== undefined) {
        tmp.key = param$83;
      }
      return tmp;
    };
  };
}

export {
  makeProps ,
  
}
/* No side effect */
